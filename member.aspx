﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="member.aspx.cs" Inherits="member" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="StyleSheet" type="text/css" href="generelstyle.css"/>
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
	<link rel="stylesheet" href="css/font-awesome.min.css"/>
	<link rel="stylesheet" href="css/animate.css"/>
	<link rel="stylesheet" href="css/overwrite.css"/>
	<link href="css/animate.min.css" rel="stylesheet"/> 
    
    </head>
<body>
    <form id="form1" runat="server">
    <div class="new">
        
    </div>
        <header id="header">
        <nav class="navbar navbar-fixed-top" role="banner">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Hardware Acceleration Club</a>
                </div>				
                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="http://localhost:10872/Default3.aspx">Home</a></li>
                        <li><a href="http://localhost:10872/member.aspx">Members</a></li>
                        <li><a  href="http://localhost:10872/post.aspx">Post</a></li>
                        <li><a  href="http://localhost:10872/File.aspx">Files</a></li> 
                        <li><a href="http://localhost:10872/gallarey.aspx">Gallery</a></li>
                         <li><asp:HyperLink ID="HyperLink1" runat="server" >hyperlink</asp:HyperLink></li>
               
                        
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->		
    </header><!--/header-->
    <div style="font-weight: 700; font-size: large">
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Moderator" style="font-size: xx-large; color: #FFFF00"></asp:Label>
    
        
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="77px" Width="237px">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="memberdetail" HeaderText="Member details" SortExpression="memberdetail">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:ImageField DataImageUrlField="memberpic" HeaderText="Member picture">
                    <ItemStyle HorizontalAlign="Center" />
                </asp:ImageField>
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>
    
    </div>
        
        
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs %>" SelectCommand="SELECT * FROM [member]"></asp:SqlDataSource>
        
        
        
    </form>
</body>
</html>
