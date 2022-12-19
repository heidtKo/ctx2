INIT{undef $/;}
#deactivate
#s|(?s)((?<one>.[^\n]+<validationRules>(?:(?!<validationRules>).)*?<active>)(?<two>true)(?<three></active>(?:(?!<validationRules>).)*?</validationRules>))|$+{one}false$+{three}|gs;
#s|(?s)((?<one>.[^\n]+<lookupFilter>(?:(?!<lookupFilter>).)*?<active>)(?<two>true)(?<three></active>(?:(?!<lookupFilter>).)*?</lookupFilter>))|$+{one}false$+{three}|gs;
#s|(?s)((?<one>.[^\n]+<rules>(?:(?!<rules>).)*?<active>)(?<two>true)(?<three></active>(?:(?!<rules>).)*?</rules>))|$+{one}false$+{three}|gs;

#delete deactivated validation rules
s|(?s)((?<one>.[^\n]+<validationRules>(?:(?!<validationRules>).)*?<active>)(?<two>false)(?<three></active>(?:(?!<validationRules>).)*?</validationRules>))||gs;
s|(?s)((?<one>.[^\n]+<countries>(?:(?!<countries>).)*?<active>)(?<two>false)(?<three></active>(?:(?!<countries>).)*?</countries>))|$+{one}false$+{three}|gs;
s|(?s)((?<one>.[^\n]+<objectPermissions>(?:(?!<objectPermissions>).)*?<active>)(?<two>false)(?<three></active>(?:(?!<objectPermissions>).)*?</objectPermissions>))|$+{one}false$+{three}|gs;
s|(?s)((?<one>\n\s*<objectPermissions>(?:(?!<objectPermissions>).)*?<modifyAllRecords>)(?<two>true)(?<three></modifyAllRecords>.*?<object>Planet__c</object>(?:(?!<objectPermissions>).)*?</objectPermissions>))|$+{one}false$+{three}|gs;

  userPermission: ''



#Functionality to only allow deployments if the copado story is in the correct status. Validations however, should be permitted.
#
#Prevent deployment (check promote change/promote & deploy) if:
#
#IF copado__Environment__r.DEV_Environment__c = true AND Release_Approval_Complete__c = false;
#IF copado__Environment__r.Name = PP AND copado__Status__c != Approved;
#
#Validation are done through the button and are not affected
