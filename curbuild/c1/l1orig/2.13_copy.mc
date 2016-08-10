<jaxbXML>
    <assessmentItem xmlns="http://www.imsglobal.org/xsd/imsqti_v2p0" xmlns:ns3="http://www.w3.org/1998/Math/MathML" xmlns:ns2="http://www.w3.org/1999/xlink" timeDependent="false" adaptive="false">
        <responseDeclaration identifier="SINGLE_CHOICE">
            <correctResponse><value>choice 3</value></correctResponse>
        </responseDeclaration>
        <itemBody>
            <choiceInteraction hasInlineFeedback="true" responseIdentifier="SINGLE_CHOICE" maxChoices="1" shuffle="true">
                <prompt xmlns="">
                    <p audio="1">Suppose the user hits the keys:</p>
                    <pre>
                    3
                    4
                    ENTER
                    
                    2
                    3
                    ENTER
                    CLEAR
                    </pre>
                    <br/>
                       <p audio="2">How many times are accumulator behaviors performed?   </p>
                </prompt>
                <simpleChoice xmlns="" fixed="true" identifier="choice 1">
                    <feedbackInline show="true" identifier="choice 1">
                        That's too few. How many keystrokes actually change the value displayed
                        by the accumulator?
                    </feedbackInline>
                    1
                </simpleChoice>
                <simpleChoice xmlns="" fixed="true" identifier="choice 2">
                    <feedbackInline show="true" identifier="choice 2">
                        That's too few. How many keystrokes actually change the value displayed
                        by the accumulator?
                    </feedbackInline>
                    2
                </simpleChoice>
                <simpleChoice xmlns="" fixed="true" identifier="choice 3">
                    <feedbackInline show="true" identifier="choice 3">
                        That's too few. How many keystrokes actually change the value displayed
                        by the accumulator?
                    </feedbackInline>
                    3
                </simpleChoice>
                <simpleChoice xmlns="" fixed="true" identifier="choice 4">
                    <feedbackInline show="true" identifier="choice 4">
                        Are you sure you didn't count some extras?
                    </feedbackInline>
                    4
                </simpleChoice>
            </choiceInteraction>
        </itemBody>
    </assessmentItem>
</jaxbXML>
