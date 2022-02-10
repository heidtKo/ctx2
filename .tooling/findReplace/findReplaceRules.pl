INIT{undef $/;}
#deactivate
#s|(?s)((?<one>.[^\n]+<validationRules>(?:(?!<validationRules>).)*?<active>)(?<two>true)(?<three></active>(?:(?!<validationRules>).)*?</validationRules>))|$+{one}false$+{three}|gs;
#s|(?s)((?<one>.[^\n]+<lookupFilter>(?:(?!<lookupFilter>).)*?<active>)(?<two>true)(?<three></active>(?:(?!<lookupFilter>).)*?</lookupFilter>))|$+{one}false$+{three}|gs;
#s|(?s)((?<one>.[^\n]+<rules>(?:(?!<rules>).)*?<active>)(?<two>true)(?<three></active>(?:(?!<rules>).)*?</rules>))|$+{one}false$+{three}|gs;

#remove unneeded translations
s|(?s)((?<one>.[^\n]+<customTabs>(?:(?!<customTabs>).)*?<label>)(?<two><!--.*?)(?<three></label>(?:(?!<customTabs>).)*?</customTabs>))||gs; 
s|(?s)((?<one>.[^\n]+<quickActions>(?:(?!<quickActions>).)*?<label>)(?<two><!--.*?)(?<three></label>(?:(?!<quickActions>).)*?</quickActions>))||gs; 
s|(?s)((?<one>.[^\n]+<reportTypes>(?:(?!<reportTypes>).)*?<label>)(?<two><!--.*?)(?<three></label>(?:(?!<reportTypes>).)*?</reportTypes>))||gs; 
s|(?s)((?<one>.[^\n]+<prompts>(?:(?!<prompts>).)*?<name>)(?<two>.*?)(?<three></name>(?:(?!<prompts>).)*?</prompts>))||gs; 

#execution line: konstantinheidt@CO-MBP131176 translations % time perl -pni -f ../../../../.tooling/findReplace/findReplaceRules.pl *


#Functionality to only allow deployments if the copado story is in the correct status. Validations however, should be permitted.
#
#Prevent deployment (check promote change/promote & deploy) if:
#
#IF copado__Environment__r.DEV_Environment__c = true AND Release_Approval_Complete__c = false; 
#IF copado__Environment__r.Name = PP AND copado__Status__c != Approved;
#
#Validation are done through the button and are not affected