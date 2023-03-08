<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebApplication1.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        
    <style>
        img {
            height: 120px;
            width: 180px;
            border: 2px;
        }
    </style>
    <h2><%: Title %></h2>
        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
            <ContentTemplate>
                <asp:Label ID="lbNomal" runat="server"> </asp:Label>
            </ContentTemplate>
        </asp:UpdatePanel>
        
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Label ID="lbX" runat="server" BackColor="Red" ForeColor="White"> </asp:Label>
                <asp:Button ID="cmdX" runat="server" Text="X" />
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="cmdX" EventName="Click" />
            </Triggers>
        </asp:UpdatePanel>

        <asp:UpdatePanel ID="UpdatePanel3" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <asp:Label ID="lbY" runat="server" BackColor="green" ForeColor="White"> </asp:Label>
                <asp:Button ID="cmdY" runat="server" Text="Y" />
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="cmdY" EventName="Click" />
            </Triggers>
        </asp:UpdatePanel>

       <asp:Button ID="cmdRefresh" runat="server" Text="Refresh" />
    <h3>สินค้า.</h3>
    <p>
        กรุณาระบุสินค้าที่ต้องการเพิ่ม.
    </p>
    
    <div class="row">
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button CssClass="btn btn-success" ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
        <%--<img src="images/glasses.png" class="img001" />--%>

    </div>
    <br />

    <div class="row">

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CssClass="glyphicon">
            <Columns>
                <asp:BoundField DataField="product_name" HeaderText="product_name" SortExpression="product_name" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                <asp:TemplateField HeaderText="product_image" SortExpression="product_image">

                    <ItemTemplate>

                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("product_image") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>

        </asp:GridView>

    </div>

    </div>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:test_DBConnectionString %>" SelectCommand="SELECT [product_name], [price], [product_image] FROM [product]"></asp:SqlDataSource>
</asp:Content>


