{
   "assessmentItem": {
      "adaptive": false,
      "identifier": "MultipleChoice",
      "interaction": {
         "choices": [
            {
               "feedback": "\n                        There's only one playing card class. A sequence of cards would have to\n                        consist of card instances.\n                    ",
               "fixed": true,
               "identifier": "choice 1",
               "text": "\n                    <span audio=\"1\">classes</span>\n                "
            },
            {
               "feedback": "\n                        Right!  \n                    ",
               "fixed": true,
               "identifier": "choice 2",
               "text": "\n                    <span audio=\"2\">instances</span>\n                "
            }
         ],
         "hasInlineFeedback": true,
         "maxChoices": "1",
         "prompt": "\n                    <p audio=\"1\">\n                    In a card game playing program, one might also find a \"deck\"\n                    class that represents a deck of cards. Would the state information\n                    for the deck include a sequence of playing card <em>classes</em> or\n                    a sequence of playing card <em>instances</em>?\n\t\t\t\t\t</p>\n                ",
         "responseIdentifier": "MultipleChoice",
         "shuffle": true
      },
      "responseDeclaration": {
         "correctResponse": ["choice 2"],
         "identifier": "MultipleChoice"
      },
      "timeDependent": false
   },
   "type": "MultipleChoice"
}