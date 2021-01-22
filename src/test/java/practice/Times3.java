package practice;

public class Times3 {

	public static void main(String[] args) {
		//1~100, 3의 배수
		
		int i = 3;
		int sum = 0;
		
		for(i=3;i<=100;i++) {
			if(i%3==0) {
				sum = sum + i;
				
			}
		}System.out.println(sum);
	}

}
