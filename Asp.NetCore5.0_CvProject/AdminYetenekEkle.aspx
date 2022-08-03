<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminYetenekEkle.aspx.cs" Inherits="Asp.NetCore5._0_CvProject.AdminYetenekEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="Form1" runat="server">
        <div class="form-group">
            <div>
                <asp:Label ID="Label1" runat="server" Text="Yetenekler"></asp:Label>
                <asp:TextBox ID="tx_Yetenek" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>

        <asp:Button ID="btn_Ekle" runat="server" Text="Yetenek Ekle" CssClass="btn btn-success" OnClick="btn_Ekle_Click" />

    </form>
</asp:Content>
