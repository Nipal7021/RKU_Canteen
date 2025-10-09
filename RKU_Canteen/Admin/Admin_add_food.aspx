<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site2.Master" AutoEventWireup="true" CodeBehind="Admin_add_food.aspx.cs" Inherits="RKU_Canteen.Food_add" %>
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
    body {
        font-family: Arial;
        background: #f5f5f5;
        padding: 20px;
    }

    h2 {
        color: #333;
        border-bottom: 2px solid #007bff;
        padding-bottom: 5px;
    }

    .container {
        width: 600px;
        margin: auto;
        background: #fff;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 8px rgba(0,0,0,0.1);
    }

    input, select {
        width: 95%;
        padding: 8px;
        margin-bottom: 12px;
        border: 1px solid #ccc;
        border-radius: 6px;
    }

    .btn {
        background: #007bff;
        color: #fff;
        padding: 8px 12px;
        border: none;
        border-radius: 6px;
        cursor: pointer;
    }

        .btn:hover {
            background: #0056b3;
        }

    .admin-table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
    }

        .admin-table th, .admin-table td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: center;
        }

        .admin-table th {
            background: #007bff;
            color: white;
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
                    <a href="Admin_DeskBord.aspx" class="logo"><span class="logo-text"></span> </a>
                </div>
                <div class="nav-links">
                    <a href="Admin_DeskBord.aspx" class="nav-link">DeskBord</a> <a href="Admin_Login.aspx" class="nav-link">Login</a>  <a href="Admin_menu.aspx" class="nav-link">Menu</a> <a href="Admin_Register.aspx" class="nav-link">Register</a>  <a href="Admin_add_food.aspx" class="nav-link">Add Food</a>  <a href="Admin_add_item.aspx" class="nav-link">Add Item</a>
                
                <!-- Admin Authentication Section -->
                <!-- Admin Link (visible for all users) -->
                    <%--<a href="admin-login.html" class="nav-link" id="admin-link"><i class="fas fa-user-shield"></i>Admin </a>--%>
                    <div class="user-auth" id="user-auth">
                        <div class="user-dropdown" style="display: block;">
                            <button class="user-menu-btn" id="user-menu-btn">
                               <%-- <i class="fas fa-user-shield"></i><span class="user-name">Admin</span> <i class="fas fa-chevron-down"></i>--%>
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
        <center>
                <table>
                    <tr>
                        <td>  </td>
                        <td> Add Food Categories </td>
                    </tr>
                    <tr>
                        <td> Categories Name:</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <asp:Button ID="Button2" runat="server" Text="Add Food Categories" OnClick="Button2_Click" />
                            
                    </tr>
                </table>
            </center>
</asp:Content>
<asp:Content ID="Content6" runat="server" contentplaceholderid="ContentPlaceHolder2">
             
     <%--<div class="container">

     <!-- Add Main Food Category -->
     <h2>Add Main Food</h2>
     Food Name:
     <asp:TextBox ID="txtFood" runat="server"></asp:TextBox><br />


     Upload Image:
     <asp:FileUpload ID="imgFood" runat="server" /><br />
     <asp:Button ID="btnAddFood" runat="server" Text="Add Food" CssClass="btn" OnClick="btnAddFood_Click" />
     <hr />

     <!-- Add Sub Food Category -->
     <h2>Add Sub Food Category</h2>
     Select Main Food:
     <asp:DropDownList ID="ddlFood" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlFood_SelectedIndexChanged">
         <asp:ListItem Text="-- Select Food --" Value="0"></asp:ListItem>
     </asp:DropDownList><br />

     Sub Food Name:
     <asp:TextBox ID="txtSubFood" runat="server"></asp:TextBox><br />

     Price:
     <asp:TextBox ID="txtprice" runat="server"></asp:TextBox><br />

     Image:
     <asp:FileUpload ID="FileUpload1" runat="server" /><br />

     <asp:Button ID="btnAddSubCat" runat="server" Text="Add Sub Category" CssClass="btn" OnClick="btnAddSubCat_Click" />
 </div>

 <div class="table-container">
    <asp:DropDownList ID="ddlSubFood" runat="server"></asp:DropDownList>

    <asp:GridView ID="GridView1" CssClass="admin-table" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="SubFoodId" HeaderText="SubFood ID" />
            <asp:BoundField DataField="FoodId" HeaderText="Food ID" />
           <%--  <asp:BoundField DataField="FoodName" HeaderText="Food ID" />--%>
             <%--<asp:BoundField DataField="SubFoodName" HeaderText="Sub Food Name" />
            <asp:BoundField DataField="price" HeaderText="Price" />
        </Columns>
    </asp:GridView>--%>
</div>
            </asp:Content>
<%--<asp:Content ID="Content7" runat="server" contentplaceholderid="ContentPlaceHolder3">
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

            </asp:Content>--%>

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


