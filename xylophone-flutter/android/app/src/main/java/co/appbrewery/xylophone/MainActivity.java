package co.appbrewery.xylophone;

import io.flutter.app.FlutterActivity;
import io.flutter.plugin.common.MethodCall;
import androidx.annotation.NonNull;
import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugins.GeneratedPluginRegistrant;

 public class MainActivity extends FlutterActivity {
     private static final String CHANNEL = "samples.flutter.dev/battery";

    @override
    public void onCreate(Bundle savedInstanceState) {

        super.onCreate(savedInstanceState);
        GeneratedPluginRegistrant.registerWith(this);

        new MethodChannel(getFlutterView(), CHANNEL).setMethodCallHandler(
                new MethodCallHandler() {
                    @override
                    public void onMethodCall(MethodCall call, Result result) {
                        // Your existing code
                    }
                });
    }

    @override
    public void configureFlutterEngine(@NonNull FlutterEngine flutterEngine) {
        GeneratedPluginRegistrant.registerWith(flutterEngine);
        new MethodChannel(flutterEngine.getDartExecutor().getBinaryMessenger(), CHANNEL)
                .setMethodCallHandler(
                    (call, result) -> {
                        // Your existing code
                }
        );
    }
 }

// import android.os.Bundle;
// import io.flutter.app.FlutterActivity;
// import io.flutter.embedding.android.FlutterActivity;
// import io.flutter.plugins.GeneratedPluginRegistrant;

// public class MainActivity extends FlutterActivity {
//   @Override
//   protected void onCreate(Bundle savedInstanceState) {
//     super.onCreate(savedInstanceState);
//     GeneratedPluginRegistrant.registerWith(this);
//   }
// }
