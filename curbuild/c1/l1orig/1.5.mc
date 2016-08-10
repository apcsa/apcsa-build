{
   "assessmentItem": {
      "adaptive": false,
      "identifier": "MultipleChoice",
      "interaction": {
         "choices": [
            {
               "feedback": "             The alarm clock doesn't perform any new actions, it just\ndoes the same             action at a new time and date.  So, in this\nmore complicated alarm             clock, there would still be only a\nsingle behavior \"sound the alarm\".           ",
               "fixed": true,
               "identifier": "choice 1",
               "text": " <span audio=\"1\">It would need more behaviors to work properly </span>        "
            },
            {
               "feedback": "             This advanced alarm clock needs only a single variable, but\nthe variable             needs to store information about the time\n<i>and</i> the day that the             alarm will go off.  If you\nchoose this answer because you though that             should be stored\nin two variables (i.e., one for the time and one for             the\nday), that is also a reasonable answer.           ",
               "fixed": true,
               "identifier": "choice 2",
               "text": " <span audio=\"2\">it would need more variables to work properly </span>        "
            },
            {
               "feedback": "             Right.  This calendar alarm clock would still need one\nbehavior,             \"sound the alarm\", and one variable, although that\nshould probably be             called \"alarm timedate\" or something. \nThat is, the variable needs to             store information about the\ntime <i>and</i> the date.           ",
               "fixed": true,
               "identifier": "choice 3",
               "text": " <span audio=\"3\">         it wouldn't need any additional variables or behaviors   </span>      "
            },
            {
               "feedback": "            This alarm clock would still only need a single behavior,\n\"sound the             alarm\", and a single variable, \"alarm time and\ndate\", in order to work             as described.           ",
               "fixed": true,
               "identifier": "choice 4",
               "text": " <span audio=\"4\">          it would need more variables and more behaviors, but would\nmake use of           behaviors and state from the simple alarm clock  </span>\n      "
            }
         ],
         "hasInlineFeedback": true,
         "maxChoices": "1",
         "prompt": "\n          <p audio=\"advancedA1\">The best design for our simple alarm clock \n          involved the behaviors \"ring the alarm\" and \"set the alarm time\" and the variable \n          \"alarm time\".  But what behaviors and states would be needed \n          to design a more sophisticated alarm clock?  </p>\n          \n          <p audio=\"advancedA2\">Consider a more advanced alarm clock that includes \n          a calendar. This new alarm clock can be set to activate \n          at any time on any day within a year. Compared to \n          the simple alarm clock we were discussing above... </p>\n        ",
         "responseIdentifier": "MultipleChoice",
         "shuffle": true
      },
      "responseDeclaration": {
         "correctResponse": ["choice 3"],
         "identifier": "MultipleChoice"
      },
      "timeDependent": false
   },
   "type": "MultipleChoice"
}