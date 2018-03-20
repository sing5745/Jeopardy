<%@page import="ca.sheridancollege.beans.*"%>
<!DOCTYPE html>
<html>
<title>Win </title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<style>
body,h1 {font-family: "Raleway", sans-serif}
body, html {height: 100%}
.bgimg {
    background-image: url('images/jeopardy2.jpg');
    min-height: 100%;
    background-position: center;
    background-size: cover;
}
audio{
	display: none;
}

img.avatar {
    width: 20%;
    border-radius: 50%;
}

</style>
<body>

<% Player p = (Player)session.getAttribute("Player"); %>



<div class="bgimg w3-display-container w3-animate-opacity w3-text-white">
  <div class="w3-display-topleft w3-padding-large w3-xlarge">
    <img src="images/jeopardy.png" alt="Avatar" class="avatar">
  </div>
  <div class="w3-display-middle">
  <% if ((Integer)session.getAttribute("finalScore") > 0 )
		{%>
            <h1 class="w3-jumbo w3-animate-top" style="color: white;">Congratulations <%= p.getName() %></h1>
		    <audio controls autoplay>
			  <source src="audio/correct.mp3" type="audio/mp3">
			</audio>
		<%}else{%> 
		    <h1 class="w3-jumbo w3-animate-top" style="color: white;">Do Better Next Time <%= p.getName() %></h1>
		<%}%>
    
    
    <hr class="w3-border-grey" style="margin:auto;width:40%">
    <h2 class="w3-large w3-center">You Scored ${finalScore}</h2>
  </div>
  <div class="w3-display-bottomleft w3-padding-large">
    Powered by <a href="https://www.w3schools.com/w3css/default.asp" target="_blank">w3.css</a>
  </div>
</div>

</body>
</html>
