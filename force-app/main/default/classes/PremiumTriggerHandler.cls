public class PremiumTriggerHandler {
    public static void handleAfterInsertOrUpdate(List<Premium_Client__c> premiumClients) {
        Set<Id> contactIds = new Set<Id>();

        for (Premium_Client__c prem : premiumClients) {
            if (prem.Contact__c != null && prem.Level__c == 'Gold') {
                contactIds.add(prem.Contact__c);
            }
        }

        if (!contactIds.isEmpty()) {
            List<Contact> contactsToUpdate = [
                SELECT Id, VIP__c
                FROM Contact
                WHERE Id IN :contactIds
            ];

            for (Contact c : contactsToUpdate) {
                c.VIP__c = true;
            }

            update contactsToUpdate;
        }
    }
}
