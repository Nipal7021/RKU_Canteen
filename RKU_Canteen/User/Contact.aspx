<%@ Page Title="" Language="C#" MasterPageFile="~/User/Site1.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="RKU_Canteen.User.Contact" %>
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
                                      <a href="index.aspx" class="nav-link active">Home</a> <a href="About_us.aspx" class="nav-link">About</a> <a href="menu.aspx" class="nav-link">Menu</a> <a href="Contact.aspx" class="nav-link">Contact</a> <a href="User_Login.aspx" class="nav-link active">Login</a> <a href="User_Register.aspx" class="nav-link active">Register</a>
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
                <h1>Contact Us</h1>
                <p class="muted">Questions about orders, catering, or feedback? We’re here to help.</p>
            </div>
        </div>
    </div>
</section>

<!-- Contact Content -->
<section class="contact-content">
    <div class="container">
        <div class="grid contact-grid">
            <!-- Contact Form -->
            <div class="contact-form-section">
                <div class="card">
                    <h2>Send us a Message</h2>
                    <form class="contact-form" id="contactForm">
                        <div class="form-row">
                            <div class="form-group">
                                <label for="firstName">First Name *</label>
                                <input type="text" id="firstName" name="firstName" required>
                            </div>
                            <div class="form-group">
                                <label for="lastName">Last Name *</label>
                                <input type="text" id="lastName" name="lastName" required>
                            </div>
                        </div>
                        
                        <div class="form-row">
                            <div class="form-group">
                                <label for="email">Email Address *</label>
                                <input type="email" id="email" name="email" required>
                            </div>
                            <div class="form-group">
                                <label for="phone">Phone Number</label>
                                <input type="tel" id="phone" name="phone">
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label for="subject">Subject *</label>
                            <select id="subject" name="subject" required>
                                <option value="">Select a subject</option>
                                <option value="product-inquiry">Product Inquiry</option>
                                <option value="order-support">Order Support</option>
                                <option value="technical-help">Technical Help</option>
                                <option value="warranty-claim">Warranty Claim</option>
                                <option value="partnership">Partnership Opportunity</option>
                                <option value="other">Other</option>
                            </select>
                        </div>
                        
                        <div class="form-group">
                            <label for="message">Message *</label>
                            <textarea id="message" name="message" rows="6" placeholder="Please describe your inquiry in detail..." required></textarea>
                        </div>
                        
                        <button type="submit" class="btn btn-primary">
                            <i class="fas fa-paper-plane"></i>
                            Send Message
                        </button>
                    </form>
                </div>
            </div>

            <!-- Contact Information -->
            <div class="contact-info-section">
                <div class="contact-info">
                    <h2>Get in Touch</h2>
                    <p class="muted">We're here to help! Reach out to us through any of the following channels:</p>
                    
                    <div class="contact-item">
                        <div class="contact-icon">
                            <i class="fas fa-map-marker-alt"></i>
                        </div>
                        <div class="contact-details">
                            <h3>Visit Our Canteen</h3>
                            <p>123 Campus Canteen Road<br>
                            Rk University,Rajkot 400001<br>
                            India</p>
                        </div>
                    </div>
                    
                    <div class="contact-item">
                        <div class="contact-icon">
                            <i class="fas fa-phone"></i>
                        </div>
                        <div class="contact-details">
                            <h3>Call Us</h3>
                            <p>Main: +91 98765 43210<br>
                            Support: +91 98765 43211<br>
                            Mon-Sat: 9:00 AM - 7:00 PM</p>
                        </div>
                    </div>
                    
                    <div class="contact-item">
                        <div class="contact-icon">
                            <i class="fas fa-envelope"></i>
                        </div>
                        <div class="contact-details">
                            <h3>Email Us</h3>
                            <p>General: hello@canteen.local<br>
                            Support: support@canteen.local<br>
                            Catering: catering@canteen.local</p>
                        </div>
                    </div>
                    
                    <div class="contact-item">
                        <div class="contact-icon">
                            <i class="fas fa-clock"></i>
                        </div>
                        <div class="contact-details">
                            <h3>Business Hours</h3>
                            <p>Monday - Friday: 9:00 AM - 7:00 PM<br>
                            Saturday: 9:00 AM - 5:00 PM<br>
                            Sunday: Closed</p>
                        </div>
                    </div>
                </div>

                <!-- FAQ Section -->
                <div class="faq-section">
                    <h3>Frequently Asked Questions</h3>
                    <div class="faq-item">
                        <h4>How long does shipping take?</h4>
                        <p>Standard delivery takes 3-5 business days. Express delivery is available for urgent orders.</p>
                    </div>
                    <div class="faq-item">
                        <h4>Do you offer warranties?</h4>
                        <p>Yes, all our parts come with manufacturer warranties. Extended warranties are available for select products.</p>
                    </div>
                    <div class="faq-item">
                        <h4>Can I return a part?</h4>
                        <p>We accept returns within 30 days of purchase for unused parts in original packaging.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Map Section -->
<section class="map-section">
    <div class="container">
        <h2>Find Us</h2>
        <div class="map-container">
            <div class="map-placeholder">
                <i class="fas fa-map-marked-alt"></i>
                <p>Interactive Map Coming Soon</p>
                <p class="muted">123 Auto Parts Street, Mumbai, Maharashtra 400001</p>
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

