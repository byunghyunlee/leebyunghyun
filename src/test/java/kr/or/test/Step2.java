package kr.or.test;

/**
 * 클래스자료형
 * @author 이병현
 *
 */
class MemberVO {
	//멤버변수 만들기,일단 멤버변수는 private 로만들고 getset을 public으로 만들어줘서 getset에서 접근해서 데이터주고 받을 수 있도록 한다.
	private String name;
	private int age;
	private String phoneNum;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getPhoneNum() {
		return phoneNum;
	}
	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}
	@Override
	public String toString() {
		return "디버그용 memberVO [name=" + name + ", age=" + age + ", phoneNum=" + phoneNum + "]";
	}
	
}
//이 서비스 클래스에서는 회원 출력에 관련된 매서드를 모아 놓습니다.(아래)
class MemberService {
	public void printMember(MemberVO[] members) {
		//서비스 구현메서드 내용(아래) 향상된 for 반복문 사용
		int cnt=0;
		for(MemberVO member:members) {
			cnt = cnt + 1;
			System.out.println(cnt + "번째 레코드는" + member.toString());
		}
	}
}
public class Step2 {

	public static void main(String[] args) {
		MemberVO memberVO = new MemberVO();//자바오브젝트 저장소라고 보면됨
		memberVO.setName("홍길동");
		memberVO.setAge(45);
		memberVO.setPhoneNum("000-0000-0000");
		MemberVO memberVO2 = new MemberVO();//자바오브젝트 저장소라고 보면됨
		memberVO2.setName("성춘향");
		memberVO2.setAge(18);
		memberVO2.setPhoneNum("111-1111-1111");
		MemberVO memberVO3 = new MemberVO();//자바오브젝트 저장소라고 보면됨
		memberVO3.setName("각시탈");
		memberVO3.setAge(28);
		memberVO3.setPhoneNum("222-2222-2222");
		//위 각각 3개의 레코드를  1곳에 담을 배열 클래스 오브젝트를 하나 만든다.
		MemberVO[] members = new MemberVO[3];//저장소 3개있으니까
		members[0] = memberVO;
		members[1] = memberVO2;
		members[2] = memberVO3;
		//전에 사용했던 출력보다는 개선된 방식으로 출력(아래) MemberService라는 서비스 전용 클래스를 만들어서 처리할것이다.
		MemberService memberService = new MemberService();//자바 오브젝트객체 생성하는 방법
		memberService.printMember(members);//서비스 클래스의 메서드 호출
	}

}
