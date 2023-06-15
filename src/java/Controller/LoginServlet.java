/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Entity.Account;
import dao.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author Hades
 */
public class LoginServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        processRequest(request, response);
        Cookie arr[] = request.getCookies();
        for (Cookie o : arr) {
            if (o.getName().equals("userC")) {
                request.setAttribute("username", o.getValue());
            }
            if (o.getName().equals("passC")) {
                request.setAttribute("password", o.getValue());
            }
        }
        request.getRequestDispatcher("login.jsp").forward(request, response);
//        Cookie arr[] = request.getCookies();
//        for (Cookie o : arr) {
//            if (o.getName().equals("user")) {
//                request.setAttribute("username", o.getValue());
//            }
//            if (o.getName().equals("password")) {
//                request.setAttribute("password", o.getValue());
//            }
//        }
//        request.getRequestDispatcher("login.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        processRequest(request, response);
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String remember = request.getParameter("remember");
        DAO dao = new DAO();
        Account acc = dao.Login(username, password);
        if (acc == null) {
            request.setAttribute("username", username);
            request.setAttribute("mess", "Wrong username or password!");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        } else {
            // save to session
            HttpSession session = request.getSession();
            session.setAttribute("account", acc);
            session.setMaxInactiveInterval(2 * 60 * 60);
            // save to cookies
            Cookie u = new Cookie("userC", username);
            Cookie p = new Cookie("passC", password);
            u.setMaxAge(60 * 60 * 24 * 365);
            if (remember != null) {
                p.setMaxAge(60 * 60 * 24 * 365);
            } else {
                p.setMaxAge(0);
            }
            response.addCookie(u);
            response.addCookie(p);  

            response.sendRedirect("/Attire/");
        }
//        String username = request.getParameter("username");
//        String password = request.getParameter("password");
//        String remember = request.getParameter("remember");
//        DAO dao = new DAO();
//        Account acc = dao.Login(username, password);
//        if (acc == null) {
//            request.setAttribute("username", username);
//            request.setAttribute("mess", "Wrong username or password!");
//            request.getRequestDispatcher("login.jsp").forward(request, response);
//        } else {
//            // save to session
//            HttpSession session = request.getSession();
//            session.setAttribute("account", acc);
//            session.setMaxInactiveInterval(2 * 60 * 60);
//            // save to cookies
//            Cookie u = new Cookie("user", username);
//            Cookie p = new Cookie("password", password);
//            u.setMaxAge(60 * 60 * 24 * 365);
//            if (remember != null) {
//                p.setMaxAge(60 * 60 * 24 * 365);
//            } else {
//                p.setMaxAge(0);
//            }
//            response.addCookie(u);
//            response.addCookie(p);
//
//            response.sendRedirect("/Attire/");
//        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
