package practice;

public class Gugudan {

	public static void main(String[] args) {
		// 구구단 만들기
	
//	int i = 2;
//	int j = 1;
//			
//			for(i=2;i<=9;i++)  {
//				for(j=1;j<=9;j++) {
//					System.out.println(i + "X" +j +"=" + i*j +"입니다.");
//				}
//			}
		
		int i = 2;
		while(i<=9) {
			int j = 1;
			while(j<=9) {
				System.out.println(i + "X" + j + "=" + i*j);
				j++;
			}
		i++;
		}
	
	}
	
}

