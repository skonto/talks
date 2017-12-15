#!/usr/bin/env bash
set -e

SCRIPT=`basename ${BASH_SOURCE[0]}`
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd -P )"
DOCKER_TAG="1.0.0"
DOCKER_REPO="rsvp_producer"
DOCKER_USERNAME="skonto"

function error {
  echo "==>Error:$1"
  usage
  exit 1
}

function usage {
  cat<< EOF
  Builds the image for the data input part of this app.
  Usage: $SCRIPT  [OPTIONS]

  eg: ./$SCRIPT --docker-username lightbend --docker-password secret

  Options:
  --build                     Docker image will be built.
  --no-cache                  Build from scratch no cache is used for docker.
  --docker-password           Password for the account on dockerhub.
  --docker-repo               The name of the image. Default: dcos-flink-2-11-test
  --docker-tag                Tag for the image. Default: latest. Default: 1.2.0-1.4
  --docker-username           Username on dockerhub. Part of the repo format. Default: lightbend
  --push                      Image will be pushed.
                              Will use the same repo as the one used for the build.
  -h | --help                 This help info.
EOF
}

function build_image {
  docker build $CACHE_FLAG -t $DOCKER_USERNAME/$DOCKER_REPO:$DOCKER_TAG -f Dockerfile .
}

function push_image {
	docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD
	docker push $DOCKER_USERNAME/$DOCKER_REPO:$DOCKER_TAG
}

function parse_arguments {
  while :; do
    case "$1" in
      --docker-username)
      if [ -n "$2" ]; then
        DOCKER_USERNAME=$2
        shift 2
        continue
      else
        error "--docker-username requires a non-empty option argument"
      fi
      ;;
      --docker-tag)
      if [ -n "$2" ]; then
        DOCKER_TAG=$2
        shift 2
        continue
      else
        error "--docker-tag requires a non-empty option argument."
      fi
      ;;
      --docker-repo)
      if [ -n "$2" ]; then
        DOCKER_REPO=$2
        shift 2
        continue
      else
        error "--docker-repo requires a non-empty option argument."
      fi
      ;;
      --docker-password)
      if [ -n "$2" ]; then
        DOCKER_PASSWORD=$2
        shift 2
        continue
      else
        error "--docker-password requires a non-empty option argument."
      fi
      ;;
      --build)
        BUILD="TRUE"
        shift 1
        continue
      ;;
      --push)
        PUSH="TRUE"
        shift 1
        continue
      ;;
      --no-cache)
        CACHE_FLAG="--no-cache=true"
        shift 1
        continue
      ;;
      -h|--help)   # Call a "usage" function to display a synopsis, then exit.
      usage
      exit
      ;;
      --)          # End of all options.
      shift
      break
      ;;
      '')          # End of all options.
      break
      ;;
      *)
      error "The option is not valid...: $1"
      ;;
    esac
    shift
  done

  if [ -z "$DOCKER_USERNAME" ]; then
    error "A docker account must be provided..."
  fi

  if [ -z "$BUILD" ] && [ -z "$PUSH" ]; then
    BUILD="TRUE"
    PUSH="TRUE"
  fi

  if [ -z "$DOCKER_PASSWORD" ] && [ -n "$PUSH" ]; then
    error "A docker password must be provided..."
  fi
}

function main {
  parse_arguments "$@"

  if [ -n "$BUILD" ]; then
    build_image
  fi

  if [ -n "$PUSH" ]; then
    push_image
  fi
}

main "$@"
exit 0

