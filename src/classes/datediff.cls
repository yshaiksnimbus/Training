public class datediff {
    
    public static void DifferenceofDates(dateTime dt1, dateTime dt2){
        
        //system.debug(d2-d1);
        if(dt1 <> null && dt2 <> null){
            
            integer dy = dt2.year()-dt1.year();
            integer dm = dt2.month()-dt1.month();
            integer dd = dt2.day()-dt1.day();
            integer dhh =dt2.hour()-dt1.hour();
            integer dmm =dt2.minute()-dt1.minute();
            integer dss = dt2.second()-dt1.second();
            system.debug('The difference between Two dates is:'+dy+'years '+dm+'months '+dd+'days '+dhh+'hours '+dmm+'minutes '+dss+'seconds');
            
            
        }else{
            system.debug('Enter Valid Date format');
        }
    }
    

}