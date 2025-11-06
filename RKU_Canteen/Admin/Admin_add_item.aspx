<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site2.Master" AutoEventWireup="true" CodeBehind="Admin_add_item.aspx.cs" Inherits="RKU_Canteen.Admin.Admin_add_item" %>
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
        <style>
        /* ===========================
           FORMAL WEB FORM STYLE
        ============================ */
        body {
            background-color: #f2f4f7;
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            color: #333;
            margin: 0;
            padding: 0;
        }

        /* Container Table */
        table {
            background-color: #ffffff;
            border: 1px solid #dcdcdc;
            border-radius: 8px;
            padding: 30px 50px;
            margin-top: 80px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
            width: 420px;
        }

        /* Headings */
        tr:first-child td:nth-child(2) {
            text-align: center;
            font-size: 22px;
            font-weight: 700;
            color: #003366;
            padding-bottom: 20px;
            text-transform: uppercase;
        }

        /* Table Cells */
        td {
            padding: 10px 8px;
            font-size: 15px;
        }

        td:first-child {
            text-align: right;
            font-weight: 600;
            color: #333;
            width: 160px;
        }

        td:nth-child(2) {
            text-align: left;
        }

        /* Textbox, Dropdown, FileUpload */
        asp\:TextBox, input[type="text"], select, input[type="file"] {
            width: 230px;
            padding: 8px;
            font-size: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            transition: all 0.3s ease;
        }

        input[type="text"]:focus,
        select:focus,
        input[type="file"]:focus {
            border-color: #003366;
            outline: none;
            box-shadow: 0 0 3px rgba(0, 51, 102, 0.3);
        }

        /* Save Button */
        asp\:Button, input[type="submit"], button {
            background-color: #003366;
            color: white;
            padding: 8px 22px;
            border: none;
            border-radius: 4px;
            font-size: 15px;
            font-weight: 600;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        asp\:Button:hover, input[type="submit"]:hover, button:hover {
            background-color: #002244;
        }

        /* Center Alignment */
        center {
            display: flex;
            justify-content: center;
            align-items: center;
        }
    </style>

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
                        <a href="Admin_DeskBord.aspx" class="nav-link">DeskBord</a> <a href="Admin_Login.aspx" class="nav-link">Login</a>  <a href="Admin_menu.aspx" class="nav-link">Menu</a> <a href="Admin_Register.aspx" class="nav-link">Register</a>  <a href="Admin_add_food.aspx" class="nav-link">Add Food</a>  <a href="Admin_add_item.aspx" class="nav-link">Add Item</a>
                    
                    <!-- Admin Authentication Section -->
                    <!-- Admin Link (visible for all users) -->
                        <a href="admin-login.html" class="nav-link" id="admin-link"><i class="fas fa-user-shield"></i> </a>
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
            <table>
                <tr>
                    <td></td>
                    <td>Add Food Items</td>
                </tr>
                <tr>
                    <td>Food Category Name:</td>
                    <td>
                        <asp:DropDownList ID="drpcat"  runat="server" OnSelectedIndexChanged="drpcat_SelectedIndexChanged"></asp:DropDownList>

                    </td>
                </tr>
                <tr>
                    <td>Food Name :</td>
                    <td>
                        <asp:TextBox ID="txtpronm" runat="server"></asp:TextBox>

                    </td>
                </tr>

                <tr>
                        <td>Food price:</td>
                <td>
                                        <asp:TextBox ID="txtprodcode" runat="server"></asp:TextBox>

                </td>

                </tr>
                <tr>
                    <td> Image:</td>
                    <td>

                        <asp:FileUpload runat="server" ID="flimg"></asp:FileUpload>

                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnsave" runat="server" Text="Save" OnClick="btnsave_Click" />
                    </td>
                </tr>


            </table>
        </center>
    </div>
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

