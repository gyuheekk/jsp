package study.j0425;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/j0425/T08Ok")
public class T08Ok extends HttpServlet {
@Override
protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	response.setContentType("text/html; charset=utf-8");
	request.setCharacterEncoding("utf-8");
	
	String images = request.getParameter("images");
	
	PrintWriter out = response.getWriter();
	
	out.println("<p><a href='"+request.getContextPath()+"/study/0425/t08_이미지숙제.jsp'>돌아가기</a></p>");
	}

}
