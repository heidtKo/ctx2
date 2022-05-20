@isTest
public with sharing class ctx_runOpptyLogicTest {
    @isTest static void testOpptyLogicMethodOne(){
        Account acc = new Account(Name = 'My Test Account');
        insert acc;
        acc = ctx_runOpptyLogic.OpptyLogicMethodOne(acc);
        System.assertEquals('Default description', acc.Description, 'When description is null, it is updated to Default description');

        acc.Description = 'New Description Manual';
        
        acc = ctx_runOpptyLogic.OpptyLogicMethodOne(acc);
        System.assertNotEquals('Default description', acc.Description, 'When description is NOT null, it is NOT updated to Default description');
    }

    @isTest static void testOpptyLogicMethodTwo(){
        Account acc = new Account(Name = 'My Test Account');
        insert acc;
        acc = ctx_runOpptyLogic.OpptyLogicMethodTwo(acc);
        System.assertEquals('Basauri, 6', acc.BillingStreet, 'Default BillingStreet is Basauri, 6');
        System.assertEquals('Madrid', acc.BillingState, 'Default BillingState is Madrid');
        System.assertEquals('28023', acc.BillingPostalCode, 'Default BillingPostalCode is 28023');
    }

    @isTest static void testOpptyLogicMethodThree(){
        Account acc = new Account(Name = 'My Test Account');
        insert acc;
        acc = ctx_runOpptyLogic.OpptyLogicMethodThree(acc);
        System.assertEquals('Basauri, 6', acc.ShippingStreet, 'Default ShippingStreet is Basauri, 6');
        System.assertEquals('Madrid', acc.ShippingState, 'Default Shippingtate is Madrid');
        System.assertEquals('28023', acc.ShippingPostalCode, 'Default ShippingPostalCode is 28023');
    }

    @isTest static void testOpptyLogicMethodFour(){
        Account acc = new Account(Name = 'My Test Account');
        insert acc;
        acc = ctx_runOpptyLogic.OpptyLogicMethodFour(acc);
        System.assertEquals('688456789', acc.Phone, 'Default phone number is 688456789');
    }

    @isTest static void testOpptyLogicMethodFive(){
        Account acc = new Account(Name = 'My Test Account');
        insert acc;
        acc = ctx_runOpptyLogic.OpptyLogicMethodFive(acc);
        System.assertEquals('www.copado.com', acc.Website, 'Default website is www.copado.com');
    }
}
