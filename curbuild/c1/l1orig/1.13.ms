{
   "assessmentItem": {
      "adaptive": false,
      "identifier": "MatchSequence",
      "interaction": {
         "choices": [
            {
               "identifier": "gapText_0",
               "matchMax": "1",
               "value": "\n          Raise the volume\n        "
            },
            {
               "identifier": "gapText_1",
               "matchMax": "1",
               "value": "\n          Select a song to play now\n        "
            },
            {
               "identifier": "gapText_2",
               "matchMax": "1",
               "value": "\n          Select a group of songs for the \"next play\" list\n        "
            },
            {
               "identifier": "gapText_3",
               "matchMax": "1",
               "value": "\n          Lower the volume\n        "
            },
            {
               "identifier": "gapText_4",
               "matchMax": "1",
               "value": "\n          Pause the current song\n        "
            },
            {
               "identifier": "gapText_5",
               "matchMax": "1",
               "value": "\n          Current song being played\n        "
            },
            {
               "identifier": "gapText_6",
               "matchMax": "1",
               "value": "\n          Current volume\n        "
            },
            {
               "identifier": "gapText_8",
               "matchMax": "1",
               "value": "\n          List of songs to play next\n        "
            },
            {
               "identifier": "gapText_9",
               "matchMax": "1",
               "value": "\n          On/Off indicator for the \"super bass boost\"\n        "
            },
            {
               "identifier": "gapText_10",
               "matchMax": "1",
               "value": "\n          Whether the person listening likes the current song\n        "
            },
            {
               "identifier": "gapText_11",
               "matchMax": "1",
               "value": "\n          The name of the current U.S. president\n        "
            },
            {
               "identifier": "gapText_12",
               "matchMax": "1",
               "value": "\n          Dropping the mp3 device on the sidewalk\n        "
            }
         ],
         "fields": [
            {
               "identifier": "gapMultiple_0",
               "name": "\n          BEHAVIORS\n        ",
               "numberOfEntries": "0",
               "ordinal": "false"
            },
            {
               "identifier": "gapMultiple_1",
               "name": "\n          INSTANCE VARIABLES\n        ",
               "numberOfEntries": "0",
               "ordinal": "false"
            },
            {
               "identifier": "gapMultiple_2",
               "name": "\n          NEITHER\n        ",
               "numberOfEntries": "0",
               "ordinal": "false"
            }
         ],
         "hasInlineFeedback": true,
         "ordered": false,
         "prompt": "\n          <p audio=\"1\">\n          Consider a generic mp3 player like an iPod.\n          The choices below describe features of a programming object that represent\n          an mp3 player. &amp;nbsp;&amp;nbsp;Which of the items are behaviors,\n          which are instance variables, and which are neither?</p>\n        ",
         "responseIdentifier": "MatchSequence",
         "shuffle": false
      },
      "responseDeclaration": {
         "correctResponses": [
            {
               "choiceIdentifier": "gapText_0",
               "feedback": "\n          Correct. Changing the volume is a behavior.  It will change the instance variable that stores information about the value of the current volume.\n        ",
               "fieldIdentifier": "gapMultiple_0",
               "isCorrect": true,
               "isDefault": false,
               "order": "0"
            },
            {
               "choiceIdentifier": "gapText_1",
               "feedback": "\n          Correct, this is a behavior.  Note that this behavior will change the instance variable that holds information about the current song that's playing.\n        ",
               "fieldIdentifier": "gapMultiple_0",
               "isCorrect": true,
               "isDefault": false,
               "order": "0"
            },
            {
               "choiceIdentifier": "gapText_2",
               "feedback": "\n          Correct.  Changing the playlist is definitely a behavior.  Note that this behavior will change the information stored in the instance variable representing the playlist.\n        ",
               "fieldIdentifier": "gapMultiple_0",
               "isCorrect": true,
               "isDefault": false,
               "order": "0"
            },
            {
               "choiceIdentifier": "gapText_3",
               "feedback": "\n          Correct.  Changing the volume is a behavior.  It changes the instance variable that stores information about the current setting of the volume.\n        ",
               "fieldIdentifier": "gapMultiple_0",
               "isCorrect": true,
               "isDefault": false,
               "order": "0"
            },
            {
               "choiceIdentifier": "gapText_4",
               "feedback": "\n          Correct.  Pausing a song is a behavior, along with jumping forward/back a track, speeding/slowing the playback rate, etc.\n        ",
               "fieldIdentifier": "gapMultiple_0",
               "isCorrect": true,
               "isDefault": false,
               "order": "0"
            },
            {
               "choiceIdentifier": "gapText_5",
               "feedback": "\n          Correct.  Information about the current song -- such as its name -- would be stored in an instance variable.\n        ",
               "fieldIdentifier": "gapMultiple_1",
               "isCorrect": true,
               "isDefault": false,
               "order": "0"
            },
            {
               "choiceIdentifier": "gapText_6",
               "feedback": "\n          Correct.  The current volume is information that should be stored in a variable.  Behaviors like \"lower the volume\" would change the value of this variable.\n        ",
               "fieldIdentifier": "gapMultiple_1",
               "isCorrect": true,
               "isDefault": false,
               "order": "0"
            },
            {
               "choiceIdentifier": "gapText_8",
               "feedback": "\n          Correct.  Playlist information would be stored in a variable.  This information could get somewhat complex but as we'll see later it would still likely be stored in a single instance variable.\n        ",
               "fieldIdentifier": "gapMultiple_1",
               "isCorrect": true,
               "isDefault": false,
               "order": "0"
            },
            {
               "choiceIdentifier": "gapText_9",
               "feedback": "\n          Correct.  This is information, not a behavior.\n        ",
               "fieldIdentifier": "gapMultiple_1",
               "isCorrect": true,
               "isDefault": false,
               "order": "0"
            },
            {
               "choiceIdentifier": "gapText_10",
               "feedback": "\n          Correct.  The mp3 player can't make qualitative judgements.  It doesn't know who's listening.  Unless you added a log in screen, and included new variables like \"Current User\" and \"Rating\" which stored information about the User and the user's preferences.\n        ",
               "fieldIdentifier": "gapMultiple_2",
               "isCorrect": true,
               "isDefault": false,
               "order": "0"
            },
            {
               "choiceIdentifier": "gapText_11",
               "feedback": "\n          Correct. This information isn't stored in a generic mp3 player.  Possibly, as devices get more complicated it could be stored as an instance variable.\n        ",
               "fieldIdentifier": "gapMultiple_2",
               "isCorrect": true,
               "isDefault": false,
               "order": "0"
            },
            {
               "choiceIdentifier": "gapText_12",
               "feedback": "\n          Correct. This action wouldn't be represented in the mp3 player object itself.  The information \"busted beyond repair\" wouldn't be, either, at least not directly in an instance variable!\n        ",
               "fieldIdentifier": "gapMultiple_2",
               "isCorrect": true,
               "isDefault": false,
               "order": "0"
            },
            {
               "choiceIdentifier": "gapText_0",
               "feedback": "Try Again.",
               "fieldIdentifier": "gapMultiple_1",
               "isCorrect": false,
               "isDefault": false,
               "order": "0"
            },
            {
               "choiceIdentifier": "gapText_0",
               "feedback": "Try Again.",
               "fieldIdentifier": "gapMultiple_2",
               "isCorrect": false,
               "isDefault": false,
               "order": "0"
            },
            {
               "choiceIdentifier": "gapText_1",
               "feedback": "Try Again.",
               "fieldIdentifier": "gapMultiple_1",
               "isCorrect": false,
               "isDefault": false,
               "order": "0"
            },
            {
               "choiceIdentifier": "gapText_1",
               "feedback": "Try Again.",
               "fieldIdentifier": "gapMultiple_2",
               "isCorrect": false,
               "isDefault": false,
               "order": "0"
            },
            {
               "choiceIdentifier": "gapText_2",
               "feedback": "Try Again.",
               "fieldIdentifier": "gapMultiple_1",
               "isCorrect": false,
               "isDefault": false,
               "order": "0"
            },
            {
               "choiceIdentifier": "gapText_2",
               "feedback": "Try Again.",
               "fieldIdentifier": "gapMultiple_2",
               "isCorrect": false,
               "isDefault": false,
               "order": "0"
            },
            {
               "choiceIdentifier": "gapText_3",
               "feedback": "Try Again.",
               "fieldIdentifier": "gapMultiple_1",
               "isCorrect": false,
               "isDefault": false,
               "order": "0"
            },
            {
               "choiceIdentifier": "gapText_3",
               "feedback": "Try Again.",
               "fieldIdentifier": "gapMultiple_2",
               "isCorrect": false,
               "isDefault": false,
               "order": "0"
            },
            {
               "choiceIdentifier": "gapText_4",
               "feedback": "Try Again.",
               "fieldIdentifier": "gapMultiple_1",
               "isCorrect": false,
               "isDefault": false,
               "order": "0"
            },
            {
               "choiceIdentifier": "gapText_4",
               "feedback": "Try Again.",
               "fieldIdentifier": "gapMultiple_2",
               "isCorrect": false,
               "isDefault": false,
               "order": "0"
            },
            {
               "choiceIdentifier": "gapText_5",
               "feedback": "Try Again.",
               "fieldIdentifier": "gapMultiple_0",
               "isCorrect": false,
               "isDefault": false,
               "order": "0"
            },
            {
               "choiceIdentifier": "gapText_5",
               "feedback": "Try Again.",
               "fieldIdentifier": "gapMultiple_2",
               "isCorrect": false,
               "isDefault": false,
               "order": "0"
            },
            {
               "choiceIdentifier": "gapText_6",
               "feedback": "Try Again.",
               "fieldIdentifier": "gapMultiple_0",
               "isCorrect": false,
               "isDefault": false,
               "order": "0"
            },
            {
               "choiceIdentifier": "gapText_6",
               "feedback": "Try Again.",
               "fieldIdentifier": "gapMultiple_2",
               "isCorrect": false,
               "isDefault": false,
               "order": "0"
            },
            {
               "choiceIdentifier": "gapText_8",
               "feedback": "Try Again.",
               "fieldIdentifier": "gapMultiple_0",
               "isCorrect": false,
               "isDefault": false,
               "order": "0"
            },
            {
               "choiceIdentifier": "gapText_8",
               "feedback": "Try Again.",
               "fieldIdentifier": "gapMultiple_2",
               "isCorrect": false,
               "isDefault": false,
               "order": "0"
            },
            {
               "choiceIdentifier": "gapText_9",
               "feedback": "Try Again.",
               "fieldIdentifier": "gapMultiple_2",
               "isCorrect": false,
               "isDefault": false,
               "order": "0"
            },
            {
               "choiceIdentifier": "gapText_9",
               "feedback": "Try Again.",
               "fieldIdentifier": "gapMultiple_0",
               "isCorrect": false,
               "isDefault": false,
               "order": "0"
            },
            {
               "choiceIdentifier": "gapText_10",
               "feedback": "Try Again.",
               "fieldIdentifier": "gapMultiple_0",
               "isCorrect": false,
               "isDefault": false,
               "order": "0"
            },
            {
               "choiceIdentifier": "gapText_10",
               "feedback": "Try Again.",
               "fieldIdentifier": "gapMultiple_1",
               "isCorrect": false,
               "isDefault": false,
               "order": "0"
            },
            {
               "choiceIdentifier": "gapText_11",
               "feedback": "Try Again.",
               "fieldIdentifier": "gapMultiple_1",
               "isCorrect": false,
               "isDefault": false,
               "order": "0"
            },
            {
               "choiceIdentifier": "gapText_12",
               "feedback": "Try Again.",
               "fieldIdentifier": "gapMultiple_1",
               "isCorrect": false,
               "isDefault": false,
               "order": "0"
            },
            {
               "choiceIdentifier": "gapText_11",
               "feedback": "Try Again.",
               "fieldIdentifier": "gapMultiple_0",
               "isCorrect": false,
               "isDefault": false,
               "order": "0"
            },
            {
               "choiceIdentifier": "gapText_12",
               "feedback": "Try Again.",
               "fieldIdentifier": "gapMultiple_0",
               "isCorrect": false,
               "isDefault": false,
               "order": "0"
            }
         ],
         "identifier": "MatchSequence"
      },
      "timeDependent": false
   },
   "type": "MatchSequence"
}