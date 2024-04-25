package study.j0424;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/Ex2Ok")
public class Ex2Ok extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		request.setCharacterEncoding("utf-8");
		
		int su1 = Integer.parseInt(request.getParameter("su1"));
		int su2 = Integer.parseInt(request.getParameter("su2"));
		String name = request.getParameter("name");
		
		int tot = getTot(su1, su2);
		// int tot = su1 + su2;
		
		System.out.println("tot : " + tot);
		
		PrintWriter out = response.getWriter();
		
		out.println("<p><a href='/javaclass/study/0424/ex2ok.jsp?name="+name+"&su1="+su1+"&su2="+su2+"&tot="+tot+"'>돌아가기</a></p>");
	}

	private int getTot(int su1, int su2) {
		return su1 + su2;
	}
}
