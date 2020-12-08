package kr.or.test;

public class ThreadApp extends Thread{

	public void run( ) {
		System.out.println("스레드 시작시 자동실행됩니다.!");
	}
	public static void main(String[] args) {
			(new ThreadApp()).start();
			
	}

}
