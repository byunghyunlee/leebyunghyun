package kr.or.test;

import java.util.Calendar;

public class Step3 {

	public static void main(String[] args) {
		// 메인메서드 시작 = 스레드 시작(안보이지만 실행)
		
		// String today2 = null;// String자료형용 today2변수 생성
				//MemberVO memberVO = new MemberVO();
				//MemberVO자료형용 memberVO객체변수/오브젝트 선언
				//현재 날짜가 무슨 요일인지 한글로 확인하는 프로그램 할거다
				//그래서 일단 현재 날짜 뽑아와야되니 calendar라는 객체 선언해야한다.
		Week today = null;//week자료형용 today변수
		
		Calendar calendar = Calendar.getInstance();//calendar라는 객체변수 선언한거다.(오브젝트 선언, 인스턴스변수)
		//Calendar 변수에서 이제 현재 요일을 가져오자(1-7까지 반환)
		int intweek = calendar.get(Calendar.DAY_OF_WEEK);
		//현재 요일을 숫자로 받아왔으니 그 값을 한글로 변환해보자(변환이니 switch-참고로 switch는 break필수이다.)
		switch(intweek) {
		case 1: 
			today = Week.일; break; //1을 받고 월요일이라는 결과내야되는데 멈추지 않고 또 아래로 이어지면 안되니까 break걸어야한다.
		case 2: 
			today = Week.월; break; //이 week들은 week.java에서 가져오는 듯
		case 3: 
			today = Week.화; break;
		case 4: 
			today = Week.수; break;
		case 5: 
			today = Week.목; break;
		case 6: 
			today = Week.금; break;
		case 7: 
			today = Week.토; break;
		}
		
		System.out.println("PC의 오늘 요일은: " + today + "요일입니다.");
		
		if(today == Week.수) {//요일 받은거 가지고 if조건문으로 결과냄
			System.out.println("수요일에는 축구를 합니다.");
		} else {
			System.out.println("열심히 자바 공부를 합니다.");
		}
		
		//Calendar클래스가 본인컴퓨터에 세팅된 날짜 기반이라서 누군가 컴퓨터 날짜 바꾸면 결과 바뀐다.
		//그래서 아무나 쉽게 수정못하도록 서버날짜 가져와서 출력해야한다.(이걸 메인컨트롤에서 만든다)
	}

}
