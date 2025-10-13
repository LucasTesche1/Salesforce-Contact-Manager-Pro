public with sharing class ContactController {
    @AuraEnabled(cacheable=true)
    public static List<Contact> getContacts(){
        try {
            return [SELECT Id, Name, Email, Phone FROM Contact LIMIT 50];
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }

    @AuraEnabled
    public static void createInteraction(Id contactId, String title, String description, String type){            
        try {
            Interaction__c inter = new Interaction__c(
                Contact__c = contactId,
                Title__c = title,
                Description__c = description,
                Type__c = type,
                Date__c = Date.today()
            );
            insert inter;

        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
}