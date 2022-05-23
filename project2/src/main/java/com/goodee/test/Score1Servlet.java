package com.goodee.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Score1Servlet
 */

// score1.do는 선생님, score.do는 내가
//http://127.0.0.1:8080/project2/score1.do?user=홍길동&kor=20&eng=10&mat=20
@WebServlet("/score1.do")
public class Score1Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Score1Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		// import 단축키 ctrl + shift + o
		PrintWriter out = response.getWriter();
		
		// 클ㄹ아이언트로부터 정보 받기
		String name = request.getParameter("name");
		String kor = request.getParameter("kor");
		String eng = request.getParameter("eng");
		String mat = request.getParameter("mat");
		
		int total = Integer.parseInt(kor) + Integer.parseInt(eng) + Integer.parseInt(mat);
		float avg = total/3.0f;  
		// int/int 나누면 결과가 int이다.
		// 소수점 이하의 값을 얻고 싶으면 둘 중 하나는 실수이어야 한다.
		// 자바는 3.0을 double로 상수로 인식해서 float 변수 = total/3.0 일때 에러가 발생한다.
		// double가 float보다 메모리가 2배 커서 데이터 손실이 발생함, float형 상수는 값 뒤에 f를 붙인다.
		String result = String.format("<h1>%s님의 총점은 %d이고 평균은 %.2f입니다.</h1>", name, total, avg);
		// %s - String, %d - decimal(정수) %f - float(실수)   .2f는 소수점이하 2자리수까지 의미
		
//		out.println("<html>");
//		out.println("<meta charset='utf-8'>");
//		out.println("<body>");
//		out.println(result);
//		out.println("</body>");
//		out.println("</html>");
		
		
		// 사용자가 form태그 없이 request 객체에 정보를 저장할때는 setAttribute 함수를 사용한다.
		// 데이터를 읽을때는 getAttribute 함수를 사용한다.
		// 서블릿 통해서 jsp호출
		request.setAttribute("name", name);
		request.setAttribute("kor", kor);
		request.setAttribute("eng", eng);
		request.setAttribute("mat", mat);
		request.setAttribute("result", result);
		
		// jsp를 호출한다.
		RequestDispatcher dispatcher = 
				request.getRequestDispatcher("/score1result.jsp");
		dispatcher.forward(request, response); // 정보를 그대로 jsp페이지로 이동한다.

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
