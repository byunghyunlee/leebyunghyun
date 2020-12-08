package kr.or.member;

public class MemberVO {
	// 보안상 이쪽으로 접근하면 안되니까 getset따로 설정한다 이건 public
	private String name;
	private int age;
	private String phoneNum;
	
	//일단 멤버변수는 private로 만들고 getset을 public으로 만들어줘서 getset에서 접근해서 데이터주고 받을 수 있도록 한다.
	//데이터는 여기로 주고 받는거다.
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
	//이건 디버그용
	@Override
	public String toString() {
		return "디버그용 memberVO [name=" + name + ", age=" + age + ", phoneNum=" + phoneNum + "]";
	}
}
