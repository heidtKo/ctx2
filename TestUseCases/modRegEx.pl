INIT{undef $/;}

# Profile ModRegEx
s|(?s)((?<one>\n\s*<objectPermissions>(?:(?!<objectPermissions>).)*?<object>)(?<SEL>Planet__c)(?<three></object>.*?<viewAllRecords>)(?<MOD>.*?)(?<five></viewAllRecords>(?:(?!<objectPermissions>).)*?</objectPermissions>))|$+{one}$+{SEL}$+{three}true$+{five}|gs;
s|(?s)((?<one>\n\s*<applicationVisibilities>(?:(?!<applicationVisibilities>).)*?<application>)(?<SEL>MyApplication)(?<three></application>.*?<visible>)(?<MOD>.*?)(?<five></visible>(?:(?!<applicationVisibilities>).)*?</applicationVisibilities>))|$+{one}$+{SEL}$+{three}true$+{five}|gs;

# Labels ModRegEx
s|(?s)((?<one>\n\s*<labels>(?:(?!<labels>).)*?<fullName>)(?<SEL>TestCustomLabel)(?<three></fullName>.*?<value>)(?<MOD>.*?)(?<five></value>(?:(?!<labels>).)*?</labels>))|$+{one}$+{SEL}$+{three}RunId_updateCommit_selected$+{five}|gs;
