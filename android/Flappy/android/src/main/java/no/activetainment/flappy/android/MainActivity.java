package no.activetainment.flappy.android;

import android.app.Activity;
import android.os.Bundle;
import android.webkit.WebView;


public class MainActivity extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        final WebView webView = (WebView) findViewById(R.id.flappyWebView);

        webView.getSettings().setJavaScriptEnabled(true);
        webView.loadUrl("http://cadence.singles/flappystuff");
    }
}
