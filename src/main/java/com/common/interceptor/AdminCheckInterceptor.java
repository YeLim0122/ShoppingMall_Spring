package com.common.interceptor;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.user.model.UserVO;

import lombok.extern.log4j.Log4j;

// servlet.context.xml에 빈 등록하고 매핑

/*
 * Interceptor
 *  - 컨트롤러가 실행되기 전에 사전 처리할 일이 있으면 
 *    스프링에서는 인터셉터에서 구현한다.
 *  - 구현 방법
 *  1. 인터셉터 구현
 *     [1] HandlerInterceptor인터페이스를 상속받는 방법
 *     [2] HandlerInterceptorAdapter 추상클래스를 상속받는 방법
 *      
 *  2. 인터셉터 등록 => servlet-context.xml에서 등록하고 매핑 정보를 설정
 *  <interceptors>
		<interceptor>
			<mapping path="/admin/**" />
			<beans:bean class="com.common.interceptor.AdminCheckInterceptor" />
		</interceptor>
	</interceptors>
 */

@Log4j
public class AdminCheckInterceptor extends HandlerInterceptorAdapter{

	@Override
	public boolean preHandle(HttpServletRequest req, HttpServletResponse res,
							Object handler) throws Exception {
		log.info("AdminCheckInterceptor preHandle()..");
		
		HttpSession session = req.getSession();
		UserVO user = (UserVO)session.getAttribute("loginUser");
		if (user != null) {
			if (user.getMstate() != 9) {	// mstate: 0 (일반), 1(정지), 2(탈퇴), 9(관리자)
				req.setAttribute("msg", "관리자만 이용 가능합니다.");
				req.setAttribute("loc", req.getContextPath()+"/index");
				
				RequestDispatcher disp = req.getRequestDispatcher("/WEB-INF/views/message.jsp");
				disp.forward(req, res);
				
				return false;	// 관리자가 아닌 경우
			}
			
		}
		
		return true;
	}
	
}
