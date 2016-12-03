public class Assignment4Controller{
    
    public string inputstring{get;set;}

    public void show(){

    	if(Pattern.matches('^[a-zA-Z0-9._|\\\\%#~`=?&/$^*!}{+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,4}$', inputstring)){

    		inputstring = inputstring+' is an Email';
    	}else if((Pattern.Matches('[0-9]{3}-[0-9]{3}-[0-9]{4}', inputstring)) || Pattern.Matches('[(]{1}[0-9]{3}[)]{1}-[0-9]{3}-[0-9]{4}', inputstring)){

    		inputstring = inputstring+' is a Phone Number';
    	}else{

    		inputstring = 'Enter a Valid Email or Phone';
    	}

    }
}