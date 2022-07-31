<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Hakkimda.aspx.cs" Inherits="Asp.NetCore5._0_CvProject.Hakkimda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">
        <div class="form-group">

            <div>
                <asp:Label ID="Label1" runat="server" Text="Adınız"></asp:Label>
                <asp:TextBox ID="tx_Ad" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />

            <div>
                <asp:Label ID="Label2" runat="server" Text="Soyadınız"></asp:Label>
                <asp:TextBox ID="tx_Soyad" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />

            <div>
                <asp:Label ID="Label3" runat="server" Text="Adres"></asp:Label>
                <asp:TextBox ID="tx_Adres" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />

            <div>
                <asp:Label ID="Label4" runat="server" Text="Mail"></asp:Label>
                <asp:TextBox ID="tx_Mail" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />

            <div>
                <asp:Label ID="Label5" runat="server" Text="Telefon"></asp:Label>
                <asp:TextBox ID="tx_Telefon" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />

            <div>
                <asp:Label ID="Label6" runat="server" Text="Not"></asp:Label>
                <asp:TextBox ID="tx_Hakkimda" runat="server" CssClass="form-control" Height="100px" TextMode="MultiLine"></asp:TextBox>
            </div>
            <br />


            <div>
                <asp:Label ID="Label7" runat="server" Text="Fotoğraf"></asp:Label>
                <asp:TextBox ID="tx_Foto" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
             
            <asp:Button ID="btn_Guncelle" runat="server" Text="Güncelle" CssClass="btn btn-primary" OnClick="btn_Guncelle_Click" />


        </div>
    </form>




</asp:Content>
