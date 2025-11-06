<%@ Page Title="" Language="C#" MasterPageFile="~/User/Site1.Master" AutoEventWireup="true" CodeBehind="menu.aspx.cs" Inherits="RKU_Canteen.User.menu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  
    <style>
        /* Page background */
        body {
            background: linear-gradient(135deg, #6C6BD9, #7B74E9);
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
        }

        /* Heading */
        h1 {
            color: white;
            margin-top: 20px;
            text-shadow: 1px 1px 3px rgba(0,0,0,0.3);
        }

        /* View Cart button */
        #Button1 {
            background-color: #ab47bc;
            color: white;
            border: none;
            padding: 10px 25px;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;
            transition: all 0.3s ease;
            box-shadow: 0 3px 10px rgba(0,0,0,0.2);
        }

        #Button1:hover {
            background-color: #8e24aa;
            transform: scale(1.05);
            box-shadow: 0 5px 15px rgba(0,0,0,0.3);
        }

        /* Datalist styling */
        #DataList1 {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 25px;
            margin: 40px auto;
            padding: 0;
            border: none;
            background: transparent;
        }

        /* Card box design */
        #DataList1 .item {
            background: #f3e5f5;
            border-radius: 15px;
            padding: 15px;
            text-align: center;
            box-shadow: 0 4px 12px rgba(0,0,0,0.2);
            width: 230px;
            transition: all 0.3s ease;
            animation: fadeInUp 0.8s ease forwards;
        }

        #DataList1 .item:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 18px rgba(0,0,0,0.25);
        }

        /* === FOOD IMAGE STYLING (cover shape look) === */
        #DataList1 img {
            width: 200px;
            height: 200px;
            border-radius: 20px;          /* rounded corners */
            object-fit: cover;             /* ensures full image fits */
            margin-bottom: 10px;
            transition: transform 0.4s ease, box-shadow 0.4s ease;
            box-shadow: 0 4px 10px rgba(0,0,0,0.3);
        }

        #DataList1 img:hover {
            transform: scale(1.08);
            box-shadow: 0 8px 20px rgba(0,0,0,0.4);
        }

        /* Food name and price */
        #DataList1 label {
            color: #4a148c;
            font-weight: 600;
        }

        /* Link buttons (View Food, Add to Cart) */
        #DataList1 a {
            display: inline-block;
            text-decoration: none;
            color: white;
            background-color: #7b1fa2;
            padding: 8px 14px;
            border-radius: 5px;
            margin-top: 8px;
            transition: all 0.3s ease;
        }

        #DataList1 a:hover {
            background-color: #6a1b9a;
            transform: scale(1.05);
        }

        /* Next & Previous buttons */
        #LinkButton1, #LinkButton2 {
            display: inline-block;
            color: white;
            background-color: #8e24aa;
            border-radius: 8px;
            padding: 10px 25px;
            text-decoration: none;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.4s ease;
            position: relative;
            overflow: hidden;
        }

        #LinkButton1:hover, #LinkButton2:hover {
            background-color: #6a1b9a;
            transform: translateY(-3px) scale(1.05);
            box-shadow: 0 6px 15px rgba(0,0,0,0.3);
        }

        /* Animation keyframes */
        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }




        /* Footer Styles */
.footer {
    background-color: #1c1c1c; /* Dark background */
    color: #fff;
    padding: 40px 0 20px;
    font-family: 'Inter', sans-serif;
    font-size: 14px;
}

.footer-container {
    width: 90%;
    max-width: 1200px;
    margin: 0 auto;
}

.footer-sections {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
    gap: 20px;
}

.footer-section h3,
.footer-section h4 {
    margin-bottom: 10px;
    color: #fff;
}

.footer-section p.muted {
    color: #aaa;
    line-height: 1.6;
}

.footer-section ul {
    list-style: none;
    padding: 0;
}

.footer-section ul li {
    margin-bottom: 8px;
}

.footer-section ul li a {
    color: #aaa;
    text-decoration: none;
    transition: color 0.3s;
}

.footer-section ul li a:hover {
    color: #fff;
}

.footer-divider {
    border: 0;
    border-top: 1px solid #333;
    margin: 20px 0;
}

.footer-bottom {
    text-align: center;
}

@media (max-width: 768px) {
    .footer-sections {
        flex-direction: column;
    }
    .footer-section {
        margin-bottom: 20px;
    }
}

    </style>


</asp:Content>
<asp:Content ID="Content5" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
                <div>
    <Center>
        <h1>Available Product In store</h1>
        <p>
            <asp:Button ID="Button1" runat="server" Text="View Cart" OnClick="Button1_Click"  />
            <asp:Label ID="Label3" runat="server"></asp:Label>
        </p>
        <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" CellPadding="10" BackColor="#CCCCFF" BorderColor="Black" BorderStyle="Groove" BorderWidth="10px" GridLines="Both" OnItemCommand="DataList1_ItemCommand" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" CellSpacing="5">
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <ItemStyle ForeColor="#000066" />
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("food_image") %>' Height="240" Width="200" />
                <br>
                <br></br>
                Food Name:
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Food_name") %>'></asp:Label>
                <br>
                <br> Food Price:
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Food_Price") %>'></asp:Label>
                <br>
                <br>
                <asp:LinkButton ID="btnViewDetails" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="cmd_view"  Text="View Food"></asp:LinkButton>
                <br>
                <asp:LinkButton ID="LinkButton3" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="cmd_add">Add to Cart</asp:LinkButton>
                <br>
                </br>
                </ItemTemplate>
            <SelectedItemStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
        <div style="width:99%; padding:10px;">
    <asp:LinkButton ID="LinkButton1" runat="server" style="float:left;" OnClick="LinkButton1_Click1">Previous</asp:LinkButton>
    <asp:LinkButton ID="LinkButton2" runat="server" style="float:right;" OnClick="LinkButton2_Click1">Next</asp:LinkButton>
</div>
    </Center>
</div>
</asp:Content>
<asp:Content ID="Content6" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
   <%--<body>
    <h1>Our Food Menu</h1>
    <div class="menu">
        <div class="menu-item">
            <span class="item-name">Veg Burger</span>
            <span class="item-price">₹120</span>
        </div>
        <div class="menu-item">
            <span class="item-name">Cheese Pizza</span>
            <span class="item-price">₹250</span>
        </div>
        <div class="menu-item">
            <span class="item-name">Pasta Alfredo</span>
            <span class="item-price">₹180</span>
        </div>
        <div class="menu-item">
            <span class="item-name">Grilled Sandwich</span>
            <span class="item-price">₹100</span>
        </div>
        <div class="menu-item">
            <span class="item-name">Cold Coffee</span>
            <span class="item-price">₹90</span>
        </div>
    </div>--%>
</asp:Content>
<asp:Content ID="Content7" runat="server" ContentPlaceHolderID="ContentPlaceHolder3">
    <center>
                   <footer class="footer">
                       <div class="container">
                           <div class="footer-content">
                               <div class="footer-section">
                                   <h3>&nbsp; RKU Canteen Management&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </h3>
                    <p class="muted">
                        Delicious meals, quick service.</p>
                </div>
                <div class="footer-section">
                    <h4>&nbsp;</h4>
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
</center>
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




