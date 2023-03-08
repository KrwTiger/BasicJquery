<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebApplication1.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Your application description page.</h3>
    <p>Use this area to provide additional information.
    </p>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Button CssClass="btn btn-success" ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
        <asp:BoundField DataField="Firstname" HeaderText="Firstname" SortExpression="Firstname" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:test_DBConnectionString %>" SelectCommand="SELECT * FROM [employees]"></asp:SqlDataSource>
</asp:Content>
