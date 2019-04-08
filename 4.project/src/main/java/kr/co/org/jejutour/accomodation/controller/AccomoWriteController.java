package kr.co.org.jejutour.accomodation.controller;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
@WebServlet("/view/accomodation/write.do")
public class AccomoWriteController extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	System.out.println("넘어왔습니다.");
	
	String directory = "../../resources/images/accomodation/";
	
	
	
	MultipartRequest mRequest = new MultipartRequest(
			request,
			"c:/bit2019/bin/miniproject_2/4.project/src/main/webapp/resources/images/accomodation",
			1024*1024*100,
			"utf-8",
			new DefaultFileRenamePolicy()
			);
	System.out.println("파일 업로드 성공함...");

	Enumeration<String> fNames = mRequest.getFileNames();
	System.out.println(fNames.toString());
	while(fNames.hasMoreElements()) {
		String fName = fNames.nextElement();
	File f = mRequest.getFile(fName);
	if(f!=null) {
		
	String fileName = mRequest.getFilesystemName(fName);
	String path =	directory + fileName;
	System.out.println("파일 이름: " + fileName);
		System.out.println("파일경로: " + path );
	}
	}//while
	

	
	}//service
}//class
