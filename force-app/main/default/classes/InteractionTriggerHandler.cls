public class InteractionTriggerHandler {
    public static void handleAfterInsert(List<Interaction__c> newInteractions) {
        Set<Id> contactIds = new Set<Id>();
        
        for (Interaction__c inter : newInteractions) {
            if (inter.Contact__c != null) {
                contactIds.add(inter.Contact__c);
            }
        }

        if (!contactIds.isEmpty()) {
            List<Contact> contactsToUpdate = [
                SELECT Id, Last_Interaction_Date__c
                FROM Contact
                WHERE Id IN :contactIds
            ];

            for (Contact c : contactsToUpdate) {
                c.Last_Interaction_Date__c = Date.today();
            }

            update contactsToUpdate;
        }
    }
}
