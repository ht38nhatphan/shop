<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="shop.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <title>Account-Store</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <style>
        .form-account #LoginForm {
            max-width: 400px;
            padding: 0 20px;
            position: absolute;
            top: 130px;
        }

            .form-account #LoginForm .text-center {
                font-size: 15px;
                color: #111;
            }

            .form-account #LoginForm a {
                font-size: 15px;
                color: #FF6600;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="header1">
            <div class="container">
                <div class="navbar">
                    <div class="logo">
                        <a href="file:///D:/Web/Store/Home.html"><span style="color: red">S</span>tore</a>
                    </div>
                    <nav>
                        <ul>
                            <li><a href="home.aspx">Home</a></li>
                            <li><a href="product.aspx">Product</a></li>
                            <li><a href="#">Contact</a></li>
                            <li><a href="login.aspx">Account</a></li>
                        </ul>
                        <a href="file:///D:/Web/Store/Cart.html">
                            <img src="images/giohang.png" width="27px"></a>
                    </nav>
                </div>
            </div>
        </div>
        <h2 class="title">ACCOUNT</h2>
        <div class="account-page">
            <div class="col-2">
                <div class="form-account">
                    <div class="form-btn">
                        <h1>Login</h1>
                    </div>
                    <div id="LoginForm">
                        <input runat="server" type="text" id="email" placeholder="Email" >
                        <input runat="server" type="password" id="pass" placeholder="Password" >
                        <asp:Button  class="btn" id="sumit1" runat="server" Text="Login" OnClick="login_click"/>
                        
                        <p class="text-center">Not a member? <a data-toggle="tab" href="signup.aspx">Sign Up</a></p>
                        <asp:Label ID="Label1" runat="server" Text="Labedsdsl"></asp:Label>
                    </div>

                </div>

            </div>
        </div>


        <div class="footer">
            <div class="container">
                <div class="row">
                    <div class="footer-col-1">
                        <div class="logo">
                            <a href="home.aspx"><span style="color: red">S</span>tore</a>
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
                        <a href="">
                            <img src="https://img.zohostatic.com/sites/stock-images/images/zwstock-image-22.svg" style="width: 39px; height: 39px;"></a>
                        <a href="">
                            <img src="https://img.zohostatic.com/sites/stock-images/images/zwstock-image-21.svg" style="width: 39px; height: 39px;"></a>
                        <a href="">
                            <img src="https://img.zohostatic.com/sites/stock-images/images/zwstock-image-19.svg" style="width: 39px; height: 39px;"></a>
                    </div>

                </div>
            </div>
            <p style="text-align: center;">__________________________________________________________</p>
        </div>


    </form>
</body>
</html>
