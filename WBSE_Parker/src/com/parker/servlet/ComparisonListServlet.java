package com.parker.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.example.type.HistoryObject;

@WebServlet("/ComparisonListServlet.do")
public class ComparisonListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ComparisonListServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {// store the name and id
		HttpSession session = request.getSession();
		ArrayList<HistoryObject> compareList;
		
		HistoryObject history = new HistoryObject();

		if(session.getAttribute("compareList")==null){
			compareList = new ArrayList<HistoryObject>();
		}else{
			compareList = (ArrayList<HistoryObject>) session.getAttribute("compareList");
		}
		
		boolean addFlag = true;
		for(int i =0;i<compareList.size();++i){
			if(compareList.get(i).getId().equals(request.getParameter("id"))){
				addFlag = false;
				break;
			}
			System.out.println(compareList.get(i).getId());
		}
		
		System.out.println(session.getAttribute("compareList"));
		history.setId((String)request.getParameter("id"));
		history.setName((String)request.getParameter("name"));

		if(addFlag)
			compareList.add(history);

		session.setAttribute("compareList", compareList);
		response.sendRedirect("https://alex100433.cartodb.com/viz/c1d5ed3a-36f4-11e6-aa6b-0ecfd53eb7d3/embed_map");

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
