public class ContactAndLeadSearch {

    public static List<List< SObject>> searchContactsAndLeads(string str){
        
        string query = 'Find \''+str+'\' IN Name FIELDS RETURNING Contact(FirstName,LastName),Lead(FirstName,LastName,Company)';
        List<List< SObject>>  searchresult = new List<List< SObject>>();
        searchresult = search.query(query);
        return searchresult;
    }
}