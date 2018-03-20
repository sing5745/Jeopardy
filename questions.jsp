

<%@page import="ca.sheridancollege.beans.*"%>
<%@page import="QUES.Ques"%>
<%@page import="QuestionBank.Questions"%>
<!DOCTYPE html>
<html lang="en">
<!--
Author:Inderpreet Singh
File name: template.html
Version:1.0
Date Created: 24th march,2017
Date modified :
description:
 the home page for assignment 3
  -->
<head>  
  <title>Questions </title>
  <meta charset="utf-8">
   <link href="css/main.css" rel="stylesheet" type="text/css"> <!-- external css file applied for styles -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"> <!-- external css file for fontawsome icons-->
  <link href="https://fonts.googleapis.com/css?family=Teko" rel="stylesheet">  <!-- external css file for Google fonts used to display font-->
  
     <style>
	   body {
	  /** background image of the city **/
	
	font-family: 'Teko', sans-serif;
	background-color: black;
	
} 
  main {
	 /** creating main little bit transparent **/
	margin: 100px auto 25px;
	padding: 0 30px;
	text-align: left;
	width: 640px;  /* width of main */
	color:orange;
}

p {
    font-size: 40px;
	}

	a{
	  font-size:20px;
	  }
	  
 button  {
  -webkit-box-sizing: content-box;
  -moz-box-sizing: content-box;
  box-sizing: content-box;
  width: 300px;
  height: 40px;
  cursor: pointer;
  margin: 0 auto;
  border: 2px solid rgb(30,205,151);
  -webkit-border-radius: 40px;
  border-radius: 20px;
  font-size: 30px;
  font-family: "Agency FB";
  color: rgb(30, 205, 151);
  text-align: center;
  -o-text-overflow: clip;
  text-overflow: clip;
  letter-spacing: 1px;
  background: rgba(0,0,0,0);
  -webkit-transition: background-color 0.3s cubic-bezier(0, 0, 0, 0), color 0.3s cubic-bezier(0, 0, 0, 0), width 0.3s cubic-bezier(0, 0, 0, 0), border-width 0.3s cubic-bezier(0, 0, 0, 0), border-color 0.3s cubic-bezier(0, 0, 0, 0);
  -moz-transition: background-color 0.3s cubic-bezier(0, 0, 0, 0), color 0.3s cubic-bezier(0, 0, 0, 0), width 0.3s cubic-bezier(0, 0, 0, 0), border-width 0.3s cubic-bezier(0, 0, 0, 0), border-color 0.3s cubic-bezier(0, 0, 0, 0);
  -o-transition: background-color 0.3s cubic-bezier(0, 0, 0, 0), color 0.3s cubic-bezier(0, 0, 0, 0), width 0.3s cubic-bezier(0, 0, 0, 0), border-width 0.3s cubic-bezier(0, 0, 0, 0), border-color 0.3s cubic-bezier(0, 0, 0, 0);
  transition: background-color 0.3s cubic-bezier(0, 0, 0, 0), color 0.3s cubic-bezier(0, 0, 0, 0), width 0.3s cubic-bezier(0, 0, 0, 0), border-width 0.3s cubic-bezier(0, 0, 0, 0), border-color 0.3s cubic-bezier(0, 0, 0, 0);
}

button:hover {
  color: rgba(255,255,255,1);
  background: rgb(30, 205, 151);
}

button:active {
  border: 2px solid rgba(33,224,163,1);
  background: rgba(33,224,163,1);
  -webkit-transition: none;
  -moz-transition: none;
  -o-transition: none;
  transition: none;
}
	
  </style>    
</head>

<body>
<!-- header is the top start of the web project and has orange color background  -->
  
  <% Player p = (Player)session.getAttribute("Player"); %>
  
  
  <header>
    <h1> Welcome  <%= p.getName() %> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;		 
		 winnings:  ${finalScore}   </h1>           <!--  h1 has a font size of 3.9 em and h2 of 2.5 em;  -->
  </header> 
  

 <main>
    
	<form action="Answer">
	<table  align="center">
	  <tr>
	    <td colspan="2" align="center"><p>${currentQuestion}</p></td>
			  </tr>
	  <tr>
	    <td><button name="userAns" value="${answer1}" class="btn success" type="submit">${answer1}</button> </td>
		<td><button name="userAns" value="${answer2}" class="btn success" type="submit">${answer2}</button></td>
	  </tr>
	  <tr>
	    <td><button name="userAns" value="${answer3}"  class="btn success"type="submit">${answer3}</button></td>
		<td><button name="userAns" value="${answer4}" class="btn success"type="submit">${answer4}</button></td>
	  </tr>
	  <tr><td></td></tr> 
	  <tr>
	     <td colspan="2" align="right"> <a href="Answer?userAns=skip">Skip</a> </td>
	  </tr>
	</table>
	</form>
     
           
  
 </main>

  

</body>
</html>
