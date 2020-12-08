package kr.or.test;

import java.io.IOException;

public class ExceptionTest {

	public static void main(String[] args) {
		int number=0;
		System.out.print("키보드로 숫자를 입력해주세요.");
		try {
			number=System.in.read();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		System.out.println("키보드로 입력받은 바이트 문자 = " + number);
		System.out.println("키보드로 입력받은 수는= " + (char)number);
	}

}
