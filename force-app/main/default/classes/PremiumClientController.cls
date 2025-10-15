public with sharing class PremiumClientController {
    @AuraEnabled(cacheable=true)
    public static List<Contact> getContactData() {
        return [
            SELECT Id, Name, Email, VIP__c, Level__c, Last_Interaction_Date__c
            FROM Contact
            WHERE VIP__c = TRUE
            LIMIT 10
        ];
    }
}
