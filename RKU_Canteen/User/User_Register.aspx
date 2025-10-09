<%@ Page Title="" Language="C#" MasterPageFile="~/User/Site1.Master" AutoEventWireup="true" CodeBehind="User_Register.aspx.cs" Inherits="RKU_Canteen.User.User_Register" %>
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
   <%-- <!-- Navigation -->
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
                 <!-- Register Section -->
    <section class="auth-section">
        <div class="container">
            <div class="auth-container">
                <div class="auth-card">
                    <div class="auth-header">
                        <div class="auth-icon">
                            <i class="fas fa-user-plus"></i>
                        </div>
                       <h1>Create Account</h1>
                        <p class="muted">Join Rk Canteen today</p>
                    </div>

                    <form id="user-register-form" class="auth-form">
                        <div class="form-row">
                            <div class="form-group">
                                <label for="first-name">
                                    <i class="fas fa-user"></i>
                                    First Name
                                </label>
                                <asp:TextBox ID="txtnm" name="firstName"  placeholder="Enter first name" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="last-name">
                                    <i class="fas fa-user"></i>
                                    Last Name
                                </label>
                                <asp:TextBox ID="txtlnm"  name="lastName"  placeholder="Enter last name" runat="server"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="register-email">
                                <i class="fas fa-envelope"></i>
                                Email Address
                            </label>
                            <asp:TextBox ID="txteml" name="email"  placeholder="Enter your email" runat="server"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label for="phone-number">
                                <i class="fas fa-phone"></i>
                                Phone Number
                            </label>
                            <asp:TextBox ID="txtnum"  name="phone"  placeholder="Enter phone number" runat="server" ></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label for="register-password">
                                <i class="fas fa-lock"></i>
                                Password
                            </label>
                            <div class="password-input">
                                <asp:TextBox ID="txtpass" name="password"  placeholder="Create a password" runat="server"></asp:TextBox>
                               <%-- <button type="button" class="password-toggle" onclick="togglePassword('register-password')">
                                    <i class="fas fa-eye"></i>
                                </button>--%>
                            </div>
                           <%-- <div class="password-strength">
                                <div class="strength-bar">
                                    <div class="strength-fill"></div>
                                </div>
                                <span class="strength-text">Password strength</span>
                            </div>
                        </div>--%>

                        <div class="form-group">
                            <label for="confirm-password">
                                <i class="fas fa-lock"></i>
                                Confirm Password
                            </label>
                            <div class="password-input">
<%--                                <input type="password" id="confirm-password" name="confirmPassword" required placeholder="Confirm your password">--%>
                                <asp:TextBox ID="txtcpass" name="confirmPassword"  placeholder="Confirm your password" runat="server"></asp:TextBox>
                             <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpass" ControlToValidate="txtcpass" ErrorMessage="please enter both same password...."></asp:CompareValidator>

                                <%--<button type="button" class="password-toggle" onclick="togglePassword('confirm-password')">
                                    <i class="fas fa-eye"></i>
                                </button>--%>
                            </div>
                        </div>

                       

                        
                        <div class="form-actions">
                          
                            <asp:Button ID="submit" class="btn auth-btn" runat="server" Text="Create Account" OnClick="Button1_Click" />
                        </div>
                    </form>

                    <div class="auth-divider">
                        <span>or</span>
                    </div>

                    <div class="social-login">
                       
                        <asp:Button ID="Button2"  class="btn ghost social-btn" runat="server" Text="Sign up with Google" />
                        <asp:Button ID="Button3" class="btn ghost social-btn" runat="server" Text="Sign up with Facebook" />
                    </div>

                    <div class="auth-footer">
                        <p>Already have an account? <a href="User_login.aspx">Sign in here</a></p>
                    </div>
                </div>
            </div>
        </div>
    </section>


    

</asp:Content>
<asp:Content ID="Content7" runat="server" contentplaceholderid="ContentPlaceHolder3">
             <%--   <!-- Footer -->
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

