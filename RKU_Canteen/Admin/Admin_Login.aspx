<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site2.Master" AutoEventWireup="true" CodeBehind="Admin_Login.aspx.cs" Inherits="RKU_Canteen.Admin.Admin_Login" %>
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
                            <a href="index.aspx" class="nav-link active">Home</a> <a href="User/About_us.aspx" class="nav-link">About</a> <a href="menu.aspx" class="nav-link">Menu</a> <a href="Contact.aspx" class="nav-link">Contact</a>  <a href="Admin_Login.aspx" class="nav-link active">Login</a> <a href="Admin_Register.aspx" class="nav-link active">Register</a>
                    <!-- Admin Authentication Section -->
                    <!-- Admin Link (visible for all users) -->
                        <a href="admin-login.html" class="nav-link" id="admin-link"><i class="fas fa-user-shield"></i></a>
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
                       
    <!-- Login Section -->
    <section class="auth-section">
        <div class="container">
            <div class="auth-container">
                <div class="auth-card">
                    <div class="auth-header">
                        <div class="auth-icon">
                            <i class="fas fa-user-circle"></i>
                        </div>
                        <h1>Admin Welcome Back</h1>
                        <p class="muted">Sign in to your account</p>
                    </div>

                    <form id="user-login-form" class="auth-form">
                        <div class="form-group">
                            <label for="user-email">
                                <i class="fas fa-envelope"></i>
                                Email Address
                            </label>
<%--                            <input type="email" id="user-email" name="email" required placeholder="Enter your email">--%>
                            <asp:TextBox ID="txteml" placeholder="Enter your email" runat="server"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label for="user-password">
                                <i class="fas fa-lock"></i>
                                Password
                            </label>
                            <div class="password-input">
<%--                                <input type="password" id="user-password" name="password" required placeholder="Enter your password">--%>
                                <asp:TextBox ID="txtpass" placeholder="Enter your password" runat="server"></asp:TextBox>
                                <%--<button type="button" class="password-toggle" onclick="togglePassword('user-password')">
                                    <i class="fas fa-eye"></i>
                                </button>--%>
                            </div>
                        </div>

                        <div class="form-options">
                            <label class="checkbox-label">
                                <input type="checkbox" id="remember-me" name="rememberMe">
                                <span class="checkmark"></span>
                                Remember me
                            </label>
                            <a href="#" class="forgot-password">Forgot password?</a>
                        </div>

                       <div class="form-actions">
                           <%-- <button type="submit" class="btn auth-btn">
                                <i class="fas fa-sign-in-alt"></i>
                                Sign In
                            </button>--%>
                                <asp:Button ID="Button1" class="btn auth-btn" runat="server" Text="Sign In" OnClick="Button1_Click" />

                        </div>

                    </form>

                    <div class="auth-divider">
                        <span>or</span>
                    </div>

                    <div class="social-login">
                        <button class="btn ghost social-btn">
                            <i class="fab fa-google"></i>
                            Continue with Google
                        </button>
                        <button class="btn ghost social-btn">
                            <i class="fab fa-facebook-f"></i>
                            Continue with Facebook
                        </button>
                    </div>

                    <div class="auth-footer">
                        <p>Don't have an account? <a href="Admin_Register.aspx">Sign up here</a></p>
                    </div>

<%--                    <div class="demo-info">
                        <h4><i class="fas fa-info-circle"></i> Login Information</h4>
                        <div class="demo-accounts">
                            <div class="demo-account">
                                <strong>Dynamic Login:</strong>
                                <p>You can use <strong>any email and password combination</strong> to login.</p>
                                <p>If the email is not registered, a temporary user profile will be created.</p>
                                <p>For registered users, the correct password is required.</p>
                            </div>
                        </div>
                    </div>--%>
                </div>
            </div>
        </div>
    </section>
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

