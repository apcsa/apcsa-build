{
   "assessmentItem": {
      "adaptive": false,
      "identifier": "MultipleChoice",
      "interaction": {
         "choices": [
            {
               "feedback": "A class describes a card. But when comparing ranks, we need actual card\n\nobjects.                     ",
               "fixed": true,
               "identifier": "choice 1",
               "text": "<span audio=\"3\">class</span>"
            },
            {
               "feedback": "\"This card\" is also an instance.",
               "fixed": true,
               "identifier": "choice 2",
               "text": "<span audio=\"4\"instance</span>"
            }
         ],
         "hasInlineFeedback": true,
         "maxChoices": "1",
         "prompt": "\n\n                    <p audio=\"1\">Suppose that the class <em>playing card</em> has the behavior <em>Determine if another card has the same rank as this card.</em></p>\n\n                    <br>\n\n                    <p audio=\"2\">Is \"this card\" a class or an instance?</p>\n\n                ",
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