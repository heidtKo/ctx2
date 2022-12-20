assertProfileAppVisibility(string identifyer, stringTagGroup)
    idString = identifyer
    (?s)((?<one>\n\s*<stringTagGroup>(?:(?!<tagGroup>).)*?<application>)(?<SEL>idString)(?<three></application>.*?<visible>)(?<MOD>.*?)(?<five></visible>(?:(?!<tagGroup>).)*?</tagGroup>))
    print $+{SEL}
    if(SEL = idString) return true
    else false


assertSimpleMetadata() #classes, pages, flows,...