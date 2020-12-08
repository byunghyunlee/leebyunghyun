package kr.or.member;

public class MemberVO {
	// 멤버변수 만들기(아래)
	private String name;
	private int age;
	private String phoneNum;
	
	//멤버변수 만들기,일단 멤버변수는 private 로만들고 getset을 public으로 만들어줘서 getset에서 접근해서 데이터주고 받을 수 있도록 한다.
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
