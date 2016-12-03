@isTest
public class TestRestrictContactByName {
	
    @isTest static void TestContactInsert(){
        
        Contact con = new Contact(LastName='INVALIDNAME');
        
        
        Test.startTest();
        Database.SaveResult result= Database.insert(con,false);
        Test.stopTest();
        system.assert(!result.isSuccess());
        System.assert(result.getErrors().size() > 0);
        system.assertEquals('The Last Name "INVALIDNAME" is not allowed for DML', result.getErrors()[0].getMessage());
        
    }
    
    @isTest static void TestContactUpdate(){
        
        Contact con = new Contact(LastName='INVALIDNAME');
        
        
        Test.startTest();
        Database.SaveResult result= Database.update(con,false);
        Test.stopTest();
        system.assert(!result.isSuccess());
        System.assert(result.getErrors().size() > 0);
        system.assertEquals('The Last Name "INVALIDNAME" is not allowed for DML', result.getErrors()[0].getMessage());
        
    }
}