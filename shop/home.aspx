<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="shop.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <meta charset="utf-8">
    <title>Store Clothing</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
        <div class="container">
            <div class="navbar">
                <div class="logo">
                    <a href=""><span style="color: red">S</span>tore</a>
                </div>
                <nav>
                    <ul class="menu">
                        <li><a href="home.aspx">Home</a></li>
                        <li><a href="product.aspx">Product</a></li>
                        <li><a href="#">Contact</a></li>
                        <li><a href="login.aspx">Account</a></li>
                    </ul>
                    <a href="file:///D:/Web/Store/Cart.html"><img src="images/giohang.png" width="27px"></a>
                </nav>
            </div>
            <div class="row">
                <div class="col-2">
                    <h1>Give Your Wardrobe<br> A New Style ! </h1>
                    <p>A place to sell great fashion products, pants, and clothes for you and your loved ones. </p>
                    <a href="" class="btn1">Explore Now &#8594;</a>
                </div>
            </div>
        </div>
    </div>


    <div class="categories">
        <div class="small-container">
            <div class="row" id ="sevices" runat="server">
                
            </div>
        </div>
    </div>

    <div class="small-container">
        <h2 class="title">FEATURED PRODUCTS</h2>
        <div class="row">
            <div class="col-4">
                <a href="file:///D:/Web/Store/Details.html">
                    <img src="images/product-7.jpg">
                </a>
                <h4>Short sleeve shirt</h4>
                <p>300.000đ</p>
            </div>
            <div class="col-4">
                <a href="file:///D:/Web/Store/Details2.html">
                    <img src="images/product-2.jpg">
                </a>
                <h4>Men's khaki pants</h4>
                <p>400.000đ</p>
            </div>
            <div class="col-4">
                <a href="file:///D:/Web/Store/Details8.html">
                    <img src="images/product-8.jpg">
                </a>
                <h4>Long sleeve shirts</h4>
                <p>300.000đ</p>
            </div>
            <div class="col-4">
                <a href="">
                    <img src="images/product-9.jpg">
                </a>
                <h4>Men's shorts</h4>
                <p>350.000đ</p>
            </div>
        </div>

        <h2 class="title">LATEST PRODUCTS</h2>
        <div class="row" runat="server" id="lates_product">
            
        </div>

        <h2 class="title">DISCOUNT PRODUCTS</h2>
        <div class="row" id="discount" runat="server">
        </div>
    </div>

    <div class="offer">
        <div class="small-container">
            <div class="row">
                <div class="col-2">
                    <img src="images/exclusive.png" class="offer-img">
                </div>
                <div class="col-2">
                    <div class="lll">
                        <h2>The store's attractive gifts</h2>
                        <h1>Smart Band 4</h1>
                        <p>Customers will have the opportunity to receive Smart Band 4 when purchasing products of the store. Good luck !</p>
                        <a href="" class="btn1">Join Now &#8594;</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <h2 class="title"> ______</h2>
    <div class="footer">
        <div class="container">
            <div class="row">
                <div class="footer-col-1">
                    <div class="logo">
                        <a href=""><span style="color: red">S</span>tore</a>
                    </div>
                </div>
                <div class="footer-col-2">
                    <p>&#9750; TP.Vinh, Nghệ An, Việt Nam</p>
                    <p>&#9990; 0985692541</p>
                    <p>&#9993; Store@gmail.com</p>
                </div>
                <div class="footer-col-3">
                    <h2>Follow us</h2>
                    <br>
                    <a href=""><img src="https://img.zohostatic.com/sites/stock-images/images/zwstock-image-22.svg" style="width:39px;height:39px;"></a>
                    <a href=""><img src="https://img.zohostatic.com/sites/stock-images/images/zwstock-image-21.svg" style="width:39px;height:39px;"></a>
                    <a href=""><img src="https://img.zohostatic.com/sites/stock-images/images/zwstock-image-19.svg" style="width:39px;height:39px;"></a>
                </div>

            </div>
        </div>
        <p style="text-align: center;">__________________________________________________________</p>
    </div>

    </form>
</body>
</html>
