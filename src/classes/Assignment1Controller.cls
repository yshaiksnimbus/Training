public with sharing class Assignment1Controller {
    public string strAccountName{get;set;}
    public boolean RecordFound{get;set;}
    public List<Contact> ContactList{get;set;}
    
    public pagereference searchAction(){
        RecordFound = false;
        ContactList = [select Id,Name,Email,Phone from Contact where Account.Name Like :strAccountName+'%'];
        if(ContactList.size() > 0){
            RecordFound = true;
        }
        return null;
    }

}