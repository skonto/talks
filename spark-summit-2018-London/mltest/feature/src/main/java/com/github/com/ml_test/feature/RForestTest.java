package com.github.com.ml_test.feature;

import android.content.res.AssetManager;

import java.io.FileInputStream;
import java.io.InputStream;

import smile.classification.RandomForest;
import smile.data.AttributeDataset;
import smile.data.parser.ArffParser;

public class RForestTest {
    public static String runModel(InputStream path) {
        ArffParser arffParser = new ArffParser();
        arffParser.setResponseIndex(4);
        String ret = "no value";

        StringBuilder sb = new StringBuilder();

        try {
            AttributeDataset data =
                    arffParser.parse(path);

            double[][] x = data.toArray(new double[data.size()][]);
            int[] y = data.toArray(new int[data.size()]);

            long start = System.nanoTime();
            RandomForest rf = new RandomForest(x,y,500);
            long finish = System.nanoTime();
            long timeElapsed = finish - start;

            sb.append("Time for creating the RF model:" + timeElapsed/1000000.0 + "ms\n");
            sb.append("Model error = " + rf.error() + "\n");
            for (int i = 0; i < x.length -1; i++) {

                start = System.nanoTime();
                int classNum = rf.predict(x[i]);
                finish = System.nanoTime();
                timeElapsed = finish - start;
                sb.append("prediction class: " + classNum + " took " + timeElapsed/1000000.0 + "ms\n");
            }
            ret = sb.toString();

        } catch (java.text.ParseException | java.io.IOException e){
            e.printStackTrace();
        }
        return ret;
    }
}
