@isTest
public class TestApexExam {
   @testsetup static void testdatafactory(){
        //CReating Accounts
        list<Account> act = new list<Account>();
        for(integer i=0;i<5;i++){
            Account a = new Account();
            a.Name = i+'Account';
            a.Industry = 'Entertainment';
            act.add(a);
        }
        insert act;
        //Creating User
        User usr = new User();
        Profile p = [SELECT Id FROM Profile WHERE Name='Standard User'];
        usr.LastName = 'TestUser';
        usr.Alias = 'yshaik';
        usr.Username = 'test145@salesforce.com';
        usr.CommunityNickname = 'usrTest';
        usr.TimeZoneSidKey = 'America/Los_Angeles';
        usr.LocaleSidKey = 'en_US';
        usr.EmailEncodingKey = 'UTF-8';
        usr.LanguageLocaleKey = 'en_US';
        usr.Email = 'testuser@org.com';
        usr.ProfileId = p.Id;
        usr.Phone = '9700457252';
        insert usr;
        //creating Contact
        Contact con = new Contact(LastName='YASEEN', FirstName='shaik');
        //1 , (1+1)^2= 4 , (4+1)^2 =25 , (25+1)^2
        Integer[] series = new Integer[]{1,4,25,676};
        //


    }
    @isTest static void TestdisplayUserdetails(){
        User u = new User();
        u = [select Id, Name, LastName, Phone, Email from User where LastName = 'TestUser'];
        system.runAs(u){
            User currentuser = Exam.displayUserdetails();
            system.assertEquals(u.Name, Currentuser.Name);
            system.assertEquals(u.Email, Currentuser.Email);
            System.assertEquals(u.Phone, Currentuser.Phone);
        
        }
        
    }
    @isTest static void TestAccountdisplay(){
        
        list<Account> names =Exam.displayAccounts();
        system.assertEquals([select Id,Name from Account where Industry='Entertainment' ORDER BY Name ASC],names);
        
    }

    @isTest static void TestContactdisplay(){

        Contact c = Exam.displayContact();
        system.assertEquals('Yaseen', c.FirstName.capitalize());
        system.assertEquals('Shaik',c.LastName.capitalize());
    }
    @isTest static void Testseries(){
        long[] series = new long[]{1,4,25,676};
        list<long> sr = Exam.series(4);
        system.assertEquals(series,sr);
    }

    @isTest static void Testnamereverse(){
        Account a = new Account();
        a = [select Name from Account limit 1];
        string str = Exam.namereverse();
        system.assertEquals(a.Name.reverse(),str);

    }
    @isTest static void TestfibonacciNumbers(){
        integer[] fnbr = new integer[]{1,1,2,3,5,8,13};
        list<integer> fn = Exam.fibonacci(7);
        system.assertEquals(fnbr,fn);
    }


    
    
}