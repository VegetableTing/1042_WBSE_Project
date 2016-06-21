package com.example;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class RecordServlet
 */
@WebServlet("/RecordServlet")
public class RecordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RecordServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int serialNumber = Integer.parseInt(request.getParameter("serialNumber"));
		
		HttpSession session = request.getSession();
		ArrayList<News> newList = (ArrayList<News>) session.getAttribute("newsList");

		News newsHistory = new News();
		ArrayList<News> newsHistoryList;
		
		newsHistoryList = (session.getAttribute("newsHistoryList")==null? 
				new ArrayList<News>():(ArrayList<News>)session.getAttribute("newsHistoryList"));
		
		for(News e : newList){
			if(serialNumber == e.getSerialNumber()){
				newsHistory = e;
				newsHistoryList.add(e);
				break;
			}
		}
		
		System.out.println(newsHistoryList);
		
		session.setAttribute("newsHistoryList", newsHistoryList);
		
		response.sendRedirect(newsHistory.getUrl());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
