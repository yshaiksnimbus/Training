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
        Contact con = new Contact(FirstName='yaseen', LastName='shaik');
        insert con;
        //1 , (1+1)^2= 4 , (4+1)^2 =25 , (25+1)^2
        //Integer[] series = new Integer[]{1,4,25,676};
        //CReating Products with Description
        list<Product2> products = new list<Product2>();
        for(integer i=0;i<5;i++){
            Product2 p1 = new Product2();
            p1.Name = 'Product'+i;
            p1.Description = 'This a sample Description';
            products.add(p1);
        }
        insert products;



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
        Contact con = [select FirstName,LastName from Contact where LastName = 'shaik'];
        string c = Exam.displayContact();
        system.assertEquals('Yaseen Shaik', c);
        
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
    @isTest static void Testintegerreverse(){
        integer n = Exam.integerreverse(4567);
        system.assertEquals(7654,n);
    }

    @isTest static void TestProductWithDescription(){
        list<Product2> pp = Exam.ProductsWithDescription();
        system.assertEquals([select Id,Name,Description from Product2 where Description like '%a%'],pp);
    }
    @isTest static void TestDatedifferenceDate1greaterthandate2(){
        string str1 = '2016-07-25 20:45:34';
        string str2 = '2000-03-20 00:00:00';
        string result = Exam.DifferenceofDates(str1,str2);
        system.assertEquals('Enter the Proper Date Format. The second date should be greater than the First date',result);
    }
    @isTest static void TestDatedifferenceDate1lessthandate2(){
        string str1 = '2000-03-20 00:00:00';
        string str2 = '2016-07-25 20:45:34';
        string result = Exam.DifferenceofDates(str1,str2);
        system.assertEquals('The difference between the two dates is: 16 years 4 months 5 days 20 hours 45 minutes 34 seconds',result);
    }
    @isTest static void TestBinaryAddition(){
        string str1 = '100101';
        string str2 = '0101101';
        string result = Exam.binaryAddition(str1,str2);
        system.assertEquals('1010010',result);
    }

    
    
}