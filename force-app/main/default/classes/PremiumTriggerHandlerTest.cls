@IsTest
public class PremiumTriggerHandlerTest {
    @IsTest static void testAfterInsertOrUpdate() {
        Contact c = new Contact(FirstName='Gold', LastName='User');
        insert c;

        Premium_Client__c prem = new Premium_Client__c(Contact__c = c.Id, Level__c = 'Gold');
        insert prem;

        Contact updated = [SELECT VIP__c FROM Contact WHERE Id = :c.Id];
        System.assertEquals(true, updated.VIP__c);
    }
}
