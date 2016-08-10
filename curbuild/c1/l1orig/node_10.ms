{
   "assessmentItem":{
      "adaptive":false,
      "identifier":"MatchSequence",
      "interaction":{
         "choices":[{
               "matchMax":"1",
               "value":"add 1 minute to the clock time",
               "identifier":"choice_0"
            },
            {
               "matchMax":"1",
               "value":"compare the alarm time and the clock time; if they match, then compare the calendar date with the alarm date",
               "identifier":"choice_1"
            },
            {
               "matchMax":"1",
               "value":"sound the alarm",
               "identifier":"choice_3"
            },
            {
               "matchMax":"1",
               "value":"compare clock time and midnight; if they're the same, add 1 day to the calendar date",
               "identifier":"choice_4"
            }
         ],
         "fields":[{
               "identifier":"field_0",
               "numberOfEntries":"0",
               "ordinal":false,
               "name":"Ordered behaviors"
            }
         ],
         "hasInlineFeedback":true,
         "ordered":"true",
         "prompt":"Given below is a list of behavior sequences that the \"tick\" behavior can activate. Arrange them in the sequence that \"tick\" activates them.",
         "responseIdentifier":"MatchSequence",
         "shuffle":true
      },
      "responseDeclaration":{
         "correctResponses":[{
               "choiceIdentifier":"choice_0",
               "fieldIdentifier":"field_0",
               "feedback":"The first thing \"tick\" will do is update the clock time.",
               "isCorrect":true,
               "isDefault":false,
               "order":"0"
            },
            {
               "choiceIdentifier":"choice_1",
               "fieldIdentifier":"field_0",
               "feedback":"The comparisons are the last thing to be done before deciding whether or not to sound the alarm.",
               "isCorrect":true,
               "isDefault":false,
               "order":"2"
            },
            {
               "choiceIdentifier":"choice_3",
               "fieldIdentifier":"field_0",
               "feedback":"This happens only if time and date are checked.",
               "isCorrect":true,
               "isDefault":false,
               "order":"3"
            },
            {
               "choiceIdentifier":"choice_4",
               "fieldIdentifier":"field_0",
               "feedback":"The calendar date needs to be updated (the clock just struck midnight) before the dates and times to be compared.",
               "isCorrect":true,
               "isDefault":false,
               "order":"1"
            }
         ],
         "identifier":"MatchSequence"
      },
      "timeDependent":false
   },
   "type":"MatchSequence"
}