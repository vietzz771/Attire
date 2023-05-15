/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package Controller;

import Entity.Cart;
import Entity.Category;
import Entity.Item;
import Entity.Product;
import dao.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;

/**
 *
 * @author Hades
 */
public class ShopController extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
//        try (PrintWriter out = response.getWriter()) {
//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet ShopController</title>");  
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet ShopController at " + request.getContextPath () + "</h1>");
//            out.println("</body>");
//            out.println("</html>");
//        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
//        processRequest(request, response);
        DAO pd = new DAO();
        String indexPage = request.getParameter("index");
        if (indexPage == null) {
            indexPage = "1";
        }

        int index = Integer.parseInt(indexPage); // ep kieu

        int count = pd.getTotalProduct();
        int endPage = count / 9;
        if (count % 9 != 0) {
            endPage++;
        }
        
        List<Product> list = pd.getListProduct();
        Cookie[] arr = request.getCookies();
        String txt ="";
        if (arr != null) {
            for (Cookie o : arr) {
                if (o.getName().equals("cart")) {
                    txt += o.getValue();
                }
            }
        }
        Cart cart = new Cart(txt, list);
        List<Item> listItem = cart.getItems();
        int n ;
        if (listItem != null ){
            n = listItem.size();
        }else {
            n = 0;
        }
//        String num = Integer.toString(n);
//        Cookie u = new Cookie("num", num);
//        response.addCookie(u);
        request.setAttribute("n", n);
        List<Category> listCategory = pd.getListCategory();
        request.setAttribute("listCategory", listCategory);
        List<Product> listProduct = pd.paging(index);
        request.setAttribute("listProduct", listProduct);
        request.setAttribute("endP", endPage);
        request.setAttribute("tag", index);
        request.setAttribute("count", count);
        request.getRequestDispatcher("shop.jsp").forward(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
//        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
