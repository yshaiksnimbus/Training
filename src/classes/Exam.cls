public class Exam {
    
    	//Display the current salesforce user details 'Name', 'Number' & 'EmailId'
    
    public static User displayUserdetails(){
        
        string userId = UserInfo.getUserId();
        User u = new User();
        u = [select Id,Name,Email,Phone from User where Id=:userId];
       
        System.debug('Current User Name:'+u.Name);
        system.debug('Email:'+u.Email);
        system.debug('Mobile Number:'+u.Phone);
         return u;  
    }
    
    	//Print the Account Names in Alphabetical ascending order
    
    public static list<Account> displayAccounts(){
        
        list<Account> act = new list<Account>();
        act = [select Id,Name from Account ORDER BY Name ASC];
        for(Account a : act){
            system.debug(a.Name);
        }
        return act;
    }
    
    	//Print the all the contact First name & last name (first alphabet in Capital letter)
    
    public static string displayContact(){
        
        
        Contact cts = new Contact();
        cts = [select FirstName,LastName from Contact limit 1];
        string str1 = cts.FirstName.capitalize();
        string str2 = cts.LastName.capitalize();
        System.debug(str1+' '+str2);
            return str1+' '+str2;
                        
        
        
    }

    
    	//1 , (1+1)^2= 4 , (4+1)^2 =25 , (25+1)^2
    
    public static list<long> series(integer n){
        long a = 1;
        list<long> intseries = new list<long>();
        for(integer i=0;i<n;i++){
            system.debug(a);
            intseries.add(a);
            a=(a+1)*(a+1);
            
        }
        return intseries;
    }
    
    
    	//Print the Account Name in reverse order
    
    public static string namereverse(){
        
        Account act = new Account();
        act =[select Name from Account limit 1];
        system.debug(act.Name);
        system.debug(act.Name.reverse());
        return act.Name.reverse();
    }
    
    	//Print the fibonacci series
    
    public static list<integer> fibonacci(integer n){
        
        integer temp,a=0;
        integer b=1;
        list<integer> fnbrs = new list<integer>();
        for(integer i=0;i<n;i++){
            
            temp = a+b;
            System.debug(b);
            fnbrs.add(b);
            a=b;
            b=temp;
            
        }
        return fnbrs;
    }
    
   		//Print any Integer number in reverse order
   
    public static integer integerreverse(integer n){
        
        integer reverse =0;
        system.debug(n);
        while(n!=0){
            
           	reverse = reverse * 10;
          	reverse = reverse + Math.mod(n, 10);
          	n = n/10;
        }
        system.debug(reverse);
        return reverse;
    }
    
    	//Products having Description field containing 'a' in it
    
    public static list<Product2> ProductsWithDescription(){
        
        list<Product2> products = new list<Product2>();
        products = [select Id,Name,Description from Product2 where Description like '%a%'];
        System.debug(products);
        return products;
        
    }
    
    
    	
    
    public static string DifferenceofDates(string s1, string s2){
        
        DateTime dt1=DateTime.valueOf(s1);
        DateTime dt2=DateTime.valueOf(s2);
        string str;
        if(dt2<dt1){
            str = 'Enter the Proper Date Format. The second date should be greater than the First date';
            system.debug(str);
        }
         else if(dt1!=null && dt2!=null)
         {   

         integer yyyy1=dt2.year()-dt1.year();    
         integer mm1=dt2.month()-dt1.month();
         integer dd1=dt2.day()-dt1.day();
         integer ss1=dt2.second()-dt1.second();
         integer mn1=dt2.minute()-dt1.minute();
         integer hh1=dt2.hour()-dt1.hour();
           string stryear;
           string strmonth = ''+mm1;
           string strdays = ''+dd1;
           string strhour;
           string strminute = ''+mn1;
           string strsecond = ''+ss1;

           if(mm1 > 0){
               stryear = ''+yyyy1;    
               
           }else if(mm1 < 0){
               stryear = ''+(yyyy1-1);
           }else if(mm1 == 0){
               if(dd1 > 0){
                   stryear = ''+yyyy1;            
               }else if(dd1 < 0){
                   stryear = ''+(yyyy1-1);
               }else if(dd1 == 0){
                   stryear = ''+(yyyy1-1);
               }
           }

           if(mn1>0){
                strhour = ''+hh1;
           }else if(mn1<0){
                strhour = ''+(hh1 -1);
           }else if(mn1 ==0){
                if(ss1 > 0){
                    strhour = ''+hh1;
                }else if(ss1 < 0){
                    strhour = ''+(hh1-1);
                }else if(ss1 ==0){
                    strhour = ''+(hh1-1);
                }
           }
           str = 'The difference between the two dates is: '+stryear+' years '+strmonth+' months '+strdays+' days '+strhour+' hours '+strminute+' minutes '+strsecond+' seconds';
        system.debug(str);
        
        
        } 
        return str;
    }
    
    
    
    
    public static string binaryAddition(string bin1, string bin2){
    
        integer i=0;
        long remainder = 0;
        long[] temp =new long[20];
        string sum ='';
        long binaryNo1 = long.valueOf(bin1);
        long binaryNo2 = long.valueOf(bin2);
        
        while (binaryNo1 != 0 || binaryNo2 != 0){
            
            temp[i++] = Math.mod((Math.mod(binaryNo1,10) + Math.mod(binaryNo2,10) + remainder), 2);
            remainder =(Math.mod(binaryNo1,10) + Math.mod(binaryNo2,10) + remainder)/2 ;
            binaryNo1 = binaryNo1 / 10;
            binaryNo2 = binaryNo2 / 10;
        }
        
        if(remainder != 0)
            temp[i++] = remainder;
        --i;
        
   		while(i >= 0){
            
        	sum += temp[i--];
        }
        
        system.debug('Sum of two binary numbers: '+sum);
        return sum;
   }


   
        
    

}