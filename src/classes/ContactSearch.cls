public class ContactSearch {
	
    public static  list<Contact> searchForContacts(string s1, string s2){
        
        list<Contact> con = new list<Contact>();
        con = [select FirstName,LastName,MailingPostalCode from Contact where LastName = :s1 AND MailingPostalCode = :s2];
        return con;
    }
}