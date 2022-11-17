package edu.kh.project.common.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

// 필터 등록 + 필터링할 주소 맵핑
@WebFilter(filterName = "LoginFilter",
			urlPatterns = {"/member/myPage/*", "/member/logout"}) // 웹필터 어노테이션 : 해당클래스가 필터로 등록되게 만들어주고, 어떤 요청 주소를 필터링 할지를 지정 할 수 있다.
			// 필터링한 요청 주소 (패턴 가능)
public class LoginFilter implements Filter {

//    public LoginFilter() { // 기본생성자는 컴파일 할 때 자동으로 생성되므로 클래스에서 주석처리
//    }
	
	public void init(FilterConfig fConfig) throws ServletException {
		// 필터 생성 시 수행
		System.out.println("로그인 필터 생성");
	}

	public void destroy() {
		// 서버 실행 중 필터 내용 변경 시 수행 후 init() 다시 수행
		System.out.println("로그인 필터 파괴");
	}

	
	// HTTP가 없는 ServletRequest/ServletResponse는 다형성이 적용된 부모형태(다운캐스팅 필요)
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		// doFilter가 실제로 필터링 하는 메서드 작성
		// 필터는 클라이언트의 요청이 되자마자
		// 또는 응답이 되기 직전에 필터링 코드를 추가할 수 있는 기능
		
		// 다운캐스팅 진행
		HttpServletRequest req = (HttpServletRequest)request;
		HttpServletResponse resp = (HttpServletResponse)response;
		
		// 로그인 여부 확인
		// -> session에 loginMember가 있는지 확인
		HttpSession session = req.getSession();
		
		if(session.getAttribute("loginMember") == null){ // 로그인 X
			
			resp.sendRedirect("/"); // 메인페이지로 리다이렉스
			
		}else { // 로그인 O
		
			// 연결된 다음 필터로 이동 (없으면 Servlet / JSP로 이동)
		chain.doFilter(request, response);
	}

}
}

