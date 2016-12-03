public class StringArrayTest {
    
    public static list<string> generateStringArray(integer n){
        
        integer i;
        list<string> listofstrings = new list<string>();
        for(i= 0;i<n;i++){
            listofstrings.add('Test '+i);
            
        }
        system.debug(listofstrings);
        return listofstrings;
        
        
    

    }}