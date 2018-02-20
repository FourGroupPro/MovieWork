package kr.co.daegu.ticketing;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/TicketingFrontController")
public class TicketingFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private TicketingDAO ticketingDAO;
	private TicketingDTO ticketingDTO;
	private ArrayList<TicketingDTO> ticketList;
 	
	private TicketingFrontController() {
		ticketingDAO = new TicketingDAO();
		ticketingDTO = new TicketingDTO();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 doPost(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 request.setCharacterEncoding("utf-8");
	       response.setContentType("text/html;charset=utf-8");
	       PrintWriter out = response.getWriter();
	       String requestURI  =request.getRequestURI();
	       String contextPath = request.getContextPath();
	       String command = requestURI.substring(contextPath.length());
	       if(command.equals("/ticketing.to")) {
	       String nal=request.getParameter("nal");
	       String mname = request.getParameter("mname");
	       String mtime = request.getParameter("mtime");
	       int mticket=Integer.parseInt(request.getParameter("mticket"));
	       String seatnumber = request.getParameter("seatnumber");
	       int combo1 = Integer.parseInt(request.getParameter("combo1"));
	       int combo2 = Integer.parseInt(request.getParameter("combo2"));
	       int price = Integer.parseInt(request.getParameter("price"));
	       String username=request.getParameter("username");
	       String phone=request.getParameter("phone");
	       String email=request.getParameter("email");
	       String card=request.getParameter("card");
	       
	       ticketingDTO.setNal(nal);
	       ticketingDTO.setMname(mname);
	       ticketingDTO.setMtime(mtime);
	       ticketingDTO.setMticket(mticket);
	       ticketingDTO.setSeatnumber(seatnumber);
	       ticketingDTO.setCombo1(combo1);
	       ticketingDTO.setCombo2(combo2);
	       ticketingDTO.setPrice(price);
	       ticketingDTO.setUsername(username);
	       ticketingDTO.setPhone(phone);
	       ticketingDTO.setEmail(email);
	       ticketingDTO.setCard(card);
	       ticketingDAO.ticketingInsert(ticketingDTO);
	       }
	}

}
