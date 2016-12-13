package com.example.coop.diceapp;

import android.os.Bundle;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

import java.util.Random;

public class MainActivity extends AppCompatActivity {

    ImageView iv_cpu, iv_player;

    TextView tv_cpu, tv_player;

    int cpuPoints = 0, playerPoints = 0;

    Random r;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        iv_cpu = (ImageView) findViewById(R.id.iv_cpu);
        iv_player = (ImageView) findViewById(R.id.iv_player);

        tv_cpu = (TextView) findViewById(R.id.tv_cpu);
        tv_player = (TextView) findViewById(R.id.tv_player);

        r = new Random();


        iv_player.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                int cpuThrow = r.nextInt(6) + 1;
                int playerThrow = r.nextInt(6) + 1;

                setImageCPU(cpuThrow);
                setImagePlayer(playerThrow);

                if (cpuThrow > playerThrow) {
                    cpuPoints++;
                }
                if (playerThrow > cpuThrow) {
                    playerPoints++;
                }
                if (cpuPoints >= 10.5) {
                    cpuPoints = 0;
                    playerPoints = 0;
                }
                if (playerPoints>= 10.5){
                    cpuPoints = 0;
                    playerPoints = 0;
                }


                tv_cpu.setText("CPU: " + cpuPoints);
                tv_player.setText("YOU: " + playerPoints);
                if (playerPoints >= 9.5){
                    tv_player.setText("WINNER");
                    tv_cpu.setText("LOSER");
                }
                if (cpuPoints >= 9.5) {
                    tv_cpu.setText("WINNER");
                    tv_player.setText("LOSER");
                }

            }
        });

    }

            public void setImageCPU(int num) {
                switch (num) {

                    case 1:
                        iv_cpu.setImageResource(R.drawable.diceandroid1);
                        break;
                    case 2:
                        iv_cpu.setImageResource(R.drawable.diceandroid2);
                        break;
                    case 3:
                        iv_cpu.setImageResource(R.drawable.diceandroid3);
                        break;
                    case 4:
                        iv_cpu.setImageResource(R.drawable.diceandroid4);
                        break;
                    case 5:
                        iv_cpu.setImageResource(R.drawable.diceandroid5);
                        break;
                    case 6:
                        iv_cpu.setImageResource(R.drawable.diceandroid6);
                        break;
                }
            }

            public void setImagePlayer(int num) {
                switch (num) {

                    case 1:
                        iv_player.setImageResource(R.drawable.diceandroid1);
                        break;
                    case 2:
                        iv_player.setImageResource(R.drawable.diceandroid2);
                        break;
                    case 3:
                        iv_player.setImageResource(R.drawable.diceandroid3);
                        break;
                    case 4:
                        iv_player.setImageResource(R.drawable.diceandroid4);
                        break;
                    case 5:
                        iv_player.setImageResource(R.drawable.diceandroid5);
                        break;
                    case 6:
                        iv_player.setImageResource(R.drawable.diceandroid6);
                        break;
                }


            }

    public void showAlert(View view) {
        AlertDialog.Builder alert = new AlertDialog.Builder(this);
        alert.setMessage("First to 10 wins. Game resets when winner reaches 10.")
                .create();
        alert.show();


    }
}