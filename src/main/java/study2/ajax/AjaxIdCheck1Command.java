package study2.ajax;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import study2.StudyDAO;
import study2.StudyInterface;

public class AjaxIdCheck1Command implements StudyInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse reponse) throws ServletException, IOException {
		String mid = request.getParameter("mid")==null ? "" : request.getParameter("mid");
	
		StudyDAO dao = new StudyDAO();
		
		String name = dao.getIdSearch(mid);
		
		if(name.equals("")) {
			name = "찾는 자료가 없습니다.";
		}
		else {
			// PrintWriter out = reponse.getWriter();
			// out.println(name);
			// out.write(name);
			reponse.getWriter().write(name); 
		}
	}
}
