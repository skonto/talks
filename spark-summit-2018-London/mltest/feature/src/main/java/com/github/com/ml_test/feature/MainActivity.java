package com.github.com.ml_test.feature;

import android.content.res.AssetManager;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.text.method.ScrollingMovementMethod;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {

    // Used to load the 'native-lib' library on application startup.
    static {
        System.loadLibrary("native-lib");
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        AssetManager manager = this.getAssets();
        String display = "N/A";
        IrisClassifier classifier = new IrisClassifier(this);
        float x [] = {5.5f, 4.2f, 1.4f, 0.2f};
        float[][] labelProbArray = new float[1][3];

        classifier.run(x,labelProbArray);

        StringBuilder sb = new StringBuilder();
        sb.append( "prob1:" +
                Float.toString(labelProbArray[0][0])
                + " prob2:"
                + Float.toString(labelProbArray[0][1])
                + " prob3:" + Float.toString(labelProbArray[0][2]) + "\n");

        String result = sb.toString();
        try {
            display = RForestTest.runModel(manager.open("iris.arff"));

        } catch(java.io.IOException e) {
            e.printStackTrace();
        }
        // Example of a call to a native method
        TextView tv = (TextView) findViewById(R.id.sample_text);
        tv.setMovementMethod(new ScrollingMovementMethod());
        tv.setText(String.format("%s%s", result, display));
    }

    /**
     * A native method that is implemented by the 'native-lib' native library,
     * which is packaged with this application.
     */
    public native String stringFromJNI();
}
