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

@WebServlet("/view/member/findPass.do")
public class FindPassController extends HttpServlet {
	
	private MemberMapper mapper;
	
	public FindPassController() {
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
		         message.setSubject("[제주도 어디까지 가봤니?] 임시 비밀번호 발급 안내"); 
		         
		         String name = request.getParameter("name");
		         String email = request.getParameter("email");         
		         String id = request.getParameter("id"); 
		         
		         String tempPass = "";
		         String salt = SHA256Util.generateSalt();
		         
		         if(name != "" && id != "" && email != "") {
		        	 MemberVO member = new MemberVO();
		        	 member.setName(name);
		        	 member.setEmail(email);	
		        	 member.setId(id);	
		        	 for(int i = 0; i < 8; i++) {
		        		 int val = (int)(Math.random() * 62);
		        		 if(val < 10) {
		        			 tempPass += val;
		        		 } else if(val > 35) {
		        			 tempPass += (char)(val + 61);
		        		 } else {
		        			 tempPass += (char)(val + 55);
		        		 }
		        	 }
		        	 String newPassword = SHA256Util.getEncrypt(tempPass, salt);
					 member.setPass(newPassword);
					 member.setSalt(salt);
		        	
		        	 mapper.findPass(member);
		          
		 			
		        	 // 메일 내용
		        	 message.setText(request.getParameter("name")+"님의 임시비밀번호는 "+ "'" + tempPass + "'" + " 입니다. 로그인 후 비밀번호를 변경하세요."); 
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
