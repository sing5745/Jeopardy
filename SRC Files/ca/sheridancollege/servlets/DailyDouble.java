/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ca.sheridancollege.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Inder
 */
@WebServlet(name = "DailyDouble", urlPatterns = {"/DailyDouble"})
public class DailyDouble extends HttpServlet {
    


    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        
         String uValue = request.getParameter("uDaily");
        
        int v = Integer.parseInt(uValue);
        
        if ((Integer) session.getAttribute("finalScore") != null)
        {
            if (v <= (Integer) session.getAttribute("finalScore")
                    && (int) session.getAttribute("CheckCount") > 1) {

                session.setAttribute("userValueDailyDouble", v);

            }
            
            
        }
        
       
        
        
        
        
        RequestDispatcher view = request.getRequestDispatcher("questions.jsp");
        view.forward(request,response);
    }

   
}
