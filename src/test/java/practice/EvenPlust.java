package practice;

public class EvenPlust {

	public static void main(String[] args) {
		// 0~7까지 짝수의 합
		
/*		
		  dint sum = 0;
		  
		  for(dint i=0; i<=7; i++) { if(i%2==0) { sum=sum+i; } }
		  System.out.println(sum);
		 
		 
		1~7까지 홀수의 합
			int sum = 0;
			for(int i=0; i<=7; i++) {
				if(!(i%2==0)) {
					sum = sum +i;
					}
				
	
			System.out.println(sum);*/
	
	// 0~7까지 짝수의 합
	
	/*int i = 0;
	int sum = 0;
	
	for(i=0; i<=7; i++) {
		if(i%2==0) {
			sum = sum + i;
		}
		
	}
	System.out.println(sum);
	}*/
	
		
		
		
	
	
	//0~7까지 홀수의 합
//		
//		int i = 0;
//		int sum = 0;
//		
//		for(i=0; i<=7; i++) {
//			if(!(i%2 == 0)) {
//				sum = sum + i;
//			}
//			
//	
//	}
//		System.out.println(sum);

	//0~7홀수 합
		int sum = 0;
		int i = 0;
		while(i<=7) {
			
			if(!(i%2==0)) {
				sum=sum + i;
				
				
			}
			
			i++;	
		}
		System.out.println(sum);
	}
}
