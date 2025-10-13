@IsTest
public class InteractionTriggerHandlerTest {
    @IsTest static void testAfterInsert() {
        Contact c = new Contact(FirstName='Test', LastName='User');
        insert c;

        Interaction__c inter = new Interaction__c(Contact__c = c.Id);
        insert inter;

        Contact updated = [SELECT Last_Interaction_Date__c FROM Contact WHERE Id = :c.Id];
        System.assertEquals(Date.today(), updated.Last_Interaction_Date__c);
    }
}
