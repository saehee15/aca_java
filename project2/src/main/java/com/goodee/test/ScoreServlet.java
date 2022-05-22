package com.goodee.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ScoreServlet
 */

//http://127.0.0.1:8080/project2/score.do?user=홍길동&kor=20&eng=10&mat=20
@WebServlet("/score.do")
public class ScoreServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ScoreServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		PrintWriter out = response.getWriter();
		
		
		// 클라이언트로부터 값을 받아 오는 방법
		String name = request.getParameter("user"); 
		int kor = Integer.parseInt(request.getParameter("kor")); 
		int eng = Integer.parseInt(request.getParameter("eng")); 
		int mat = Integer.parseInt(request.getParameter("mat")); 
		int total = kor + eng + mat ;
		int avg = (kor + eng + mat)/3;
		
		out.println("<html>");
		out.println("<meta charset='UTF-8'>");
		out.println("<body>");
		out.println("<h1>"+ name +"님의 총점은" +total + "이고 평균은" + avg +"입니다.</h1>");
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
