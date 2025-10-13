trigger InteractionTrigger on Interaction__c (after insert) {
    for (Interaction__c inter : Trigger.new){
        Id contactId = inter.Contact__c;

        if(contactId != null){
            System.debug('Nova interação criada para o contato: ' + contactId);

            Contact relatedContact = [SELECT Id, Last_Interaction_Date__c FROM Contact WHERE Id =: contactId];
            relatedContact.Last_Interaction_Date__c = Date.today();
            update relatedContact;
        }
    }
}