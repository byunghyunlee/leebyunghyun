package kr.or.member;

import kr.or.member.MemberVO;

public class MemberService {
	public void printMember(MemberVO[] members) {//이 members가 이제 for문 안으로 들어간다.
		//서비스 구현메서드 내용(아래) 향상된 for 반복문 사용
		int cnt=0;
		for(MemberVO member:members) {//각멤버:멤버들 이제 0부터 돌아간다.
			cnt = cnt + 1;
			System.out.println(cnt + "번째 레코드는" + member.toString());
		}
	}
}

//비지니스 로직에서 처리하는 내용은 데이터를 가공한다.
//데이터를 가공한다는 거는 select가져오기,insert입력하기,update수정하기
//delete삭제하기 => CRUD를 구현하는 내용