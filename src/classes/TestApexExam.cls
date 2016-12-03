@isTest
public class TestApexExam {
    @testsetup static void testdatafactory(){
        //CReating Accounts
        list<Account> act = new list<Account>();
        for(integer i=0;i<5;i++){
            Account a = new Account();
            a.Name = i+'Account';
            act.add(a);
        }
        insert act;
        //Creating User
        User usr = new User();
        Profile p = [SELECT Id FROM Profile WHERE Name='Standard User'];
        usr.LastName = 'TestUser';
        usr.Alias = 'yshaik';
        usr.Username = 'testuser@org.com';
        usr.CommunityNickname = 'usrTest';
        //usr.TimeZoneSidKey = '(GMT-08:00) Pacific Standard Time (America/Los_Angeles)';
        //usr.
        usr.Email = 'testuser@org.com';
        usr.ProfileId = p.Id;
        usr.Phone = '9700457252';

        insert usr;



    }
    /*@isTest static void TestdisplayUserdetails(){
        User currentuser = Exam.displayUserdetails();
        //system.assertEquals(UserInfo.getUserId(), currentuser.Id);
        system.assertEquals('TestUser', Currentuser.Name);
        system.assertEquals('testuser@org.com', Currentuser.Email);
        System.assertEquals('9700457252', Currentuser.Phone);
        
    }*/
    @isTest static void TestAccountdisplay(){
        
        list<Account> acc =Exam.displayAccounts();
        system.assertEquals([select Id,Name from Account ORDER BY Name ASC],acc);
        
    }
    //@isTest static void Test
}