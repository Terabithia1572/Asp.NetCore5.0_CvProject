<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminYeteneklerGuncelle.aspx.cs" Inherits="Asp.NetCore5._0_CvProject.YeteneklerGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">
        <div class="form-group">
            <div>
                <asp:Label ID="Label1" runat="server" Text="ID"></asp:Label>
                <asp:TextBox ID="tx_ID" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label2" runat="server" Text="Yetenekler"></asp:Label>
                <asp:TextBox ID="tx_Yetenekler" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <asp:Button ID="Button1" runat="server" Text="Güncelle"  CssClass="btn btn-primary" OnClick="Button1_Click"/>
    </form>
</asp:Content>
