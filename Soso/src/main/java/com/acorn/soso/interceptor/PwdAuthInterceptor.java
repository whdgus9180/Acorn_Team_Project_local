package com.acorn.soso.interceptor;

import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

@Component
public class PwdAuthInterceptor implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		boolean isValid = false;
		
		//비밀번호 인증페이지가 아니라면 null값을 가질것이다.
		String isSuccess = request.getParameter("isSuccess");
		if(isSuccess != null) {
			isValid = isSuccess.equals("true") ? true : false;			
		}
		
		// 만일 비밀번호 인증을 하지 않았다면 인증 페이지로 리다이렉트 이동 시키고 false 를 리턴한다.
		if(!isValid) {
			// 원래 가려던 url 정보 읽어오기
			String url = request.getRequestURI();
			// GET 방식 전송 파라미터를 query 문자열로 읽어오기 ( a=xxx&b=xxx&c=xxx )
			String query = request.getQueryString();
			// 특수 문자는 인코딩을 해야한다.
			String encodedUrl = null;
			if (query == null) {// 전송 파라미터가 없다면
				encodedUrl = URLEncoder.encode(url);
			} else {
				// 원래 목적지가 /test/xxx.jsp 라고 가정하면 아래와 같은 형식의 문자열을 만든다.
				// "/test/xxx.jsp?a=xxx&b=xxx ..."
				encodedUrl = URLEncoder.encode(url + "?" + query);
			}

			// 인증을 하지 않았다면 /users/pwd_authform 페이지로 리다이렉트 이동 시킨다. (HttpServletResponse)
			String cPath = request.getContextPath();
			response.sendRedirect(cPath + "/users/pwd_authform?url=" + encodedUrl);
			return false;
		}

		// 인증을 했다면 흐름을 이어간다.
		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
		// TODO Auto-generated method stub

	}
}
