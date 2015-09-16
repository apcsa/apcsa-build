{
   "assessmentItem": {
      "adaptive": false,
      "identifier": "MultipleChoice",
      "interaction": {
         "choices": [
            {
               "feedback": "\n            This isn't a variable!  It is a method.\n          ",
               "fixed": true,
               "identifier": "choice 1",
               "text": "\n          <tt audio=\"2\">eat</tt>\n        "
            },
            {
               "feedback": "\n            Right: when <tt>eat</tt> is called, <tt>myCandyCount</tt>  \t\t\tis both\n            used to calculate the new value as well as assigned \t\t\tthat new value.\n          ",
               "fixed": true,
               "identifier": "choice 2",
               "text": "\n          <tt audio=\"3\">myCandyCount</tt>\n        "
            },
            {
               "feedback": "\n            Right:  when <tt>eat</tt> is called, the <tt>amount</tt>\n            variable is  \t\t\tused to calculate the new amount (<tt>myCandyCount</tt>).\n          ",
               "fixed": true,
               "identifier": "choice 3",
               "text": "\n          <tt audio=\"4\">amount</tt>\n        "
            },
            {
               "feedback": "\n            <tt>startingCount</tt> isn't a instance\n            variable or parameter \t\t\tused by the <tt>eat</tt> method!\n          ",
               "fixed": true,
               "identifier": "choice 4",
               "text": "\n          <tt audio=\"5\">startingCount</tt>\n        "
            }
         ],
         "hasInlineFeedback": true,
         "maxChoices": "0",
         "prompt": "\n          <p audio=\"1\">Suppose that <tt>myCandyCount</tt> contains the value 7,\n          and the <tt>eat</tt> method is called with an argument of 3.\n          Which of the following are variables that are <i><u>accessed</u></i> as a result of that call?</p>\n        ",
         "responseIdentifier": "MultipleChoice",
         "shuffle": false
      },
      "responseDeclaration": {
         "correctResponse": [
            "choice 2",
            "choice 3"
         ],
         "identifier": "MultipleChoice"
      },
      "timeDependent": false
   },
   "type": "MultipleChoice"
}