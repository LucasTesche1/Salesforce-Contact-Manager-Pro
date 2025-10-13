public without sharing class PremiumClientController {
    @AuraEnabled(cacheable=true)
    public static Contact getContactData(Id contactId) {
        // Check if the running user has read access to Contact
        if (!Schema.sObjectType.Contact.isAccessible()) {
            throw new AuraHandledException('You do not have access to Contact records.');
        }

        // Define the base query
        String baseQuery = 'SELECT Id, Name, Email, VIP__c FROM Contact';
        
        // Append filter based on whether we received a recordId
        if (contactId != null) {
            baseQuery += ' WHERE Id = :contactId LIMIT 1';
            return Database.query(baseQuery);
        } else {
            baseQuery += ' LIMIT 1';
            return Database.query(baseQuery);
        }
    }
}
