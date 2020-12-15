package org.edu.dao;

import java.util.List;

import org.edu.vo.MemberVO;

/**
 * 회원관리 DAO 메서드 명세(목차) 인터페이스.
 * @author 이병현
 *
 */
public interface IF_MemberDAO {
	public List<MemberVO> selectMember() throws Exception;//jsp 향상된 forEach문 사용 jstl 태그
	public void insertMember(MemberVO memberVO) throws Exception;
	public void deleteMember(String user_id) throws Exception;
	//throws 스프링을 예외 보내면, 나중에 예외처리 전용 error.jsp를 만들어서 에러 메시지를 뿌리는사용자단을 만들사용할거다.
	//회원상세보기에 대한 결과용, jsp 사용할떄 memberVO.user_id, memberVO.user_name
	public MemberVO readMember(String user_id) throws Exception;
}
