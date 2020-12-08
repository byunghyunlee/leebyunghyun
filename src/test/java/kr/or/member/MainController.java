package kr.or.member;

import kr.or.member.MemberService;
import kr.or.member.MemberVO;

public class MainController {

	public static void main(String[] args) {
		MemberVO memberVO = new MemberVO();// 자바오브젝트 저장소라고 보면됨(홍길동정보)
		memberVO.setName("홍길동");
		memberVO.setAge(45);
		memberVO.setPhoneNum("000-0000-0000");
		MemberVO memberVO2 = new MemberVO();// 자바오브젝트 저장소라고 보면됨(성춘향정보)
		memberVO2.setName("성춘향");
		memberVO2.setAge(18);
		memberVO2.setPhoneNum("111-1111-1111");
		MemberVO memberVO3 = new MemberVO();// 자바오브젝트 저장소라고 보면됨(각시탈정보)
		memberVO3.setName("각시탈");
		memberVO3.setAge(28);
		memberVO3.setPhoneNum("222-2222-2222");
		// 위 각각 3개의 레코드를 1곳에 담을 배열 클래스 오브젝트를 하나 만든다.
		MemberVO[] members = new MemberVO[3];// 아래 멤버3명이 memberVO[3명]여기에 모여서 이거의 이름이 members이고 이게 printmember로간다.
		members[0] = memberVO;
		members[1] = memberVO2;
		members[2] = memberVO3;
		// 전에 사용했던 출력보다는 개선된 방식으로 출력(아래) MemberService라는 서비스 전용 클래스를 만들어서 처리할것이다.
		MemberService memberService = new MemberService();// 자바 오브젝트객체 생성하는 방법
		memberService.printMember(members);// memberVO에서 온 member가 printMember로해서 같이 service로 간다. 서비스 클래스의 메서드 호출
	}

}
