<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
<style>
    body, html {
    height: 100%;
}

/* The hero image */
.hero-image {
  /* Use "linear-gradient" to add a darken background effect to the image (photographer.jpg). This will make the text easier to read */
  background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url("../images/car3.jpg");

  /* Set a specific height */
  height: 20%;

	
  /* Position and center the image to scale nicely on all screens */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}

/* Place text in the middle of the image */
.hero-text {
	font-family: "Lucida Console", Courier, monospace;
  text-align: center;
  position: absolute;
  top: 52%;
  left: 50%;
  transform: translate(-50%, -50%);
  color: white;
  font-size: 25px;
}


    </style>
</head>
<body>
    <div class="hero-image">
  <div class="hero-text">
    <h1>Helmentz Car Shop</h1><sub>....Drives You To The Future!</sub>
    <p>V.I.P Road, Kaikhali, Kolkata</p>
  </div>
</div>
</body>
</html>