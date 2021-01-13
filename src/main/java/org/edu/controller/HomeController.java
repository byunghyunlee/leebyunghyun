package org.edu.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.edu.vo.BoardVO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 앱을 위한 홈페이지 요청(request)을 처리한다(아래).
 * http://localhost:8080/ 요청을 받았을때, 변수를 만들어서 크롬화면 또는 콘솔에 뿌려준다.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	//전역 홈페이지에서 스프링 진입전 발생하는 에러 페이지 처리
	@RequestMapping(value="/home/error/404",method=RequestMethod.GET)
	public String error404() throws Exception {		
		return "home/error/404";
	}
	//사용자 홈페이지 게시판 상세보기 매핑
	@RequestMapping(value="/home/board/board_view",method=RequestMethod.GET)
	public String board_view() throws Exception {
		
		return "home/board/board_view";
	}
	
	//사용자 홈페이지 게시판 쓰기 매핑(POST) 오버로드(매개변수의 개수 또는 타입이 틀린)메서드이용
	//jsp에서 board_write메서드를 호출합니다. ->호출할때 폼의 필드값을 컨트롤러 보냅니다.
	//컨트롤러에서 받을때 사용하는 매개변수가 BoardVO boardVO입니다.
	//위에서 받은 boardVO를 DAO에서 받아서 DB테이블에 쿼리명령으로 입력합니다.
	//post는 jsp폼에서 서밋할때 전송하는 방식(숨겨서 전송하는 방식)-GET으로하면 브라우저 URL에 노출되어서 전송
	@RequestMapping(value="/home/board/board_write",method=RequestMethod.POST)
	public String board_write(BoardVO boardVO) throws Exception {
		//위에서 받은 boardVO를 서비스로 보내기.
		return "redirect:/home/board/board_view";
	}
	//사용자 홈페이지 게시판 쓰기 매핑(GET) jsp폼에 접근하는 url방식(get) 폼만보여주는 역할
	@RequestMapping(value="/home/board/board_write",method=RequestMethod.GET)
	public String board_write() throws Exception {
		
		return "home/board/board_write";
	}
	
	// 사용자 홈페이지 게시판 리스트 매핑
	@RequestMapping(value="/home/board/board_list",method=RequestMethod.GET)
	public String board_list() throws Exception {
		
		return "home/board/board_list";
	}
	
	//사용자 홈페이지 회원 마이페이지 접근 매핑
	@RequestMapping(value="/member/mypage",method=RequestMethod.GET)
	public String mypage() throws Exception{
		
		return "home/member/mypage";
	}
	
	//사용자 홈페이지 회원가입 접근 매핑
	@RequestMapping(value="/join",method=RequestMethod.GET)
	public String join() throws Exception{
		
		return "home/join";
	}
		
	//사용자 홈페이지 루트(최상위) 접근 매핑
	@RequestMapping(value="/",method=RequestMethod.GET)
	public String home() throws Exception{
		
		return "home/home";
	}
	
		
}
