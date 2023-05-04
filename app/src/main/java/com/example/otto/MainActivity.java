package com.example.otto;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.widget.Button;
import android.widget.Toolbar;

public class MainActivity extends AppCompatActivity {

    Button buttonmenu;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        buttonmenu = findViewById(R.id.buttonmenu);
        buttonmenu.setOnClickListener(v -> {
            Intent intent = new Intent(MainActivity.this, MenuActivity.class);
            startActivity(intent);
        });
    }
}