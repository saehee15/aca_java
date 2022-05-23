package com.goodee.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class userServlet
 */
@WebServlet("/user.do")
public class userServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public userServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		request.setCharacterEncoding("utf-8"); // 순서도 중요하네, PrintWriter 밑에 쓰니까 인코딩 안되고 글씨 깨짐
		response.setCharacterEncoding("utf-8");
		
		String user = request.getParameter("user");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		
		PrintWriter out = response.getWriter();
		
		out.println("<html>");
		out.println("<meta charset='UTF-8'>");
		out.println("<body>");
		out.println(String.format("<h1>%s님의 전화번호는 %s이고 이메일은 %s입니다.</h1>", user, phone, email));
		out.println("<h1>"+ user +"님의 전화번호는" +phone + "이고 이메일은" + email +"입니다.</h1>");
		out.println("</body>");
		out.println("</html>");
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
