package org.edu.controller;

//스프링에서 사용가능한 클래스를 빈이라고 하고, @Controller클래스를 사용하면 됨.
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminController {
	
	@RequestMapping(value="/admin/board/board_list", method=RequestMethod.GET)
	public String board_list() {
		return "admin/board/board_list";
	}
	
	@RequestMapping(value="admin/member/member_write", method=RequestMethod.POST)
	public String member_write_do() {
		//아래 GET방식 폼 출력 화면에서 전송된 데이터를 처리하는 바인딩 영역(do)
		//리다이렉트는 글쓰기 후 새로고침을 이용한 게시판 테러를 방지하는 목적
		return "redirect:/admin/member/member_list";//절대경로로 처리된 이후에 이동할 URL주소를 여기에 반환
	}
	
	@RequestMapping(value="admin/member/member_write", method=RequestMethod.GET)
	public String member_write() {
		return "admin/member/member_write";
	}
	
	@RequestMapping(value="admin//member/member_view", method=RequestMethod.GET)
	public String member_view() {
		return "admin/member/member_view";
	}
	
	@RequestMapping(value="/admin/member/member_list", method=RequestMethod.GET)
	public String member_list() {
		return "admin/member/member_list";
	}
	
	//bind:묶는다는 의미, /admin 요청경로와  admin/home.jsp를 묶는다는 의미
	@RequestMapping(value="/admin", method=RequestMethod.GET)
	public String admin() {
		return "admin/home";//views/admin/home.jsp 와 바인딩
	}
	
}
