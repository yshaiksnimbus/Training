public class Soql {
	
    public static void callsoql(){
        
        string selectquery = 'select id,email,(select id,subject from tasks),(select id,subject from events) from contact';
		list<contact> lstcontacts = database.query(selectquery);
		if(! lstcontacts.isEmpty())
		{
  		for(contact con:lstcontacts)
  		{
      	system.debug('contact emails are:'+con.email);
      
      	if(con.tasks.size()>0)
      	{
          for(task tas :con.tasks)
          {
              system.debug('task are......:' +tas);
          }
      }
      if(con.events.size()>0)
      {
          for(event e : con.events)
          {
              system.debug('events are......:' + e);
              
          }
      }
      system.debug('........... ');
  }
   
}
    }
}