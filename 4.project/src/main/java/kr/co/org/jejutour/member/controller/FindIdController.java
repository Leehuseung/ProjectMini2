package kr.co.org.jejutour.member.controller;

import java.io.IOException;
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

@WebServlet("/view/member/findId.do")
public class FindIdController extends HttpServlet {
	public void service(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {

			String host = "smtp.naver.com"; // 네이버일 경우 네이버 계정, gmail경우 gmail 계정 
			String user = "jyjtvxq777"; // 패스워드 
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
				     message.addRecipient(Message.RecipientType.TO, new InternetAddress("ktko@ktko.com")); 
				    // 메일 제목
			         message.setSubject("[제주도 어디까지 가봤니?]아이디를 알려드립니다."); 
					// 메일 내용
			         message.setText(request.getParameter("name")+"님의 아이디는"); 
					// send the message 
					 Transport.send(message); 
					 System.out.println("Success Message Send"); 
					
			} catch (MessagingException e) { 
				e.printStackTrace(); 
			}
		}				
	}

