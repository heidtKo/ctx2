public with sharing class ctx_runOpptyLogic {
    public ctx_runOpptyLogic() {
        System.debug('I am constructed!');
    }

    Public static Account opptyLogicMethodOne(Account a){
        If (a.Description != null) return a;
        Else {
            a.Description = 'Default description';
            return a;
        }
    }
    public static Account opptyLogicMethodTwo(Account a){
        a.billingstreet = 'Basauri, 6'; 
        a.billingstate = 'Madrid'; 
        a.billingpostalcode ='28023'; 
        return a;
    }
    public static Account opptyLogicMethodThree(Account a){
        a.shippingstreet = 'Basauri, 6'; 
        a.shippingstate = 'Madrid';
        a.shippingpostalcode ='28023';
        return a;
    }
    public static Account opptyLogicMethodFour(Account a) {
        a.Phone='688456789';
        return a;
    }
    public static Account opptyLogicMethodFive(Account a) {
        a.website = 'www.copado.com'; 
        return a;
    }
}
