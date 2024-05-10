package study2.mapping;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("*.do5")
public class Test5Controller extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Test5Interface command = null;
		String viewPage = "/WEB-INF/study2/mapping/";
		
		String uri = request.getRequestURI();
		
		String com = uri.substring(uri.lastIndexOf("/")+1, uri.lastIndexOf("."));
		
		if(com.equals("test5")) {
			viewPage += "test5.jsp";
		}
		else if(com.equals("list5")) {
			command = new Test5ListCommand();
			command.execute(request, response);
			viewPage += "list5.jsp";
		}
		else if(com.equals("input5")) {
			viewPage += "input5.jsp";
		}
		else if(com.equals("input5Ok")) {
			command = new Test5InputOkcommand();
			command.execute(request, response);
			viewPage = "/include/message.jsp";
		}
		else if(com.equals("update5")) {
			command = new Test5UpdateCommand();
			command.execute(request, response);
			viewPage += "update5.jsp";
		}
		else if(com.equals("update5Ok")) {
			command = new Test5UpdateOkcommand();
			command.execute(request, response);
			viewPage = "/include/message.jsp";
		}
		else if(com.equals("delete5")) {
			command = new Test5DeleteCommand();
			command.execute(request, response);
			viewPage += "delete5.jsp";
		}
		else if(com.equals("delete5Ok")) {
			command = new Test5DeleteOkCommand();
			command.execute(request, response);
			viewPage = "/include/message.jsp";
		}
		else if(com.equals("search5")) {
			viewPage += "search5.jsp";
		}
		else if(com.equals("search5Ok")) {
			command = new Test5SearchOkCommand();
			command.execute(request, response);
			viewPage = "/include/message.jsp";
		}
		
	
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
	
	}
}
