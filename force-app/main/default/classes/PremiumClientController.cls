public with sharing class PremiumClientController {
    @AuraEnabled(cacheable=true)
    public static Contact getContactData(Id contactId) {
        if(contactId != null){
            return [SELECT Id, Name, Email, VIP__c FROM Contact WHERE Id = :contactId LIMIT 1];
        } else {
            return [SELECT Id, Name, Email, VIP__c FROM Contact LIMIT 1];
        }
    }
}