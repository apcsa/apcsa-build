{
   "assessmentItem":{
      "adaptive":false,
      "identifier":"MultipleChoice",
      "interaction":{
         "choices":[{
               "feedback":"You have it backward. If those two behaviors interact, it would be from\u000a\"add 1 day to the calendar date\" activating the \"set the calendar date\u000ato _____\" with the blank filled by the current date plus one day.",
               "fixed":true,
               "identifier":"EhCBVBrxO1",
               "text":"set the calendar date"
            },
            {
               "feedback":"No, setting the clock time is unrelated to setting the calendar date.",
               "fixed":true,
               "identifier":"l7waxefdez",
               "text":"set the clock time"
            },
            {
               "feedback":"No, comparing the two dates is unrelated to setting the calendar date.",
               "fixed":true,
               "identifier":"7w3PNVkKLU",
               "text":"compare the alarm date and the calendar date"
            },
            {
               "feedback":"Activating the tick behavior may indirectly activate the \"add 1 to the\u000acalendar date\", but there has to be an intermediate behavior.",
               "fixed":true,
               "identifier":"mBk1XAR8Tf",
               "text":"tick"
            },
            {
               "feedback":"That's correct. The calendar date should be incremented when the clock\u000atime reaches midnight, so we need a behavior that checks for midnight.",
               "fixed":true,
               "identifier":"z13Iy3A8re",
               "text":"compare the clock time with midnight"
            }
         ],
         "hasInlineFeedback":true,
         "maxChoices":"1",
         "prompt":"Which behavior directly activates the \"add 1 day to the calendar date\" behavior?",
         "responseIdentifier":"MultipleChoice",
         "shuffle":true
      },
      "responseDeclaration":{
         "correctResponse":["z13Iy3A8re"
         ],
         "identifier":"MultipleChoice"
      },
      "timeDependent":false
   },
   "type":"MultipleChoice"
}