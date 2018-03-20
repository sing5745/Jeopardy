/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ca.sheridancollege.servlets;

import QUES.Ques;
import QuestionBank.Questions;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;
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
@WebServlet("/PickServlet")
public class PickQuestion extends HttpServlet {


    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
         HttpSession session = request.getSession();
        
        String q = request.getParameter("question");
        
        int i;
        if (q != null) //To catch errors
        {    
          i = Integer.parseInt(q);
        }
        else{
           i = 0;
        }
        
        
        //Testing for daily doubles 
        if (i == generateRandom() || 
                i == generateRandom() ||
                i == generateRandom() || 
                i == generateRandom() &&
                (int)session.getAttribute("CheckCount") > 1)
        {
            RequestDispatcher view = request.getRequestDispatcher("dailydouble.jsp");
            view.forward(request,response); 
        }
        
        
        Questions ques = Ques.getQ(i);
        
        
       
        /** Using to display current question selected **/
        session.setAttribute("currentQuestion", ques.getQuestion());
        
        
        session.setAttribute("TestDisable",q);
        session.setAttribute("userValueDailyDouble",null);
        session.setAttribute("answer1", ques.getAns1());
        session.setAttribute("answer2", ques.getAns2());
        session.setAttribute("answer3", ques.getAns3());
        session.setAttribute("answer4", ques.getAns4());
        session.setAttribute("answer", ques.getAns());
        
        
        
        session.setAttribute("userScore", ques.getValue());
       
        
        RequestDispatcher view = request.getRequestDispatcher("questions.jsp");
        view.forward(request,response);
        
    }

     public static int generateRandom(){
    Random r = new Random();
    int Low = 0;
    int High = 25;
    int Result = r.nextInt(High-Low) + Low;
    
    return Result;
  }    

}
