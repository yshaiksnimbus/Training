public class Assignment3_v2{

    public Integer Num1{get;set;}
    public Integer Num2{get;set;}
    public Assignment3_v2(){
        //default values
        Num1 = 1;
        Num2 = 100;
    }
    public string getPrimeNumber(){
        Integer num =0;
        String  primeNumbers = '';

        for (Integer i = num1; i <= num2; i++)         
        {              
            Integer counter=0;      
            for(num =i; num>=1; num--)
            {
                if(Math.Mod(i,num)==0)
                {
                    counter = counter + 1;
                }
            }
            if (counter ==2)
            {
                primeNumbers = primeNumbers + i + ', ';
            } 
        }  
        return primeNumbers;
    }
}