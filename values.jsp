
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
  <title>Game Board </title>
  <meta charset="utf-8">
   <link href="css/main.css" rel="stylesheet" type="text/css"> <!-- external css file applied for styles -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"> <!-- external css file for fontawsome icons-->
  <link href="https://fonts.googleapis.com/css?family=Teko" rel="stylesheet">  <!-- external css file for Google fonts used to display font-->
  
     <style>
	 
	 body {
	  /** background image of the city **/
	
	
	background-color: grey;
	
} 
	 
	 h1 {
	font-size: 3em;  
	text-align: center-left;
}
	 
	main {
	background-color:white; /** creating main little bit transparent **/
	margin: 60px auto 25px;
	padding: 0 10px;
	text-align: left;
	width: 800px;  /* width of main */
	font-size: 20px;
	
}
	 


.columns {
    float: left;
    width: 150px;
    padding: 5px;
	
}

.price {
    list-style-type: none;
    border: 1px solid #eee;
    margin: 0;
    padding: 0;
    -webkit-transition: 0.3s;
    transition: 0.3s;
}

<!--
.price:hover {
    box-shadow: 0 8px 12px 0 white;
}-->

.price .header {
    background-color: #111;
    color: white;
    font-size: 25px;
}

.price li {
    border-bottom: 1px solid #eee;
    padding: 20px;
    text-align: center;
	
}

li:hover{
      box-shadow: 0 8px 12px 0 rgba(0,0,0,0.2);
}

li{
  border-bottom: 1px solid #eee
  background-color:white;
   font-size: 30px;
   color: white;
	

}

a{
  text-decoration: none;
}

a {color:white;}      /* unvisited link */
a:visited {color: darkred;}  /* visited link */
 
a:active {color:#0000FF;}  /* selected link */



.price .grey {
    background-color: #eee;
    font-size: 20px;
	color: white;
}

.button {
    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 10px 25px;
    text-align: center;
    text-decoration: none;
    font-size: 18px;
}
  </style>    
</head>

<body>
<!-- header is the top start of the web project and has orange color background  -->
 <% Player p = (Player)session.getAttribute("Player"); %>
 <% int count = 0; %>
 
 
 
 
 
 
  <header>
    <h1> Welcome  <%= p.getName() %> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;		 
		 winnings: $ ${finalScore}   </h1>           
  </header>  
  

 <main>
    
	
     <div class="columns">
       <ul class="price">
        <li class="header">BrainTeaser</li>
		<% if (session.getAttribute("TestDisable") == null)
		{%>
            <li><a href="PickServlet?question=0">$100</a> </li>
		
		<%} else{%> 
		      <li><a>$100</a> </li>
		<%}%>
		<% if (session.getAttribute("TestDisable") == null)
		{%>
          <li><a href="PickServlet?question=1">$200</a></li>
		<% count++; %>
		<%} else{%> 
		    <li><a href="#" disabled="true">$200</a> 
		<%}%>
        
        <li><a href="PickServlet?question=2">$300</a></li>
        <li><a href="PickServlet?question=3">$400</a></li>
        <li><a href="PickServlet?question=4">$500</a></li>
        <!--<li class="grey"><a href="#" class="button">Sign Up</a></li>-->
       </ul>
     </div>

     <div class="columns">
       <ul class="price">
        <li class="header">Food</li>
        <li><a href="PickServlet?question=5">$100</a></li>
        <li><a href="PickServlet?question=6">$200</a></li>
        <li><a href="PickServlet?question=7">$300</a></li>
        <li><a href="PickServlet?question=8">$400</a></li>
        <li><a href="PickServlet?question=9">$500</a></li>
        <!--<li class="grey"><a href="#" class="button">Sign Up</a></li>-->
       </ul>
     </div>

<div class="columns">
       <ul class="price">
        <li class="header">Sports</li>
        <li><a href="PickServlet?question=10">$100</a></li>
        <li><a href="PickServlet?question=11">$200</a></li>
        <li><a href="PickServlet?question=12">$300</a></li>
        <li><a href="PickServlet?question=13">$400</a></li>
        <li><a href="PickServlet?question=14">$500</a></li>
        <!--<li class="grey"><a href="#" class="button">Sign Up</a></li>-->
       </ul>
     </div>

<div class="columns">
       <ul class="price">
        <li class="header">Science</li>
        <li><a href="PickServlet?question=15">$100</a></li>
        <li><a href="PickServlet?question=16">$200</a></li>
        <li><a href="PickServlet?question=17">$300</a></li>
        <li><a href="PickServlet?question=18">$400</a></li>
        <li><a href="PickServlet?question=19">$500</a></li>
        <!--<li class="grey"><a href="#" class="button">Sign Up</a></li>-->
       </ul>
     </div>

<div class="columns">
       <ul class="price">
        <li class="header">Music</li>
        <li><a href="PickServlet?question=20">$100</a></li>
        <li><a href="PickServlet?question=21">$200</a></li>
        <li><a href="PickServlet?question=22">$300</a></li>
        <li><a href="PickServlet?question=23">$400</a></li>
        <li><a href="PickServlet?question=24">$500</a></li>
		<li>${CheckCount} ${dd}</li>
        <!--<li class="grey"><a href="#" class="button">Sign Up</a></li>-->
       </ul>
     </div>

    
  
 </main>

 
  

</body>
</html>
