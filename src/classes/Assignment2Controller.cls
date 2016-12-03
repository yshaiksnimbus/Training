public with sharing class Assignment2Controller {
    public Opportunity Opp{get;set;}
    public string age{get;set;}
    
    public Assignment2Controller(){
        Opp = new opportunity();
    }
    public pagereference doDateFormat(){
        Date dt = date.today();
        Date pt = Opp.CloseDate;
        if(pt <> null){
            Integer dy = dt.year()-pt.year();
            Integer dm = dt.month()-pt.month();
            Integer dd = dt.day()-pt.day();
            string stryear;
            string strmonth = ''+dm;
            string strdays = ''+dd;
            if(dm > 0){
                stryear = ''+dy;    
                
            }else if(dm < 0){
                stryear = ''+(dy-1);
            }else if(dm == 0){
                if(dd > 0){
                    stryear = ''+dy;            
                }else if(dd < 0){
                    stryear = ''+(dy-1);
                }else if(dd == 0){
                    stryear = ''+(dy-1);
                }
            }
            age = 'Days = '+strdays+', Months = '+strmonth+', Years = '+stryear;
            
        }
        return null;
    }

}