<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminKonferanslarEkle.aspx.cs" Inherits="Asp.NetCore5._0_CvProject.AdminKonferanslarEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="Form1" runat="server">
        <div class="form-group">
            <div>
                <asp:Label ID="Label1" runat="server" Text="Konferanslar"></asp:Label>
                <asp:TextBox ID="tx_Konferanslar" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <asp:Button ID="btn_Ekle" runat="server" Text="Ekle"  CssClass="btn btn-success" OnClick="btn_Ekle_Click"/>
    </form>
</asp:Content>
