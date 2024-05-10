package study2.mapping;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Test5SearchOkCommand implements Test5Interface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("이곳은 Test5SearchOkCommand 입니다.");
		System.out.println("이곳에서는 가입한 회원의 정보를 검색합니다.");
		
		String message = "찾으시는 자료를 검색합니다.";
		request.setAttribute("message", message);
		request.setAttribute("url", "test5.do5");
	}

}
