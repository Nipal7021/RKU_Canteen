<%@ Page Title="" Language="C#" MasterPageFile="~/User/Site1.Master" AutoEventWireup="true" CodeBehind="About_us.aspx.cs" Inherits="RKU_Canteen.User.About_us" %>
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
    <!-- Navigation -->
        <div class="topbar">
            <div class="container">
                <nav class="nav">
                    <div class="left">
                        <a href="index.html" class="logo">
                        <img src="https://images.unsplash.com/photo-1544025162-d76694265947?w=40&h=40&fit=crop" alt="RKU Canteen Management" style="height: 40px; border-radius: 8px;"> <span class="logo-text">RKU Canteen Management</span> </a>&nbsp;</div>
                    <div class="nav-links">
                            <a href="index.aspx" class="nav-link active">Home</a> <a href="About_us.aspx" class="nav-link">About</a> <a href="menu.aspx" class="nav-link">Menu</a> <a href="Contact.aspx" class="nav-link">Contact</a>  <a href="User_Login.aspx" class="nav-link active">Login</a> <a href="User_Register.aspx" class="nav-link active">Register</a>
                    </div>
                </nav>
            </div>
        </div>
</asp:Content>
<asp:Content ID="Content6" runat="server" contentplaceholderid="ContentPlaceHolder2">
           <!-- Hero Section -->
<section class="hero">
    <div class="container">
        <div class="hero-content">
            <div class="hero-text">
                <h1>About Our Canteen</h1>
                <p class="muted">Serving fresh, homely meals and snacks since 2015.</p>
            </div>
        </div>
    </div>
</section>

<!-- About Content -->
<section class="about-content">
    <div class="container">
        <div class="grid about-grid">
            <div class="about-text">
                <h2>Our Story</h2>
                <p>Founded in 2015, RKU Canteen Management began as a small campus food service with a simple mission: serve fresh, affordable meals with exceptional hygiene and hospitality.</p>
                
                <p>We understand that your vehicle is more than just transportation—it's your freedom, your reliability, and often your livelihood. That's why we're committed to sourcing only the finest parts from reputable manufacturers and ensuring they meet our strict quality standards.</p>
                
                <h3>Our Mission</h3>
                <p>To be the most trusted and convenient source for automotive parts, providing our customers with genuine, high-quality products, expert advice, and exceptional service that keeps their vehicles running smoothly and safely.</p>
            </div>
            <div class="about-image">
                <img src="https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?w=600&h=400&fit=crop" alt="RKU Canteen Kitchen">
            </div>
        </div>
    </div>
</section>



<%--<!-- Statistics Section -->
<section class="stats-section">
    <div class="container">
        <h2>RKU Canteen by Numbers</h2>
        <div class="grid stats-grid">
            <div class="stat-item">
                <div class="stat-number">50,000+</div>
                <div class="stat-label">Happy Customers</div>
            </div>
            <div class="stat-item">
                <div class="stat-number">25,000+</div>
                <div class="stat-label">Parts in Stock</div>
            </div>
            <div class="stat-item">
                <div class="stat-number">500+</div>
                <div class="stat-label">Brands Available</div>
            </div>
            <div class="stat-item">
                <div class="stat-number">99%</div>
                <div class="stat-label">Customer Satisfaction</div>
            </div>
        </div>
    </div>
</section>

<!-- Team Section -->
<section class="team-section">
    <div class="container">
        <h2>Meet Our Team</h2>
        <div class="grid team-grid">
            <div class="card team-member">
                <div class="member-image">
                    <img src="https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=300&h=300&fit=crop&crop=face" alt="Rajesh Kumar">
                </div>
                <div class="member-info">
                    <h3>Rajesh Kumar</h3>
                    <p class="member-role">Founder & CEO</p>
                    <p class="muted">With 20+ years in automotive industry, Rajesh leads our vision of making quality parts accessible to everyone.</p>
                </div>
            </div>
            <div class="card team-member">
                <div class="member-image">
                    <img src="https://images.unsplash.com/photo-1494790108755-2616b612b786?w=300&h=300&fit=crop&crop=face" alt="Priya Sharma">
                </div>
                <div class="member-info">
                    <h3>Priya Sharma</h3>
                    <p class="member-role">Head of Operations</p>
                    <p class="muted">Priya ensures our supply chain runs smoothly and customers receive their orders on time, every time.</p>
                </div>
            </div>
            <div class="card team-member">
                <div class="member-image">
                    <img src="https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?w=300&h=300&fit=crop&crop=face" alt="Amit Patel">
                </div>
                <div class="member-info">
                    <h3>Amit Patel</h3>
                    <p class="member-role">Technical Director</p>
                    <p class="muted">Amit's expertise in automotive engineering helps us maintain the highest quality standards for all our products.</p>
                </div>
            </div>
        </div>
    </div>--%>
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

