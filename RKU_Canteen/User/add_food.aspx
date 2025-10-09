<%@ Page Title="" Language="C#" MasterPageFile="~/User/Site1.Master" AutoEventWireup="true" CodeBehind="add_food.aspx.cs" Inherits="RKU_Canteen.Admin.Food" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content5" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <!DOCTYPE html>
    <html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Canteen - Fresh Meals & Beverages</title>
        <link rel="icon" type="image/svg+xml" href="images/icons/favicon.svg">
        <link rel="stylesheet" href="css/style.css">
        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
        <style>
            .card {
                border: 1px solid #ccc;
                border-radius: 8px;
                padding: 15px;
                margin: 10px;
                text-align: center;
                width: 220px;
                display: inline-block;
                vertical-align: top;
            }

            img {
                max-width: 200px;
                height: 120px;
            }
            body {
            background-color: #f0f4f7;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            color: #333;
            margin: 0;
            padding: 0;
        }

        table {
            margin-top: 100px;
            background-color: #ffffff;
            padding: 30px 50px;
            border-radius: 12px;
            box-shadow: 0px 4px 15px rgba(0, 0, 0, 0.2);
        }

        td {
            padding: 10px 15px;
            font-size: 16px;
        }

        td:first-child {
            font-weight: bold;
            text-align: right;
            color: #444;
        }

        td:nth-child(2) {
            text-align: left;
        }

        h2, td:nth-child(2):first-child {
            text-align: center;
        }

        asp\:TextBox, input[type="text"] {
            width: 250px;
            height: 30px;
            padding: 6px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 15px;
            transition: border-color 0.3s;
        }

        input[type="text"]:focus {
            border-color: #0078d7;
            outline: none;
        }

        asp\:Button, input[type="submit"], button {
            background-color: #0078d7;
            color: white;
            padding: 10px 25px;
            border: none;
            border-radius: 6px;
            font-size: 15px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        asp\:Button:hover, input[type="submit"]:hover, button:hover {
            background-color: #005ea3;
        }

        center td:nth-child(2) {
            font-size: 22px;
            font-weight: bold;
            color: #0078d7;
        }
        </style>

    </head>
    <body>
        <!-- Navigation -->
        <div class="topbar">
            <div class="container">
                <nav class="nav">
                    <div class="left">
                        <a href="index.aspx" class="logo">
                            <img src="https://images.unsplash.com/photo-1544025162-d76694265947?w=40&h=40&fit=crop" alt="RKU Canteen Management" style="height: 40px; border-radius: 8px;">
                            <span class="logo-text">RKU Canteen Management</span> </a>&nbsp;
                    </div>
                    <div class="nav-links">
                                <a href="index.aspx" class="nav-link active">Home</a> <a href="About_us.aspx" class="nav-link">About</a> <a href="menu.aspx" class="nav-link">Menu</a> <a href="Contact.aspx" class="nav-link">Contact</a> <a href="Food.aspx" class="nav-link">Food</a> <a href="User_Login.aspx" class="nav-link active">Login</a> <a href="User_Register.aspx" class="nav-link active">Register</a>
                    </div>
                </nav>
            </div>
        </div>
</asp:Content>
<asp:Content ID="Content6" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <br />
    <br />
    <br />

    <br />
    <center>
        <%-- <asp:Button ID="btnViewCart" runat="server" Text="View Cart" OnClick="btnViewCart_Click" />
     <asp:Label ID="lblWelcome" runat="server"></asp:Label>--%>

        <!-- Food Categories -->
        <asp:DataList ID="dlFoodCategory" runat="server" RepeatDirection="Horizontal" OnItemCommand="dlFoodCategory_ItemCommand">
            <ItemTemplate>
                <div class="card">
                    <img src='<%# Eval("FoodImage") %>' alt="Food" /><br />
                    <strong><%# Eval("FoodName") %></strong><br />
                    <br />
                    <asp:Button ID="btnViewSubFood" runat="server" Text="View Items"
                        CommandName="ViewSubFood" CommandArgument='<%# Eval("FoodId") %>' />
                </div>
            </ItemTemplate>
        </asp:DataList>

        <!-- Food SubCategories -->
        <asp:DataList ID="dlFoodSubCategory" runat="server" RepeatDirection="Horizontal" OnItemCommand="dlFoodSubCategory_ItemCommand" >
            <ItemTemplate>
                <div class="card">
                    <img src='<%# Eval("SubFoodImage") %>' alt="SubFood" /><br />
                    <strong><%# Eval("SubFoodName") %></strong><br />
                    <p><strong>₹ <%# Eval("price") %></strong></p>
                    <asp:LinkButton ID="lnkAddCart" runat="server" CommandName="AddToCart" CommandArgument='<%# Eval("SubFoodId") %>'>Add To Cart</asp:LinkButton>
                    <br />
                    <asp:LinkButton ID="ViewDetail" runat="server" CommandArgument='<%# Eval("SubFoodId") %>' CommandName="cmd_view">View Detail</asp:LinkButton>


                </div>
            </ItemTemplate>
        </asp:DataList>

        <br />
        <asp:LinkButton ID="lnkPrev" runat="server" OnClick="lnkPrev_Click" Visible="false">Previous</asp:LinkButton>
        &nbsp;&nbsp;&nbsp;
     <asp:LinkButton ID="lnkNext" runat="server" OnClick="lnkNext_Click" Visible="false">Next</asp:LinkButton>

        <br />
        <br />
        <asp:Button ID="btnBackCategories" runat="server" Text="Back to Categories" Visible="false" OnClick="btnBackCategories_Click" />
    </center>
</asp:Content>
<asp:Content ID="Content7" runat="server" ContentPlaceHolderID="ContentPlaceHolder3">
    <!-- Footer -->
    <footer class="footer">
        <div class="container">
            <div class="footer-content">
                <div class="footer-section">
                    <h3>RKU Canteen Management</h3>
                    <p class="muted">
                        Delicious meals, quick service.
                    </p>
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
                        Email: hello@rkucanteen.local
                    </p>
                    <p class="muted">
                        Phone: +91 98765 43210
                    </p>
                </div>
            </div>
            <div class="footer-bottom">
                <p class="muted">
                    &copy; 2025 RKU Canteen Management. All rights reserved.
                </p>
            </div>
        </div>
    </footer>

    </body>
</html>
    <script>
        // Update Add to Cart buttons to reflect selected quantity (e.g., 3 → 4)
        document.addEventListener('DOMContentLoaded', function () {
            // Update cart badge on load
            try {
                const badge = document.getElementById('cart-count');
                if (badge) {
                    const c = JSON.parse(localStorage.getItem('cart') || '[]');
                    const n = c.reduce((s, i) => s + (i.qty || 0), 0);
                    badge.textContent = n;
                }
            } catch (_) { }
            document.querySelectorAll('.add-to-cart').forEach(function (btn) {
                const targetId = btn.getAttribute('data-target');
                const input = document.getElementById(targetId);
                function sync() { const q = Math.max(1, Math.min(10, parseInt(input.value || '1', 10))); btn.textContent = `Add ${q} to Cart`; }
                if (input) {
                    input.addEventListener('input', sync);
                    input.addEventListener('change', sync);
                    sync();
                }

                // Save to localStorage and jump to cart
                btn.addEventListener('click', function (e) {
                    e.preventDefault();
                    const card = btn.closest('.product-card');
                    const name = card.querySelector('h3')?.textContent?.trim() || 'Item';
                    const priceText = card.querySelector('.product-price')?.textContent?.replace(/[^0-9]/g, '') || '0';
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

