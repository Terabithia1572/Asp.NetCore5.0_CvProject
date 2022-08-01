<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminEgitimler.aspx.cs" Inherits="Asp.NetCore5._0_CvProject.AdminEgitimler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">
        <table class="table table-bordered">
            <tr>
                <th>ID</th>
                <th>Başlık</th>
                <th>Alt Başlık</th>
                <th>Açıklama</th>
                <th>Not Ortalaması</th>
                <th>Tarih</th>
                <th>İşlemler</th>
            </tr>
            <tbody>
                <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                <tr>
                    <td><%# Eval("ID") %></td>
                    <td><%# Eval("Baslik") %></td>
                    <td><%#  Eval("AltBaslik") %></td>
                    <td><%# Eval("Aciklama") %></td>
                    <td><%# Eval("NotOrtalamasi") %></td>
                    <td><%# Eval("Tarih") %></td>
                    <td>
                        <asp:HyperLink NavigateUrl="~/AdminEgitimEkle.aspx" ID="HyperLink1" runat="server" CssClass="btn btn-success">Ekle</asp:HyperLink>
                        <asp:HyperLink NavigateUrl='<%# "AdminEgitimSil.aspx?="+Eval("ID") %>' ID="HyperLink2" runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                        <asp:HyperLink NavigateUrl='<%# "AdminEgitimGuncelle.aspx?="+Eval("ID") %>' ID="HyperLink3" runat="server" CssClass="btn btn-primary">Güncelle</asp:HyperLink>
                        
                    </td>
                </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
        </table>
       


    </form>
</asp:Content>
