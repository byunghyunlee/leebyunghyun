package kr.or.member;

//IOException 의 쓰레기 목록(예외처리한거)
import java.io.IOException;
import java.net.InetAddress;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.Date;

import org.apache.commons.net.ntp.NTPUDPClient;
import org.apache.commons.net.ntp.TimeInfo;

import kr.or.member.MemberService;
import kr.or.member.MemberVO;

public class MainController {
											//IOException이라는 쓰레기통(예외처리 쓰레기통
	public static void main(String[] args) throws IOException {
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
	
		//이곳에서 서버시간 가져올거다(서버시간을 가져올 수 있는 commons-net이라는 라이브러리를  추가해야한다 이거는 (maven dependencies)에 생성될것이다. 
		//추가할때는 pom.xml에서 dependency 찾아라
		NTPUDPClient timeClient = new NTPUDPClient();
		timeClient.setDefaultTimeout(1000);//네트워크로 서버시간을 가져올때, 응답이 없이 접속 시간이 1초를 넘기면, 재접속하라는 말이다.
		timeClient.open();
		InetAddress address = InetAddress.getByName("pool.ntp.org");//서버를 가져올 주소이다.
		TimeInfo timeInfo = timeClient.getTime(address);//서버시간이 timeIfo에 담겼다. 변수는 카멜로 작성
		long returnTime = timeInfo.getMessage().getTransmitTimeStamp().getTime(); //TimeStamp는 1970년부터 초단위로 계산된 현재까지의 초를 합친결과 값이다.
		//초 단위로 결과가 나올테니까 이제 알아볼수있는 시간으로 변환하쟈
		Date nowDate = new Date(returnTime);
		//System.out.println("현재 서버시간은 " + nowDate);//결과가 잘 나오지만 영어로 나온다.
		//SimpleDateFormat formatDate = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		//System.out.println("현재시간은-한국버전" + formatDate.format(nowDate));
		LocalDateTime localDateTime = nowDate.toInstant()//DateFormat말고 다른형태인 locaDateTime을 써보쟈
				.atZone(ZoneId.systemDefault())
				.toLocalDateTime();
		System.out.println("Server 시간 : " + localDateTime);
		System.out.println("로컬PC 시간 : " + localDateTime.now());
	}

}
