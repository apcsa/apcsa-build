{
   "assessmentItem": {
      "adaptive": false,
      "identifier": "MultipleChoice",
      "interaction": {
         "choices": [
            {
               "feedback": "\n            No, the drawBoard() method ends and there is a different method that\n            follows it.\n          ",
               "fixed": true,
               "identifier": "choice 1",
               "text": "\n          <span audio=\"2\">erase()</span>\n        "
            },
            {
               "feedback": "\n            Yes, the drawBoard() method ends and the\n            drawPiece() method is called next.\n          ",
               "fixed": true,
               "identifier": "choice 2",
               "text": "\n          <span audio=\"3\">drawPiece()</span>\n        "
            },
            {
               "feedback": "\n            No, the fifth vertical line is drawn with drawVerticalLine(4), which is\n            already past this statement.\n          ",
               "fixed": true,
               "identifier": "choice 3",
               "text": "\n          <span audio=\"4\">drawHorizontalLine(4)</span>\n        "
            },
            {
               "feedback": "\n            When the drawBoard() method is finished the\n            program still has more actions to take.  Check\n            the constructor() method.\n          ",
               "fixed": true,
               "identifier": "choice 4",
               "text": "\n          <span audio=\"5\">drawVerticalLine(4)</span>\n        "
            },
            {
               "feedback": "\n            No, although the drawBoard() method ends, there are more statements that follow.\n          ",
               "fixed": true,
               "identifier": "choice 5",
               "text": "\n          <span audio=\"6\">nothing, the program ends</span>\n        "
            }
         ],
         "hasInlineFeedback": true,
         "maxChoices": "1",
         "prompt": "\n          <img src=\"../../../assets/art_board_moves.png\" width=\"150\" />\n          <br/>\n          <p audio=\"1\">\n          What action is executed immediately after the fifth vertical line is drawn?</p>\n        ",
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