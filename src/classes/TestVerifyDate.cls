@isTest
public class TestVerifyDate {
    @isTest static void testOldDate(){
        Date dateTest = VerifyDate.CheckDates(date.newInstance(2016, 12, 01),date.newInstance(2016, 11,15));
        System.assertEquals(date.newInstance(2016, 12, 31), dateTest);
    }
     
    @isTest static void testLessThan30Days(){
        Date dateTest = VerifyDate.CheckDates(date.newInstance(2016, 12, 01),date.newInstance(2016, 12, 20));
        System.assertEquals(date.newInstance(2016, 12, 20), dateTest);
    }
     
    @isTest static void testMoreThan30Days(){
        Date dateTest = VerifyDate.CheckDates(date.newInstance(2016, 12, 01),date.newInstance(2017,01,03));
        System.assertEquals(date.newInstance(2016, 12, 31), dateTest);
    }
 

}