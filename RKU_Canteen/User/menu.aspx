<%@ Page Title="" Language="C#" MasterPageFile="~/User/Site1.Master" AutoEventWireup="true" CodeBehind="menu.aspx.cs" Inherits="RKU_Canteen.User.menu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content5" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
                <div>
    <Center>
        <h1>Available Product In store</h1>
        <p>
            <asp:Button ID="Button1" runat="server" Text="View Cart"  />
            <asp:Label ID="Label3" runat="server"></asp:Label>
        </p>
        <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" CellPadding="3" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" GridLines="Both" OnItemCommand="DataList1_ItemCommand" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <ItemStyle ForeColor="#000066" />
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("food_image") %>' Height="300" Width="200" />
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br></br>
                Food Name:
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Food_name") %>'></asp:Label>
                <br>
                <br> Food Price:
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Food_Price") %>'></asp:Label>
                <br>
                <br>
                <asp:LinkButton ID="btnViewDetails" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="cmd_view"  Text="View Details"></asp:LinkButton>
                <br>
                <asp:LinkButton ID="LinkButton3" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="cmd_add">Add to Cart</asp:LinkButton>
                <br></br>
                </br>
                </br>
                </br>
                </br>
                </br>
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
    </div>
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
    </script>--%>

</asp:Content>

