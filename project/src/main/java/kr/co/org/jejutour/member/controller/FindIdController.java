package kr.co.org.jejutour.member.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.org.jejutour.db.MyAppSqlConfig;
import kr.co.org.jejutour.repository.dao.MemberMapper;
import kr.co.org.jejutour.repository.vo.MemberVO;

@WebServlet("/view/member/findId.do")
public class FindIdController extends HttpServlet {
	
	private MemberMapper mapper;
	
	public FindIdController() {
		mapper = MyAppSqlConfig.getSqlSession().getMapper(MemberMapper.class);
	}
	
	public void service(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
			request.setCharacterEncoding("utf-8");
			PrintWriter out = response.getWriter();
			
			String host = "smtp.naver.com"; 
			String user = "jyjtvxq777";
			String password = "jsptest7963";      

			// SMTP 서버 정보를 설정한다. 
			Properties props = new Properties(); 
			props.put("mail.smtp.host", host); 			
			props.put("mail.smtp.auth", "true"); 
			
			Session session = Session.getDefaultInstance (
				props, new javax.mail.Authenticator () { 
					protected PasswordAuthentication getPasswordAuthentication() { 
					      return new PasswordAuthentication(user, password); 
					} 
				}); 
			
			try { 
			     MimeMessage message = new MimeMessage(session); 
			     message.setFrom(new InternetAddress(user)); 
			     message.addRecipient(Message.RecipientType.TO, new InternetAddress(request.getParameter("email"))); 
			    // 메일 제목
		         message.setSubject("[제주도 어디까지 가봤니?]에서 아이디를 알려드립니다."); 
		         
		         String name = request.getParameter("name");
		         String email = request.getParameter("email");         
		         
		         if(name != null && email != null) {
		        	 MemberVO member = new MemberVO();
		        	 member.setName(name);
		        	 member.setEmail(email);		        	 
		        	 String id = mapper.findId(member);
		        	 // 메일 내용
		        	 message.setText(request.getParameter("name")+"님의 아이디는 "+ "'" + id + "'" + " 입니다."); 
		        	 // send the message 
		        	 Transport.send(message); 
		        	 out.println(1);
		        	 System.out.println("이메일로 전송 성공"); 
		        	 
		         }
		         
					
			} catch (MessagingException e) {
				out.println(0);
				e.printStackTrace(); 
			}
		}				
	}

