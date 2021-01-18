package practice;

public class PibonachiSeven {

	public static void main(String[] args) {
		// !7

//		int i = 7;
//		int sum = 1;
//		for(i=7; i>1; i--) {
//			sum = sum*i;
//			
//		}	System.out.println(sum);
		
		int i = 7;
		int sum = 1;
		while(i>1) {
			sum = sum*i;
			i--;
		}System.out.println(sum);
	}

}
