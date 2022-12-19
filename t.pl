INIT{undef $/;}
#deactivate
#s|(?s)((?<one>.[^\n]+<validationRules>(?:(?!<validationRules>).)*?<active>)(?<two>true)(?<three></active>(?:(?!<validationRules>).)*?</validationRules>))|$+{one}false$+{three}|gs;
#s|(?s)((?<one>.[^\n]+<lookupFilter>(?:(?!<lookupFilter>).)*?<active>)(?<two>true)(?<three></active>(?:(?!<lookupFilter>).)*?</lookupFilter>))|$+{one}false$+{three}|gs;
#s|(?s)((?<one>.[^\n]+<rules>(?:(?!<rules>).)*?<active>)(?<two>true)(?<three></active>(?:(?!<rules>).)*?</rules>))|$+{one}false$+{three}|gs;

#delete deactivated validation rules
s|(?s)((?<one>.[^\n]+<validationRules>(?:(?!<validationRules>).)*?<active>)(?<two>false)(?<three></active>(?:(?!<validationRules>).)*?</validationRules>))||gs;
s|(?s)((?<one>.[^\n]+<countries>(?:(?!<countries>).)*?<active>)(?<two>false)(?<three></active>(?:(?!<countries>).)*?</countries>))|$+{one}false$+{three}|gs;

#finds xml node based on two identifyers and replaces value in first identifyer
s|(?s)((?<one>\n\s*<objectPermissions>(?:(?!<objectPermissions>).)*?<modifyAllRecords>)(?<two>true)(?<three></modifyAllRecords>.*?<object>Planet__c</object>(?:(?!<objectPermissions>).)*?</objectPermissions>))|$+{one}false$+{three}|gs;

#Modification of files - Finds node in labels file based on full name and replaces value with dynamic content
s|(?s)((?<one>\n\s*<labels>(?:(?!<labels>).)*?<fullName>)(?<SEL>{!selectionFromChangeList})(?<three></fullName>.*?<value>)(?<MOD>.*?)(?<five></value>(?:(?!<labels>).)*?</labels>))|$+{one}$+{SEL}$+{three}RunId_changeType$+{five}|gs;
#sample values for this repo
s|(?s)((?<one>\n\s*<labels>(?:(?!<labels>).)*?<fullName>)(?<SEL>ctx_labelPlanet)(?<three></fullName>.*?<value>)(?<MOD>.*?)(?<five></value>(?:(?!<labels>).)*?</labels>))|$+{one}$+{SEL}$+{three}ABCD_selectedChange$+{five}|gs;

#Assert of files - Finds node in labels based on dynamic full name & dynamic value
s|(?s)((?<one>\n\s*<labels>(?:(?!<labels>).)*?<fullName>)(?<SEL>{!selectionFromChangeList})(?<three></fullName>.*?<value>)(?<MOD>.RunId_changeType)(?<five></value>(?:(?!<labels>).)*?</labels>))|$+{one}$+{SEL}$+{three}RunId_changeType$+{five}|gs;

#Profile change: true/false
s|(?s)((?<one>\n\s*<applicationVisibilities>(?:(?!<applicationVisibilities>).)*?<application>)(?<SEL>{!selectionFromChangeList})(?<three></application>.*?<visible>)(?<MOD>.RunId_changeType)(?<five></visible>(?:(?!<applicationVisibilities>).)*?</applicationVisibilities>))|$+{one}$+{SEL}$+{three}RunId_changeType$+{five}|gs;
s|(?s)((?<one>\n\s*<objectPermissions>(?:(?!<objectPermissions>).)*?<object>)(?<SEL>{!selectionFromChangeList})(?<three></object>.*?<viewAllRecords>)(?<MOD>.RunId_changeType)(?<five></viewAllRecords>(?:(?!<objectPermissions>).)*?</objectPermissions>))|$+{one}$+{SEL}$+{three}RunId_changeType$+{five}|gs;


#Assert label is present
value



#Functionality to only allow deployments if the copado story is in the correct status. Validations however, should be permitted.
#
#Prevent deployment (check promote change/promote & deploy) if:
#
#IF copado__Environment__r.DEV_Environment__c = true AND Release_Approval_Complete__c = false;
#IF copado__Environment__r.Name = PP AND copado__Status__c != Approved;
#
#Validation are done through the button and are not affected
