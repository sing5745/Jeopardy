<%@page import="ca.sheridancollege.beans.*"%>
<%@page import="QUES.Ques"%>
<%@page import="QuestionBank.Questions"%>
<!DOCTYPE html>
<html>
<title>Daily Double</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<style>

body{
	background-color: black;
}

body,h1 {font-family: "Raleway", sans-serif}

h1{
	color: white;
}

button{
	color: black;
	font-family: "Agency FB";
	font-size: 20px;
	background-color: white;
	border-radius: 50%;
	width: 85px;
	
}

img {
    width: 40%;
    border-radius: 50%;
    background: red;
    position: relative;
    -webkit-animation: mymove 5s infinite; /* Safari 4.0 - 8.0 */
    animation: mymove 5s 1;
}



/* Standard syntax */
@keyframes mymove {
    0%   {top: 0px;}
    35%  {top: 200px;}
}

audio{
	display: none;
}

</style>




</style>
<body>
     
	  <% Player p = (Player)session.getAttribute("Player"); %>
	 
   <form align="center" action="DailyDouble">
       <div class="imgcontainer">
		 <img src="images/double.png" alt="Avatar" class="avatar">
       </div>

  <div class="container">
             <h1> Your Winnings: ${finalScore} </h1>
            <audio controls autoplay>
			  <source src="audio/daily_double.mp3" type="audio/mp3">
			</audio>
	 
        <h1><b>Enter amount for daily double</b></h1>
        <input type="text"  name="uDaily" required>

          <br> <br>
        
        <button type="submit">Let's Go</button>
        
  </div>

  
</form>


</body>
</html>
