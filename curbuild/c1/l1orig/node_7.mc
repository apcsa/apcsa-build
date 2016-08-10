{
   "assessmentItem":{
      "adaptive":false,
      "identifier":"MultipleChoice",
      "interaction":{
         "choices":[{
               "feedback":"We've already done that. What behavior should the clock do if it knows\u000athat the alarm time and the clock time are the same?",
               "fixed":true,
               "identifier":"M4lR8ivro4",
               "text":"Compare the clock time and the alarm time."
            },
            {
               "feedback":"The tick behavior did that already.",
               "fixed":true,
               "identifier":"MTEylMJNlf",
               "text":"Set the clock time to ______ ."
            },
            {
               "feedback":"The tick behavior shouldn't do that at all.",
               "fixed":true,
               "identifier":"CZUDDVqHDi",
               "text":"Set the alarm time to _____ ."
            },
            {
               "feedback":"That's been done already.",
               "fixed":true,
               "identifier":"zAeiS1I7Mw",
               "text":"Enable the alarm sound."
            },
            {
               "feedback":"The tick behavior has already been activated.",
               "fixed":true,
               "identifier":"GftECPuZLH",
               "text":"Tick."
            },
            {
               "feedback":"That's right!",
               "fixed":true,
               "identifier":"Q6a5re8YQe",
               "text":"Sound the alarm."
            },
            {
               "feedback":"That has to be done in another behavior.",
               "fixed":true,
               "identifier":"elrVg0dqie",
               "text":"Disable the alarm."
            }
         ],
         "hasInlineFeedback":true,
         "maxChoices":"1",
         "prompt":"<p>\u000aAnother behavior for an alarm clock is to <i>increment</i> (add 1 to) the clock time, say by moving the time for 12:38pm to 12:39pm. We'll call this the \"tick\" behavior.\u000a</P>\u000a<p>\u000aSuppose that the alarm sound has been enabled.\u000aAfter incrementing the clock time, the tick behavior might compare the alarm time and the clock time. If the two times are equal, what behavior should the clock do next?\u000a</p>\u000a",
         "responseIdentifier":"MultipleChoice",
         "shuffle":true
      },
      "responseDeclaration":{
         "correctResponse":["Q6a5re8YQe"
         ],
         "identifier":"MultipleChoice"
      },
      "timeDependent":false
   },
   "type":"MultipleChoice"
}