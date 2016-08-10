{
   "assessmentItem": {
      "adaptive": false,
      "identifier": "MultipleChoice",
      "interaction": {
         "choices": [
            {
               "feedback": "\n            No, the behavior \"sound the alarm\" is still the only action that needs\n            to be performed.  This behavior will change in the specifics (i.e., it\n            needs to figure out what to sound), but it is still a single action.\n          ",
               "fixed": true,
               "identifier": "choice 1",
               "text": "\n          <span audio=\"2\">It would need more behaviors to work properly</span>\n        "
            },
            {
               "feedback": "\n            The alarm clock will need to store information about which alarm sound\n            should be used.  This variable might be called \"alarm sound\".\n          ",
               "fixed": true,
               "identifier": "choice 2",
               "text": "\n          <span audio=\"3\">It would need more variables to work properly</span>\n        "
            },
            {
               "feedback": "\n            No, this alarm clock would need more information about which alarm sound\n            should be used.  So, it would require an additional variable.\n          ",
               "fixed": true,
               "identifier": "choice 3",
               "text": "\n          <span audio=\"4\">It wouldn't need any additional variables or behaviors</span>\n        "
            },
            {
               "feedback": "\n            No, there is still only a single behavior that this alarm clock needs:\n            \"sound the alarm\".  It does need to store additional information about\n            the alarm sound to be used.\n          ",
               "fixed": true,
               "identifier": "choice 4",
               "text": "\n          <span audio=\"5\">It would need both more variables and more behaviors</span>\n        "
            },
            {
               "feedback": "\n            No, this advanced alarm clock is very similar to the simpler version we\n            discussed earlier.  An additional variable, called something like \"alarm\n            sound\",  should be the only change necessary.\n          ",
               "fixed": true,
               "identifier": "choice 5",
               "text": "\n          <span audio=\"6\">It would be a totally different object</span>\n        "
            }
         ],
         "hasInlineFeedback": true,
         "maxChoices": "1",
         "prompt": "<p audio=\"1\">\n          Consider an advanced alarm clock that can have different alarm sounds, \n          such as a radio, a buzzer, an mp3 of Pavorati yodelling, etc. \n          Compared to the simple alarm clock what changes would this \n          advanced clock need?</p>\n        ",
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