<%@ Page Title="" Language="C#" MasterPageFile="~/User/Site1.Master" AutoEventWireup="true" CodeBehind="User_Login.aspx.cs" Inherits="RKU_Canteen.User.User_Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content5" runat="server" contentplaceholderid="ContentPlaceHolder1">
                <!DOCTYPE html>
    <html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0"><title>Canteen - Fresh Meals & Beverages</title>
        <link rel="icon" type="image/svg+xml" href="images/icons/favicon.svg">
        <link rel="stylesheet" href="css/style.css">
        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    </head>
    <body>
<%--    <!-- Navigation -->
        <div class="topbar">
            <div class="container">
                <nav class="nav">
                    <div class="left">
                        <a href="index.html" class="logo">
                        <img src="https://images.unsplash.com/photo-1544025162-d76694265947?w=40&h=40&fit=crop" alt="RKU Canteen Management" style="height: 40px; border-radius: 8px;"> <span class="logo-text">RKU Canteen Management</span> </a>&nbsp;</div>
                    <div class="nav-links">
                        <a href="index.html" class="nav-link active">Home</a> <a href="about.html" class="nav-link">About</a> <a href="menu.html" class="nav-link">Menu</a> <a href="contact.html" class="nav-link">Contact</a> <a href="pages.html" class="nav-link">Pages</a>
                    </div>
                </nav>
            </div>
        </div>--%>
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
                        <h1>Welcome Back</h1>
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
                        <p>Don't have an account? <a href="User_Register.aspx">Sign up here</a></p>
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
    <%--            <!-- Footer -->
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
    </footer>--%>

</body>
</html>
<script>
  // Update Add to Cart buttons to reflect selected quantity (e.g., 3 → 4)
  document.addEventListener('DOMContentLoaded', function() {
    // Update cart badge on load
    try {
      const badge = document.getElementById('cart-count');
      if (badge) {
        const c = JSON.parse(localStorage.getItem('cart')||'[]');
        const n = c.reduce((s,i)=>s+(i.qty||0),0);
        badge.textContent = n;
      }
    } catch(_){}
    document.querySelectorAll('.add-to-cart').forEach(function(btn){
      const targetId = btn.getAttribute('data-target');
      const input = document.getElementById(targetId);
      function sync() { const q = Math.max(1, Math.min(10, parseInt(input.value||'1',10))); btn.textContent = `Add ${q} to Cart`; }
      if (input) {
        input.addEventListener('input', sync);
        input.addEventListener('change', sync);
        sync();
      }

      // Save to localStorage and jump to cart
      btn.addEventListener('click', function(e){
        e.preventDefault();
        const card = btn.closest('.product-card');
        const name = card.querySelector('h3')?.textContent?.trim() || 'Item';
        const priceText = card.querySelector('.product-price')?.textContent?.replace(/[^0-9]/g,'') || '0';
        const price = parseInt(priceText, 10) || 0;
        const img = card.querySelector('.product-image img')?.src || '';
        const qty = parseInt((input && input.value) || '1', 10) || 1;
        const cart = JSON.parse(localStorage.getItem('cart') || '[]');
        const existing = cart.find(i => i.name === name);
        if (existing) { existing.qty += qty; } else { cart.push({ name, price, qty, image: img }); }
        localStorage.setItem('cart', JSON.stringify(cart));
        localStorage.setItem('lastAdded', name);
        window.location.href = 'cart.html';
      });
    });
  });
</script>

            </asp:Content>

