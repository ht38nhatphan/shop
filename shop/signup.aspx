<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="shop.signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <title>Account-Store</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    <form id="form1" runat="server">
          <div class="header1">
        <div class="container">
            <div class="navbar">
                <div class="logo">
                    <a href="home.aspx"><span style="color: red">S</span>tore</a>
                </div>
                <nav>
                    <ul>
                        <li><a href="home.aspx">Home</a></li>
                        <li><a href="product.aspx">Product</a></li>
                        <li><a href="#">Contact</a></li>
                        <li><a href="login.aspx">Account</a></li>
                    </ul>
                    <a href="file:///D:/Web/Store/Cart.html"><img src="images/giohang.png" width="27px"></a>
                </nav>
            </div>
        </div>
    </div>
    <h2 class="title">ACCOUNT</h2>
    <div class="account-page">
        <div class="col-2">
            <div class="form-account1">
                <div class="form-btn1">
                    <h1>SignUp</h1>
                </div>
                <div id="LoginForm1">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    <input runat="server" type="text" class="form-control-input" id="cname" placeholder="Name" required>
                    <input runat="server" type="text" class="form-control-input" id="cemail" placeholder="Email" required>
                    <input runat="server" type="password" class="form-control-input" id="cpass" placeholder="Password" required>
                    <div class="cterms">
                        <!-- <input type="checkbox" checked="">I agree all statements in terms of service -->
                    </div>
                    <asp:Button class="btn" id="sumit2_click" runat="server" Text="Sign Up" OnClick="sumit2_click_Click" />
                 
                    <p class="text-center">I'm already a member! <a data-toggle="tab" href="login.aspx">login</a></p>
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
