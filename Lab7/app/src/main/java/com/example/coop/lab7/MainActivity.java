package com.example.coop.lab7;

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
    public void findVote (View view) {
        EditText name=(EditText)findViewById(R.id.nameEditText);
        String nameValue=name.getText().toString();
        //Spinner
        Spinner partySpinner=(Spinner)findViewById(R.id.spinner);
        String voteValue=String.valueOf(partySpinner.getSelectedItem());
        //toggle Button
        ToggleButton toggle = (ToggleButton)findViewById(R.id.toggleButton);
        boolean prop = toggle.isChecked();
        String propString;
        if(prop){
            propString="Yes On 72";
        }else {
            propString="No On 72";
        }
        //switch
        String absentee_string="";
        Switch absentee_switch=(Switch)findViewById(R.id.switch1);
        boolean absentee = absentee_switch.isChecked();
        if (absentee){
            absentee_string="is an absentee";
        }
        //radio Group
        RadioGroup candidate = (RadioGroup)findViewById(R.id.candidateRadioGroup);
        String candidateType="";
        int candidate_id=candidate.getCheckedRadioButtonId();
        switch (candidate_id){
            case -1:
                candidateType="no";
                break;
            case R.id.radioButton1:
                candidateType="Clinton";
                break;
            case R.id.radioButton2:
                candidateType="Trump";
                break;
            case R.id.radioButton3:
                candidateType="Johnson";
                break;

        }
        //text view
        TextView result=(TextView) findViewById(R.id.resultTextView);
        result.setText(nameValue + "is a " + voteValue + absentee_string + " who is voting for " + candidateType + " voting " + propString + ".");

    }
}
