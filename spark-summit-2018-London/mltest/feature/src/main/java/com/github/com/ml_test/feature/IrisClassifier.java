package com.github.com.ml_test.feature;

import android.app.Activity;
import android.content.res.AssetFileDescriptor;
import android.util.Log;

import org.tensorflow.lite.Interpreter;

import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.DoubleBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;

public class IrisClassifier {
    private Interpreter tflite;
    private Activity activity;

    public IrisClassifier(Activity activity) {
        this.activity = activity;
    }

    public void run(float x[], float[][] labelProbArray){
        try {
            tflite = new Interpreter(loadModelFile());

            ByteBuffer byteBuffer = ByteBuffer.allocateDirect(16);
            byteBuffer.order(ByteOrder.nativeOrder());
            for(int i=0; i < x.length; ++i){
                byteBuffer.putFloat(x[i]);
            }

            tflite.run(x, labelProbArray);
        } catch (Exception e){
            Log.e("mltest", "exception", e);
        }
    }

    private MappedByteBuffer loadModelFile() throws IOException {
        AssetFileDescriptor fileDescriptor = activity.getAssets().openFd("iris.tflite");
        FileInputStream inputStream = new FileInputStream(fileDescriptor.getFileDescriptor());
        FileChannel fileChannel = inputStream.getChannel();
        long startOffset = fileDescriptor.getStartOffset();
        long declaredLength = fileDescriptor.getDeclaredLength();
        return fileChannel.map(FileChannel.MapMode.READ_ONLY, startOffset, declaredLength);
    }
}
