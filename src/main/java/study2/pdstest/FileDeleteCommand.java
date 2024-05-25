package study2.pdstest;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import study2.StudyInterface;

public class FileDeleteCommand implements StudyInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse reponse) throws ServletException, IOException {
		String fileName = request.getParameter("fileName")==null ? "" : request.getParameter("fileName");
		
		String realPath = request.getServletContext().getRealPath("/images/pdstest/"); //뒤에 / 뺴는 실수 많이 함(경로명 실수)
		
		File file = new File(realPath+fileName);
		
		String res = "0";
		if(file.exists()) {
			file.delete();
			res = "1";
		}
		
		reponse.getWriter().write(res);
	}

}
