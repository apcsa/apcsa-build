<MatchSequence>
    
    <assessmentItem xmlns="http://www.imsglobal.org/xsd/imsqti_v2p0" xmlns:ns2="http://www.w3.org/1999/xlink" xmlns:ns3="http://www.w3.org/1998/Math/MathML" timeDependent="false" adaptive="false">
        
        <responseDeclaration identifier="MATCH_ASSMT_1">
            <correctResponse>
                <value isDefault="false" isCorrect="true" choiceIdentifier="newfan" fieldIdentifier="yes">
                    <html><body  class="feedback">
                    Most digital fans contain a computer to remember the settings that a person has given it
                    and control the motor to reflect those settings.
                    </body></html>
                </value>
                <value isDefault="false" isCorrect="true" choiceIdentifier="ps3" fieldIdentifier="yes">
                    <html><body  class="feedback">
                    Yes, video game consoles are most definitely computers.  In fact, the manufacturers of
                    the latest generation of the consoles
                    are hoping that their consoles to take over most, if not all, of the duties
                    of a family's home computer.
                    </body></html>
                </value>
                <value isDefault="false" isCorrect="false" choiceIdentifier="oldfan" fieldIdentifier="yes">
                    <html><body  class="feedback">
                    While an older fan uses electricity, it contains only simple switches and components
                    change what is getting fed to the motor. There isn't anything that people would call a computer.
                    </body></html>
                </value>
                <value isDefault="false" isCorrect="true" choiceIdentifier="soldier" fieldIdentifier="yes">
                    <html><body  class="feedback">
                    Modern soldiers carry many computers to help them with the myriad of tasks they need to do.
                    </body></html>
                </value>
                <value isDefault="false" isCorrect="false" choiceIdentifier="pencil" fieldIdentifier="yes">
                    <html><body  class="feedback">
                    A pencil is a piece of wood, some graphite, and maybe an eraser! There isn't a computer in there!
                    </body></html>
                </value>
                <value isDefault="false" isCorrect="true" choiceIdentifier="car" fieldIdentifier="yes">
                    <html><body  class="feedback">
                    Right, a modern car contains several computers: the CD player, for instance!
                    </body></html>
                </value>
                <value isDefault="false" isCorrect="true" choiceIdentifier="cell" fieldIdentifier="yes">
                    <html><body  class="feedback">
                    Right, a cell phone definitely contains computers.
                    </body></html>
                </value>
                <value isDefault="true" isCorrect="false" fieldIdentifier="yes">
                    <html><body  class="feedback">this is the defualt</body></html>
                </value>
                <value isDefault="false" isCorrect="false" choiceIdentifier="ps3" fieldIdentifier="no">
                    <html><body  class="feedback">
                    Yes, video game consoles are most definitely computers.  In fact, the manufacturers of
                    the latest generation of the consoles
                    are hoping that their consoles to take over most, if not all, of the duties
                    of a family's home computer.
                    </body></html>
                </value>
                <value isDefault="false" isCorrect="false" choiceIdentifier="newfan" fieldIdentifier="no">
                    <html><body  class="feedback">
                    Digital fans need to remember the settings that a person has given it,
                    and control the motor to reflect those settings, make beeps when an error occurs, and so forth.
                    This is a clear indication of computing power.
                    </body></html>
                </value>
                <value isDefault="false" isCorrect="true" choiceIdentifier="oldfan" fieldIdentifier="no">
                    <html><body  class="feedback">
                    Right, an older fan only contains simple electrical components.
                    There isn't anything that people would call a computer.
                    </body></html>
                </value>
                <value isDefault="false" isCorrect="false" choiceIdentifier="soldier" fieldIdentifier="no">
                    <html><body  class="feedback">
                    Modern soldiers carry many computers to help them with the myriad of tasks they need to do. In fact,
                    they often have a "ruggedized" laptop computer that operates a lot like a business person's laptop.
                    </body></html>
                </value>
                <value isDefault="false" isCorrect="true" choiceIdentifier="pencil" fieldIdentifier="no">
                    <html><body  class="feedback">
                    Right. No computer in there.
                    </body></html>
                </value>
                <value isDefault="false" isCorrect="false" choiceIdentifier="car" fieldIdentifier="no">
                    <html><body  class="feedback">
                    A modern car contains several computers: e.g., to sense and control the engine, to operate the
                    radio and CD player, and so forth.
                    </body></html>
                </value>
                <value isDefault="false" isCorrect="false" choiceIdentifier="cell" fieldIdentifier="no">
                    <html><body  class="feedback">
                    A modern cell phone definitely contains computers: they need to
                    send digital information to the towers that link them to the greater network, they often
                    run games, most often have a calculator tool, and so forth.
                    </body></html>
                </value>
                <value isDefault="true" isCorrect="false" fieldIdentifier="no">
                    <html><body  class="feedback">this is the defualt</body></html>
                </value>
            </correctResponse>
            <mapping defaultValue="0.0">
                <mapEntry mappedValue="1.0" mapKey="gapTextType"/>
            </mapping>
        </responseDeclaration>
        <responseDeclaration identifier="CHOICE_ASSMT_1">
            <correctResponse>
                <value isDefault="false" isCorrect="false">
                    SIMPLE_CHOICE_ID1
                </value>
            </correctResponse>
        </responseDeclaration>
        
        
        
        <itemBody>
            <gapMatchInteraction hasInlineFeedback="true" responseIdentifier="MATCH_ASSMT_1" shuffle="true">
                <prompt>
                    <p audio="1">Match &amp; Sequence questions help you self-check your understanding.</p>
                    <br/>
                   <p audio="2"> Which of the following contain a computer? Drag each Choice to the correct Target box, then click <i>Check Answers</i>.</p>
                    
                </prompt>
                
                <gapText identifier="ps3" matchMax="1">
                    <html><body class="choice">Playstation 3</body></html>
                </gapText>
                <gapText identifier="newfan" matchMax="1">
                    <html><body class="choice">Digital fan</body></html>
                </gapText>
                <gapText identifier="oldfan" matchMax="1">
                    <html><body class="choice">Old-school fan</body></html>
                </gapText>
                <gapText identifier="soldier" matchMax="1">
                    <html><body class="choice">U.S. Marine stationed in Iraq</body></html>
                </gapText>
                <gapText identifier="pencil" matchMax="1">
                    <html><body class="choice">Pencil</body></html>
                </gapText>
                <gapText identifier="car" matchMax="1">
                    <html><body class="choice">Modern car</body></html>
                </gapText>
                <gapText identifier="cell" matchMax="1">
                    <html><body class="choice">Cell phone</body></html>
                </gapText>
                <gapMultiple identifier="yes" ordinal="false" numberOfEntries="0">
                    <html><body class="slot">Yes, they contain a computer (or more than one)</body></html>
                </gapMultiple>
                <gapMultiple identifier="no" ordinal="false" numberOfEntries="0">
                    <html><body class="slot">No, they don't contain a computer</body></html>
                </gapMultiple>
            </gapMatchInteraction>
        </itemBody>
    </assessmentItem>
    
    
</MatchSequence>
