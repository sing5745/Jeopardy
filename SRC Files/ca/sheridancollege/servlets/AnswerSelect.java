/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ca.sheridancollege.servlets;

import QUES.Ques;
import QuestionBank.Questions;
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
@WebServlet("/Answer")
public class AnswerSelect extends HttpServlet {
  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        
        
        
        int count;
        int skipCount;
        
        if (session.getAttribute("CheckCount") == null)
        {
            count = 0;
        }
        else{
          count = (Integer)session.getAttribute("CheckCount");
        }
        
        
        if (session.getAttribute("SkipCount") == null)
        {
            skipCount = 0;
        }
        else{
          skipCount = (Integer)session.getAttribute("SkipCount");
        }
        
       /** From jsp **/ 
       
                  String ua = request.getParameter("userAns");

       

       /** From pick question servlet session atttr **/
       String rightAns = session.getAttribute("answer").toString();
       
       /** From session attr pick ques **/
       
         int sc;  
        if(session.getAttribute("userValueDailyDouble") == null){
            sc = (Integer)session.getAttribute("userScore");
        }
        else{
           sc = (Integer)session.getAttribute("userValueDailyDouble");
        }
        
         
        
       
         Player pScore = (Player)session.getAttribute("Player");
       
       
         int uScore = pScore.getScore();
         
         
      
      
      if ( ua != null )
      {
       if (ua.equals(rightAns)){    
           
             int fc = uScore + sc ;
          
            
               pScore.setScore(fc);
           
             
          
          session.setAttribute("finalScore", fc);     /** For displaying on jsp **/
          session.setAttribute("Player", pScore);    
          count++;
       }
       else if (ua.equals("skip")){
           int fc = uScore + 0;
           pScore.setScore(fc);
           session.setAttribute("finalScore", fc);     /** For displaying on jsp **/
           session.setAttribute("Player", pScore);    
           count++;
           skipCount++;
       }
       else{
           int fc = uScore - sc;
          
               pScore.setScore(fc);
           
           
           session.setAttribute("finalScore", fc);     /** For displaying on jsp **/
           session.setAttribute("Player", pScore);   
           count++;
       }
       
      }
       
       if (count == 25 || skipCount == 3)
       {
         RequestDispatcher view = request.getRequestDispatcher("win.jsp");
         view.forward(request,response); 
       }
       
      
       session.setAttribute("TestDisable",null);
       session.setAttribute("dd",sc); 
       session.setAttribute("CheckCount", count);
       session.setAttribute("SkipCount", skipCount);
       
        RequestDispatcher view = request.getRequestDispatcher("values.jsp");
        view.forward(request,response);
      
    }


    
}
