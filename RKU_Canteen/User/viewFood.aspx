<%@ Page Title="" Language="C#" MasterPageFile="~/User/Site1.Master" AutoEventWireup="true" CodeBehind="viewFood.aspx.cs" Inherits="RKU_Canteen.viewFood" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content5" runat="server" contentplaceholderid="ContentPlaceHolder1">
                <!DOCTYPE html>
    <html>
    <head>
       <%-- <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0"><title>Canteen - Fresh Meals & Beverages</title>
        <link rel="icon" type="image/svg+xml" href="images/icons/favicon.svg">
        <link rel="stylesheet" href="css/style.css">
        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">--%>
         <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 20px;
        }

        .product-card {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
            width: 600px;
            padding: 30px;
            text-align: left;
            margin: 20px auto;
        }

        .product-card img {
            display: block;
            margin: 0 auto 20px auto;
            max-width: 100%;
            height: auto;
            border-radius: 8px;
        }

        .product-card h2 {
            margin: 10px 0;
            color: #333;
        }

        .product-card .price {
            color: #e91e63;
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 15px;
        }

        .product-card .stock {
            font-size: 16px;
            color: #777;
        }
    </style>
    </head>
    <body>
   
</asp:Content>
<asp:Content ID="Content6" runat="server" contentplaceholderid="ContentPlaceHolder2">
              <center>
  <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" CellPadding="3" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" GridLines="Both" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
      <FooterStyle BackColor="White" ForeColor="#000066" />
      <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
      <ItemStyle ForeColor="#000066" />
      <ItemTemplate>
          <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Food_Image") %>' Height="100" Width="100" />
          <br>
          <br>
          <br>
          <br></br>
          Food Name:
          <asp:Label ID="Label1" runat="server" Text='<%# Eval("Food_name") %>'></asp:Label>
          <br>
          <br>
          Food Price:
          <asp:Label ID="Label2" runat="server" Text='<%# Eval("Food_Price") %>'></asp:Label>
          <br>
          <br>
      </ItemTemplate>
      <SelectedItemStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
  </asp:DataList>
  </center>
</asp:Content>
<asp:Content ID="Content7" runat="server" contentplaceholderid="ContentPlaceHolder3">


            </asp:Content>

