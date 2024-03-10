package help.mmc.mmc_sbp;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;

import androidx.annotation.NonNull;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;

/**
 * MmcSbpPlugin
 */
public class MmcSbpPlugin implements FlutterPlugin, MethodCallHandler {
    private MethodChannel channel;
    private Context context;

    @Override
    public void onAttachedToEngine(@NonNull FlutterPluginBinding flutterPluginBinding) {
        context = flutterPluginBinding.getApplicationContext();
        channel = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "mmc_sbp");
        channel.setMethodCallHandler(this);
    }

    @Override
    public void onMethodCall(@NonNull MethodCall call, @NonNull Result result) {
        switch (call.method) {
            case "openBank":
                openBank(call, result);
                break;
            case "getInstalledBanks":
                result.success(getInstalledBanks(call.arguments()));
                break;
            default:
                result.notImplemented();
        }
    }

    @Override
    public void onDetachedFromEngine(@NonNull FlutterPluginBinding binding) {
        channel.setMethodCallHandler(null);
    }

    private ArrayList<String> getInstalledBanks(ArrayList<String> data) {
        ArrayList<String> installedApps = new ArrayList<>();
        if (data != null) {
            PackageManager packageManager = context.getPackageManager();
            List<PackageInfo> packages = packageManager.getInstalledPackages(0);
            for (PackageInfo packageInfo : packages) {
                String packageName = packageInfo.packageName;
                if (data.contains(packageName)) {
                    installedApps.add(packageName);
                }
            }
        }
        return installedApps;
    }

    private void openBank(@NonNull MethodCall call, Result result) {
        String packageName = call.argument("package_name");
        String url = call.argument("url");
        if (url == null) {
            result.error("InvalidArguments", "Invalid arguments provided", "sbp_plugin");
            return;
        }
        try {
            Intent launchIntent = new Intent(Intent.ACTION_VIEW);
            launchIntent.setData(Uri.parse(url));
            launchIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            if (packageName != null) {
                launchIntent.setPackage(packageName);
            }
            context.startActivity(launchIntent);
            result.success(true);
        } catch (Exception e) {
            result.error(Objects.requireNonNull(e.getLocalizedMessage()), e.getMessage(), "sbp_plugin");
        }
    }
}
