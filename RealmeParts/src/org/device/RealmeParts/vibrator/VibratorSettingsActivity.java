package org.device.RealmeParts.vibrator;

import com.android.settingslib.collapsingtoolbar.CollapsingToolbarBaseActivity;
import androidx.fragment.app.Fragment;
import android.os.Bundle;
import android.view.MenuItem;

public class VibratorSettingsActivity extends CollapsingToolbarBaseActivity {

    private VibratorSettings mVibrateSettingsFragment;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        Fragment fragment = getSupportFragmentManager().findFragmentById(com.android.settingslib.collapsingtoolbar.R.id.content_frame);
        if (fragment == null) {
            mVibrateSettingsFragment = new VibratorSettings();
            getSupportFragmentManager().beginTransaction()
                    .add(com.android.settingslib.collapsingtoolbar.R.id.content_frame, mVibrateSettingsFragment)
                    .commit();
        } else {
            mVibrateSettingsFragment = (VibratorSettings) fragment;
        }
    }

}
