<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminKonferanslar.aspx.cs" Inherits="Asp.NetCore5._0_CvProject.AdminKonferanslar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">
        <table class="table table-bordered">
            <tr>
                <th>ID</th>
                <th>Konferanslar</th>
                <th>İşlemler</th>
            </tr>
            <tbody>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                <tr>
                    <td><%# Eval("ID") %></td>
                    <td><%# Eval("Konferanslar") %></td>
                    <td>
                        <asp:HyperLink NavigateUrl='<%# "AdminKonferanslarSil.aspx?ID="+ Eval("ID") %>' runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                        <asp:HyperLink NavigateUrl='<%# "AdminKonferanslarGuncelle.aspx?ID=" + Eval("ID") %>' runat="server" CssClass="btn btn-primary">Güncelle</asp:HyperLink>
                    </td>
                </tr>
                        </ItemTemplate>
                </asp:Repeater>
            </tbody>
        </table>
        <asp:HyperLink NavigateUrl='<%# "AdminKonferanslarEkle.aspx" %>' ID="HyperLink1" runat="server" CssClass="btn btn-success">Ekle</asp:HyperLink>
    </form>
    
</asp:Content>
