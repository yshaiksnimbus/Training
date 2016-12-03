public class AccountController {
    
    public string actName{get;set;}
    public list<Contact> con{get;set;}
  	
    public void searchbutton(){
        
        list<Account> act = [select Id,Name from Account where Name like :actName+'%'];
    	con = [select Id,Name,Phone,Email,AccountId from Contact where AccountId =:act];
        
    }
    

}