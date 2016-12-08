package com.example.coop.mad_final;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.EditText;
import android.widget.RadioGroup;
import android.widget.Spinner;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.ToggleButton;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }
    public void findIceCream (View view) {
        EditText name=(EditText)findViewById(R.id.editText);
        String nameValue=name.getText().toString();
        //Spinner
        Spinner iceCreamSpinner=(Spinner)findViewById(R.id.spinner);
        String iceCreamType=String.valueOf(iceCreamSpinner.getSelectedItem());
        //toggle Button
        ToggleButton toggle = (ToggleButton)findViewById(R.id.toggleButton);
        boolean cup = toggle.isChecked();
        String cupString;
        if(cup){
            cupString="CONE";
        }else {
            cupString="CUP";
        }
        //switch
        String dairy_string="";
        Switch dairy_switch=(Switch)findViewById(R.id.switch1);
        boolean dairy = dairy_switch.isChecked();
        if (dairy){
            dairy_string="dairy-free";
        }
        //radio Group
        RadioGroup kind = (RadioGroup)findViewById(R.id.iceCreamRadioGroup);
        String kindType="";
        int iceCream=kind.getCheckedRadioButtonId();
        switch (iceCream){
            case -1:
                kindType="no";
                break;
            case R.id.radioButton1:
                kindType=" Ice Cream";
                break;
            case R.id.radioButton2:
                kindType=" Froyo ";
                break;
            case R.id.radioButton3:
                kindType=" Gellato ";
                break;

        }
        //text view
        TextView dessert=(TextView) findViewById(R.id.resultTextView);
        dessert.setText(nameValue + "'s " + "favorite dessert is " + dairy_string + iceCreamType + kindType + " in a " + cupString + ".");

    }

}
