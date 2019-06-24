package kr.co.org.jejutour.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

public class EncodingFilter implements Filter{
	private String charset;
	
	@Override
	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
			throws IOException, ServletException {
		// 요청 방식이 POST 방식일 경우 파라미터 인코딩 추가
		HttpServletRequest request = (HttpServletRequest)req;
		if (request.getMethod().equalsIgnoreCase("post")) {
			request.setCharacterEncoding(charset);
		}
		chain.doFilter(req, res);
	}
	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		charset = filterConfig.getInitParameter("charset");		
	}
	
	
}
