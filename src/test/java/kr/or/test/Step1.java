package kr.or.test;
/**
 * 내장변수와 배열 사용에 대해서
 * @author 이병현
 *
 */
public class Step1 {

	public static void main(String[] args) {
		String name;
		int age;
		String phoneNum;
		
		name="홍길동";
		age=45;
		phoneNum="000-0000-0000";
				
		printMember(name, age, phoneNum);
		
		name="성춘향"; age=18; phoneNum="111-1111-1111";
		printMember(name,age,phoneNum);
		
		name="각시탈"; age=28; phoneNum="222-2222-2222";
		printMember(name,age,phoneNum);
		
		//각각쓰기 귀찮으니까 배열이라는걸 쓰자(배열은 귀찮아서 생겼다) 이름이 같아서 s붙여서 문자 다르게해줌
		String[] names = {"홍길동", "성춘향", "각시탈"};
		int[] ages = {45,18,28};
		String[] phoneNums = {"000-0000-0000","111-1111-1111","222-2222-2222"};
		printMember(names,ages,phoneNums);//메서드 같은데 이름이 다르지만 메서드 그대로 받아서 사용 오버로드형 메서드 다형성의 대표사례
	}

	private static void printMember(String[] names, int[] ages, String[] phoneNums) {
		int dataLength = names.length;// 이름 배열에 있는 사람의 명수를 구하기(String안에 length라는 사람구하는 메서드있다)
		System.out.println("매개변수로 받은  names의 사람의 명수는 : "+ names.length);
		//고전 for 문의 반복문형식은 for(초기값; 끝값=반복의조건 cnt<2; 증가값;){구현내용}
		for(int cnt=0;cnt<dataLength;cnt++) {
			System.out.println("cnt변수의 변화는 = " + cnt);
			System.out.println("배열의 이름은: "+names[cnt]+" | 나이는: "+ages[cnt]+" | 연락처는: "+phoneNums[cnt]);
		}
	}

	private static void printMember(String name, int age, String phoneNum) {
		
		System.out.println("회원의 이름은: "+name+" | 나이는: "+age+" | 연락처는: "+phoneNum);
	}

}
