package practice;

public class Dice {

	public static void main(String[] args) {
		// 주사위 2개 합 5
		while(true) {
			int num1 = (int)(Math.random()*6)+1;
			int num2 = (int)(Math.random()*6)+1;
			System.out.println("("+num1+","+num2+")");
			if(num1+num2==5) {
				break;
			}
		}
		
	
		}

	}

