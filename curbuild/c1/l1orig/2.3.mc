{
   "assessmentItem": {
      "adaptive": false,
      "identifier": "MultipleChoice",
      "interaction": {
         "choices": [
            {
               "feedback": "                         A German shepherd might be another instance of\na dog class, but it's                         hard to see how a\nchihuahua would be an instance of a German shepherd.                     ",
               "fixed": true,
               "identifier": "choice 1",
               "text": " <span audio=\"5\">German Shepherd</span> "
            },
            {
               "feedback": "                         Yes, all the given instances are dogs.        \n            ",
               "fixed": true,
               "identifier": "choice 2",
               "text": "<span audio=\"6\">dog  </span>               "
            },
            {
               "feedback": "                         While these are all animals, one of the other\nchoices is both more                         specific and still\nappropriate.                     ",
               "fixed": true,
               "identifier": "choice 3",
               "text": "<span audio=\"7\">animal  </span>               "
            },
            {
               "feedback": "                         A hound might be a class with instances such as\na basset hound, a blood                         hound, or a beagle, but\nnone of the pictured dogs are hounds.                     ",
               "fixed": true,
               "identifier": "choice 4",
               "text": "<span audio=\"8\">hound      </span>           "
            }
         ],
         "hasInlineFeedback": true,
         "maxChoices": "1",
         "prompt": "\n                    <p audio=\"1\" class=\"selfCheckQuestion\">Choose the best class for which the following would be instances. </p>\n                    <table>\n                    <tr>\n                    <td>\n                    <p><img\n                    src=\"../../../assets/art_dog1.png\"\n                    height=\"150\" alt=\"a chihuahua\" name=\"Author= David Shankbone (attribution required)http://commons.wikimedia.org/wiki/File:Little_Man_Chihuahua_by_David_Shankbone.jpg\"\n/></p>\n                    <p audio=\"2\" align=\"center\">A chihuahua</p>\n                    </td>\n                    <td>\n                    <p><img\n                    src=\"../../../assets/art_dog2.png\"                   height=\"150\" alt=\"a Jack Russell terrier\" name=\"CC license from Trisha Shear.\"/></p>\n                    <p audio=\"3\" align=\"center\">A Jack Russell terrier</p>\n                    </td>\n                    <td>\n                    <p><img src=\"../../../assets/art_dog3.png\"                     height=\"150\" alt=\"a collie\"  name=\"Photograph by Pharaoh Hound, http://commons.wikimedia.org/wiki/File:Border_Collie_liver_portrait.jpg\"  /></p>\n                    <p audio=\"4\" align=\"center\">A collie</p>\n                    </td>\n                    </tr>\n                    </table>\n                ",
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