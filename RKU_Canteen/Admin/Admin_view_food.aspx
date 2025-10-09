<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site2.Master" AutoEventWireup="true" CodeBehind="Admin_view_food.aspx.cs" Inherits="RKU_Canteen.Admin.Admin_view_food" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content5" runat="server" contentplaceholderid="ContentPlaceHolder1">
                <!DOCTYPE html>
    <html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0"><title>Admin Dashboard - Canteen</title>
        <link rel="stylesheet" href="css/style.css">
        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    </head>
    <body>
    <!-- Navigation -->
        <div class="topbar">
            <div class="container">
                <nav class="nav">
                    <div class="left">
                        <a href="index.html" class="logo"><span class="logo-text">Canteen</span> </a>
                    </div>
                    <div class="nav-links">
                        <a href="index.html" class="nav-link">Home</a> <a href="about.html" class="nav-link">About</a> <a href="menu.html" class="nav-link">Menu</a> <a href="contact.html" class="nav-link">Contact</a> <a href="pages.html" class="nav-link">Pages</a>
                    
                    <!-- Admin Authentication Section -->
                    <!-- Admin Link (visible for all users) -->
                        <a href="admin-login.html" class="nav-link" id="admin-link"><i class="fas fa-user-shield"></i>Admin </a>
                        <div class="user-auth" id="user-auth">
                            <div class="user-dropdown" style="display: block;">
                                <button class="user-menu-btn" id="user-menu-btn">
                                    <i class="fas fa-user-shield"></i><span class="user-name">Admin</span> <i class="fas fa-chevron-down"></i>
                                </button>
                                <div class="user-menu" id="user-menu">
                                    <div class="user-menu-header">
                                        <div class="user-avatar">
                                            <i class="fas fa-user-shield"></i>
                                        </div>
                                        <div class="user-info">
                                            <strong>Administrator</strong>
                                            <div class="muted">
                                                Admin Dashboard</div>
                                        </div>
                                    </div>
                                    <div class="user-menu-items">
                                        <a href="admin-dashboard.html" class="user-menu-item"><i class="fas fa-tachometer-alt"></i><span>Dashboard</span> </a>
                                        <div class="menu-divider">
                                        </div>
                                        <button class="user-menu-item logout-btn" onclick="adminLogout()">
                                            <i class="fas fa-sign-out-alt"></i><span>Logout</span>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
</asp:Content>
<asp:Content ID="Content6" runat="server" contentplaceholderid="ContentPlaceHolder2">
   <center>
     <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" CellPadding="3" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" GridLines="Both" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
         <FooterStyle BackColor="White" ForeColor="#000066" />
         <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
         <ItemStyle ForeColor="#000066" />
         <ItemTemplate>
             <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Food_Image") %>' Height="100" Width="100" />
             <br>
             <br>
             <br>
             <br></br>
             Food Name:
             <asp:Label ID="Label1" runat="server" Text='<%# Eval("Food_name") %>'></asp:Label>
             <br>
             <br>
             Food Price:
             <asp:Label ID="Label2" runat="server" Text='<%# Eval("Food_Price") %>'></asp:Label>
             <br>
             <br>
         </ItemTemplate>
         <SelectedItemStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
     </asp:DataList>
     </center>
            </asp:Content>
<asp:Content ID="Content7" runat="server" contentplaceholderid="ContentPlaceHolder3">
                 <!-- Footer -->
    <footer class="footer">
        <div class="container">
            <div class="footer-content">
                <div class="footer-section">
                    <h3>RKU Canteen Management</h3>
                    <p class="muted">
                        Delicious meals, quick service.</p>
                </div>
                <div class="footer-section">
                    <h4>Quick Links</h4>
                    <ul>
                        <li><a href="index.html">Home</a></li>
                        <li><a href="products.html">Products</a></li>
                        <li><a href="cart.html">Cart</a></li>
                    </ul>
                </div>
                <div class="footer-section">
                    <h4>Contact</h4>
                    <p class="muted">
                        Email: hello@rkucanteen.local</p>
                    <p class="muted">
                        Phone: +91 98765 43210</p>
                </div>
            </div>
            <div class="footer-bottom">
                <p class="muted">
                    &copy; 2025 RKU Canteen Management. All rights reserved.</p>
            </div>
        </div>
    </footer>

    <script src="js/validation.js"></script>
</body>
</html>

            </asp:Content>

