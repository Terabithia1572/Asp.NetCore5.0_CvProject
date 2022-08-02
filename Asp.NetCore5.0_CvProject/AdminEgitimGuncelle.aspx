<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminEgitimGuncelle.aspx.cs" Inherits="Asp.NetCore5._0_CvProject.AdminEgitimGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form class="Form-1" runat="server">
        <div class="form-group">

            <div>
                <asp:Label ID="Label1" runat="server" Text="ID"></asp:Label>
                <asp:TextBox ID="tx_ID" runat="server"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label2" runat="server" Text="Başlık"></asp:Label>
                <asp:TextBox ID="tx_Baslik" runat="server"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label3" runat="server" Text="Alt Başlık"></asp:Label>
                <asp:TextBox ID="tx_AltBaslik" runat="server"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label4" runat="server" Text="Açıklama"></asp:Label>
                <asp:TextBox ID="tx_Aciklama" runat="server"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label5" runat="server" Text="Not Ortalaması"></asp:Label>
                <asp:TextBox ID="tx_NotOrtalamasi" runat="server"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label6" runat="server" Text="Tarih"></asp:Label>
                <asp:TextBox ID="tx_Tarih" runat="server"></asp:TextBox>
            </div>

        </div>
    </form>

</asp:Content>
