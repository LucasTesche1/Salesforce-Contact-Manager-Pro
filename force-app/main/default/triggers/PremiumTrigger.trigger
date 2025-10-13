trigger PremiumTrigger on Premium_Client__c (after insert, after update) {
    Set<Id> contactsIds = new Set<Id>();

    for (Premium_Client__c prem : Trigger.new){        
        if(prem.Level__c == 'Gold' && prem.Contact__c != null){
            contactsIds.add(prem.Contact__c);
        }
    }

    if (!contactsIds.isEmpty()){
        List<Contact> contactsToUpdate = [SELECT Id, VIP__c FROM Contact WHERE Id IN :contactsIds];

        for (Contact c : contactsToUpdate){
            c.VIP__c = true;
        }
        update contactsToUpdate;
    }
}
