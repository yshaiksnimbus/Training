public class Assignment3Controller{

	public integer startNo{get;set;}
	public integer endNo{get;set;}
	public set<integer> str{get;set;}

	

	public pageReference show(){
	set<integer> str = new set<integer>();
	for(integer i=startNo ; i<endNo ; i++){

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
	return null;


}
}