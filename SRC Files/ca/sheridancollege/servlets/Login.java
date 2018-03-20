/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ca.sheridancollege.servlets;

import ca.sheridancollege.beans.Player;
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

@WebServlet("/LoginServlet")
public class Login extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
       
        HttpSession session = request.getSession();
        
        String name = request.getParameter("uname"); /** getting from html **/
        int score = 0;
        
        
        
        Player p = new Player(name, score);
        
        session.setAttribute("pName", name);
        
        session.setAttribute("Player",p);
        
        RequestDispatcher view = request.getRequestDispatcher("values.jsp");
        view.forward(request,response);
        
        
    }

    
}
