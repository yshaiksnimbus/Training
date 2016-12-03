public class AccountHandler {

    public static Account insertNewAccount(string str){
		Account act = new Account();
        try{
            act.Name = str;
            insert act;
			system.debug(act);
            return act;
			
        }catch(DmlException e){
            System.debug('A DML exception has occurred: ' +
                e.getMessage());
            	return null;
        }
			

		
		

	}

}