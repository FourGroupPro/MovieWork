package kr.co.daegu.manager;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("*.manager")
public class ManagerFrontControllServlet extends HttpServlet {
   private static final long serialVersionUID = 1L;
       managerDTO mdto;
       managerDAO mdao; 
    public ManagerFrontControllServlet() {
       mdto = new managerDTO();
       mdao = new managerDAO();
    }

   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
   doPost(request, response);
   }

   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
   request.setCharacterEncoding("utf-8");
   response.setContentType("text/html; charset=utf-8");
   PrintWriter out = response.getWriter();
   String requestURI = request.getRequestURI();
   String contextPath = request.getContextPath();
   String command = requestURI.substring(contextPath.length());
   if (command.equals("/Register.manager")) {//���
      String id = request.getParameter("id");
      String pw = request.getParameter("pw");
      String pwsh = request.getParameter("pwsh");
      String lv = request.getParameter("lv");
      String part = request.getParameter("part");
      String name = request.getParameter("name");
      mdto.setId(id);
      mdto.setPw(pw);
      mdto.setPwsh(pwsh);
      mdto.setLv(lv);
      mdto.setPart(part);
      mdto.setName(name);
      mdao.managerRegister(mdto);
      out.print("��ϵǾ����ϴ�.");
      response.sendRedirect("template.jsp");
   }//���
   
   
   else if(command.equals("/idcheck.manager")) {//���̵� �ߺ�����
      String id = request.getParameter("id");
      mdto.setId(id);
      boolean idcheck = mdao.managerIdCheck(mdto);
      if(idcheck==true) {
         out.print("���̵� �̹� ������Դϴ�.");
      }else {
         out.print("���̵� ��� �����մϴ�.");
      }
      out.print("<input type='button' value='����' onClick='self.close()'>");
   }//���̵� �ߺ�����
   
   
   else if(command.equals("/idSearch.manager")) {//���̵�ã��
      String name = request.getParameter("name");
      String part = request.getParameter("part");
      mdto.setName(name);
      mdto.setPart(part);
      String id = mdao.managerIdSearch(mdto);
      if(id==null) {
         out.print("�̸��̳� �μ��� �߸��Ǿ����ϴ�.");
      }else {
         out.print("ã���ô� ���̵��="+id+"�Դϴ�.");
      }
      out.print("<input type='button' value='����' onClick='self.close()'>");
   }//���̵�ã��
   
   
   else if(command.equals("/pwSearch.manager")) {//��й�ȣ ã��
      String id = request.getParameter("id");
      String name = request.getParameter("name");
      String part = request.getParameter("part");
      mdto.setId(id);
      mdto.setName(name);
      mdto.setPart(part);
      String pw = mdao.managerPwSearch(mdto);
      if(pw==null) {
         out.print("id�� �̸��̳� �μ��� �߸��Ǿ����ϴ�.");
      }else {
         out.print("ã���ô� ��й�ȣ��"+pw+"�Դϴ�.");
      }
      out.print("<input type='button' value='����' onClick='self.close()'>");
   }//��й�ȣ ã��
   
   
   else if(command.equals("/loginform.manager")) {//�α���
      HttpSession session = request.getSession(false);
      String id = request.getParameter("id");
      String pw = request.getParameter("pw");
      mdto.setId(id);
      mdto.setPw(pw);
      boolean login=mdao.managerLogin(mdto);
      if(login==true) {
         session.setAttribute("id",id);
         System.out.println(session.getAttribute("id"));
         response.sendRedirect("template.jsp?page=Manager_Main");
      }else {
         response.sendRedirect("template.jsp?page=managerLogin");
      }
   }//�α���
   
   
   else if(command.equals("/logout.manager")) {//�α׾ƿ�
      HttpSession session = request.getSession(false);
      session.removeAttribute("id");
      response.sendRedirect("template.jsp");
   }//�α׾ƿ�
   
   
   else if(command.equals("/updateView.manager")) {//����view
      String id = request.getParameter("id");
      String pw = request.getParameter("pw");
      String pwsh = request.getParameter("pwsh");
      String lv = request.getParameter("lv");
      String name = request.getParameter("name"); 
      String part = request.getParameter("part");
      mdto.setId(id);
      mdto.setPw(pw);
      mdto.setPwsh(pwsh);
      mdto.setLv(lv);
      mdto.setName(name);
      mdto.setPart(part);
      mdao.managerUpdate(mdto);
      response.sendRedirect("template.jsp?page=managerLogin");
   }//����view
   else if(command.equals("/update.manager")) {//����
      HttpSession session = request.getSession(false);
      String id = (String) session.getAttribute("id");
      mdto.setId(id);
      System.out.println();
      mdto=mdao.managerUpdateView(mdto);
      RequestDispatcher dis = request.getRequestDispatcher("template.jsp?page=managerUpdate2");
      request.setAttribute("mdto", mdto);
      dis.forward(request, response);
   }
   else if(command.equals("/delete.manager")) {//����
      HttpSession session = request.getSession(false);
      String id = (String) session.getAttribute("id");
      mdto.setId(id);
      mdao.managerLeave(mdto);
      session.removeAttribute("id");
      response.sendRedirect("template.jsp");
   }//����
  }
}