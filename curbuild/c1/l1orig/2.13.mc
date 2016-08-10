{
   "assessmentItem": {
      "adaptive": false,
      "identifier": "MultipleChoice",
      "interaction": {
         "choices": [
            {
               "feedback": "\n            That's too few. How many keystrokes actually\n            change the value displayed                         by the accumulator?\n          ",
               "fixed": true,
               "identifier": "choice 1",
               "text": "\n          1\n        "
            },
            {
               "feedback": "\n            That's almost right. Did you forget a behavior?\n          ",
               "fixed": true,
               "identifier": "choice 2",
               "text": "\n          2\n        "
            },
            {
               "feedback": "\n            The keyboard is requesting that an accumulator behavior be performed\n            once for each ENTER and once for each CLEAR.\n          ",
               "fixed": true,
               "identifier": "choice_3",
               "text": "\n          3\n        "
            },
            {
               "feedback": "\n            Are you sure you didn't count some extras?\n          ",
               "fixed": true,
               "identifier": "choice 4",
               "text": "\n          4\n        "
            },
            {
               "feedback": "\n            Did you mistake keyboard behaviors for\n            accumulator behaviors?\n          ",
               "fixed": true,
               "identifier": "choice 5",
               "text": "\n          5\n        "
            },
            {
               "feedback": "\n            Not all keystrokes result in an accumulator\n            behavior being performed.\n          ",
               "fixed": true,
               "identifier": "choice 6",
               "text": "\n          8\n        "
            }
         ],
         "hasInlineFeedback": true,
         "maxChoices": "1",
         "prompt": "\n          <p audio=\"1\">Suppose the user hits the keys:</p>\n          <pre>          3\n          4\n          ENTER\n          +\n          2\n          3\n          ENTER\n          CLEAR</pre>\n          <p audio=\"2\">How many times are accumulator behaviors performed?   </p>\n          \n        ",
         "responseIdentifier": "MultipleChoice",
         "shuffle": false
      },
      "responseDeclaration": {
         "correctResponse": ["choice_3"],
         "identifier": "MultipleChoice"
      },
      "timeDependent": false
   },
   "type": "MultipleChoice"
}