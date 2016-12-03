public class DateController{

	/*public integer startNo{get;set;}
	public integer endNO{get;set;}
	public string prime{get;set;}*/

	public static void show(integer startNO,integer endNo){
	set<integer> str = new set<integer>();
	for(integer i=startNo ; i<endNO ; i++){

		integer num,count = 0;
		for(num=i;num>=1;num--){

			if(Math.mod(i,num)==0){
				count= count+1;

			}

		}
		if(count == 2){
			str.add(i);
		}
	}
     
    system.debug(str);
}
}