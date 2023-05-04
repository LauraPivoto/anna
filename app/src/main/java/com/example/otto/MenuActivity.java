package com.example.otto;

import android.content.Intent;
import android.os.Bundle;
import android.widget.Button;

import androidx.appcompat.app.AppCompatActivity;

public class MenuActivity extends AppCompatActivity {

    Button buttonmenuexplicacao, buttonmenujogar;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_menu);

        buttonmenuexplicacao = findViewById(R.id.buttonexplicacaomenu);
        buttonmenuexplicacao.setOnClickListener(v -> {
            Intent intent = new Intent(MenuActivity.this, AjudaActivity.class);
            startActivity(intent);
        });


        buttonmenujogar = findViewById(R.id.button2);
        buttonmenujogar.setOnClickListener(v -> {
            Intent intent = new Intent(MenuActivity.this, JogarActivity.class);
            startActivity(intent);
        });
    }
}
