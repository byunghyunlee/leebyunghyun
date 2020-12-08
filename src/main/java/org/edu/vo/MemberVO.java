
//1. 멤버변수 선언(클래스 전역변수)
//private: 클래스 내부에서만 사용가능, 보안때문에.
//int가 기본형이면 -> 참조형은  Integer 
//차이점은 int는 null 불가능, Integer는 null가능
//이 말의 의미는  member_write.jsp에서 전송값이 point가 빈값으로 오면
//int형은 에러가 난다. Integer는 에러가 발생하지 않는다.
//date클래스형 변수를 사용 할떄는 java.util패키지를 import한다.
//get,set 메서드가 필요한 이유는 member_list.jsp(리스트든 라이트든간에)<-get,set메서드->컨트롤러->get,set메서드<-DB
//컨트롤러를 중심으로 데이터 왔다갔다하기 위해서 get,set메서드 필요하다.

package org.edu.vo;
import java.util.Date;


/**
 * 회원정보관리용 클래스
 * @author 이병현 2020-12-04 생성
 *
 */

public class MemberVO {
	private String user_id;
	private String user_pw;
	private String user_name;
	private String email;
	private Integer point;
	private Boolean enabled;
	private String levels;
	private Date reg_date;
	private Date update_date;
	
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_pw() {
		return user_pw;
	}
	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Integer getPoint() {
		return point;
	}
	public void setPoint(Integer point) {
		this.point = point;
	}
	public Boolean getEnabled() {
		return enabled;
	}
	public void setEnabled(Boolean enabled) {
		this.enabled = enabled;
	}
	public String getLevels() {
		return levels;
	}
	public void setLevels(String levels) {
		this.levels = levels;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	public Date getUpdate_date() {
		return update_date;
	}
	public void setUpdate_date(Date update_date) {
		this.update_date = update_date;
	}			
	
	@Override
	public String toString() {
		return "디버그 MemberVO [user_id=" + user_id + ", user_pw=" + user_pw + ", user_name=" + user_name + ", email=" + email
				+ ", point=" + point + ", enabled=" + enabled + ", levels=" + levels + ", reg_date=" + reg_date
				+ ", update_date=" + update_date + "]";
	}
}
