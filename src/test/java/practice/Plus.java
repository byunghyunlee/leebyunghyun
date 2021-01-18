package practice;

public class Plus {

	public static void main(String[] args) {
		// 1~5까지 합을 구하는 코딩
			
		/*
		 * int sum = 0;
		 * 
		 * for(int i=1; i<=5; i++) { sum = i + sum; } System.out.println(sum);
		 */
		
		//  세웅이가 박애에 대한 사랑이 100이고 하루에 -1씩 감소할때 몇일 후에 박애에 대한 사랑이 0이 될까?
		
		/*
		 * int day = 0; for(int i=100; i>=0;i-- ) { day = day+1;
		 * System.out.println(day); } System.out.println(day);
		 */
	
	
	//1~5합
		
	/*
	 * int i = 0; int sum = 0;
	 * 
	 * for(i=0;i<=5;i++) { sum = sum + i; } System.out.println(sum);
	 * 
	 */
	int sum = 0;
	int i = 0;
	while(i<=5) {
		sum = sum + i;
		
		i++;
	}
	System.out.println(sum);
	
	
	
	
	
	}

}
