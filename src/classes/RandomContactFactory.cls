public class RandomContactFactory {
	
    public static List<Contact> generateRandomContacts(integer noContacts,string lastname){
        
        list<Contact> con = new list<Contact>();
        for(integer i=0;i<noContacts;i++){
            
            Contact c = new Contact(FirstName='Anil'+i, LastName=lastname);
            con.add(c);
        }
        return con;
    }
}