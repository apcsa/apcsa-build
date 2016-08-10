{
   "assessmentItem":{
      "adaptive":false,
      "identifier":"MultipleChoice",
      "interaction":{
         "choices":[{
               "feedback":"No, the behavior \"sound the alarm\" is still the only action that needs\u000ato be performed.  This behavior will change in the specifics (i.e., it\u000aneeds to figure out what to sound), but it is still a single action.",
               "fixed":true,
               "identifier":"choice 1",
               "text":"<span audio=\"2\">It would need more behaviors, but not more variables, to\u000awork properly.</span>"
            },
            {
               "feedback":"The alarm clock will need a behavior that sets up which alarm sound\u000ashould be used.",
               "fixed":true,
               "identifier":"choice 2",
               "text":"<span audio=\"3\">It would need more variables, but not more behaviors, to\u000awork properly.</span>         "
            },
            {
               "feedback":"No, this alarm clock would need more information about which alarm sound\u000ashould be used.  It would thus require an additional variable.",
               "fixed":true,
               "identifier":"choice 3",
               "text":"<span audio=\"4\">It wouldn't need any additional variables or\u000abehaviors.</span>         "
            },
            {
               "feedback":"It needs to store additional information about the alarm sound to be\u000aused, along with some way to get that sound into the clock.",
               "fixed":true,
               "identifier":"choice 4",
               "text":"<span audio=\"5\">It would need both more variables and more behaviors.</span>"
            },
            {
               "feedback":"No, this advanced alarm clock is very similar to the simpler version we\u000adiscussed earlier.  An additional variable, called something like \"alarm\u000asound\", along with a behavior to determine the sound, should be the only\u000achanges necessary.",
               "fixed":true,
               "identifier":"choice 5",
               "text":"<span audio=\"6\">It would be a totally different object.</span>"
            }
         ],
         "hasInlineFeedback":true,
         "maxChoices":"1",
         "prompt":"<p audio=\"1\">Consider an advanced alarm clock that can have different alarm sounds, such as a radio, a buzzer, an mp3 of Pavorati yodeling, etc. Compared to the simple alarm clock, what changes would this advanced clock need?</p>",
         "responseIdentifier":"MultipleChoice",
         "shuffle":true
      },
      "responseDeclaration":{
         "correctResponse":["choice 4"
         ],
         "identifier":"MultipleChoice"
      },
      "timeDependent":false
   },
   "type":"MultipleChoice"
}