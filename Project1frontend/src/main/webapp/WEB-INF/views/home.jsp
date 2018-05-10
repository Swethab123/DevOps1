<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }
  </style>
</head>
<body>

<div id="myCarousel" class="carousel slide" data-ride="carousel">
   <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
                <li data-target="#myCarousel" data-slide-to="3"></li>
            </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
      <img  src='<c:url value="/resources/images/bag.jpg"></c:url>' alt="first slide" >
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>WELCOME TO SHOPPING CART</h1>
                            <p>Here You Can Browse And Buy. Order Now For Your Amazing New Arrivals</p>
                        </div>
                    </div>
    </div>

    <div class="item">
       <img src='<c:url value="/resources/images/jewel.jpg"></c:url>' alt="Second slide" height="50%" width="50%">
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>Jewellery of your Kind</h1>
                            <p>Online hopping can make your life more easier</p>
                        </div>
                    </div>
    </div>

    <div class="item">
      <img src='<c:url value="/resources/images/shoes.jpg"></c:url>' alt="Third slide" height="50%" width="50%">
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>Love for Shoes</h1>
                            <p>Your comfort our Solution!!</p>
                        </div>
                    </div>
    </div>
     <div class="item">
                 <!-- mvc:resources /resources/**  -> /WEB-INF/resources -->
                    <img " src='<c:url value="/resources/images/chair.jpg"></c:url>' alt="forth slide" height="50%" width="50%">
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>Furnitures That You Would Love</h1>
                            <p>Decorate Your home At the simplest!!</p>
                        </div>
                    </div>
                </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>





<li><a href='<c:url value="/all/getproducts"></c:url>'></a></li>
<div class="container" >
<c:forEach items="${productsAttr}" var="p">
<div class="col-md-4">
<a href="all/getproduct/${p.id}"><img src="<c:url value="/resources/images/${p.id }.png" />"/></a>
<p>${p.productname }</p>
<p>${p.price }</p>

 
 </div>
</c:forEach>
</div>
</body>
</html>
