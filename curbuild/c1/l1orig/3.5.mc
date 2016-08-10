{
   "assessmentItem":{
      "adaptive":false,
      "identifier":"MultipleChoice",
      "interaction":{
         "choices":[{
               "feedback":"                         What number represents headlights on and what\u000arepresents them off? This isn't the best answer, since umbers give us\u000atoo many choices.",
               "fixed":true,
               "identifier":"choice 1",
               "text":"                    <span audio=\"2\">number</span>                 "
            },
            {
               "feedback":"                         Since there are only two possibilities,  this\u000aisn't the best choice.                     ",
               "fixed":true,
               "identifier":"choice 2",
               "text":"                    <span audio=\"3\">string</span>                 "
            },
            {
               "feedback":"                         Since there are only two possibilities,  this\u000ais the best choice. \u0009\u0009\u0009\u0009\u0009\u0009Naming the variable \"hasAutomaticTransmission\"\u000a would allow for \u0009\u0009\u0009\u0009\u0009\u0009easy interpretation of yes and no values.       \u000a              ",
               "fixed":true,
               "identifier":"choice 3",
               "text":"                    <span audio=\"4\">Boolean</span>                 "
            },
            {
               "feedback":"                         You don't need something as complex as a \u000acombination.                     ",
               "fixed":true,
               "identifier":"choice 4",
               "text":"                    <span audio=\"5\">some combination of \u000anumber/string/Boolean</span>                 "
            }
         ],
         "hasInlineFeedback":true,
         "maxChoices":"1",
         "prompt":"<p audio=\"1\">\u000a\u000a                    Identify the type of variable that's best for representing the state of a car's headlights (on or off).</p>\u000a\u000a                ",
         "responseIdentifier":"MultipleChoice",
         "shuffle":true
      },
      "responseDeclaration":{
         "correctResponse":["choice 3"
         ],
         "identifier":"MultipleChoice"
      },
      "timeDependent":false
   },
   "type":"MultipleChoice"
}