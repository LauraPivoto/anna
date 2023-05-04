package com.example.otto;

import android.content.Intent;
import android.os.Bundle;
import android.widget.Button;

import androidx.appcompat.app.AppCompatActivity;

public class AjudaActivity extends AppCompatActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_ajuda);

        Button button_jogar;

        button_jogar = findViewById(R.id.bttnjogarajuda);
        button_jogar.setOnClickListener(v -> {
            Intent intent = new Intent(AjudaActivity.this, JogarActivity.class);
            startActivity(intent);
        });
    }
}
