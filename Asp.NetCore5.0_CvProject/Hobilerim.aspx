<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Hobilerim.aspx.cs" Inherits="Asp.NetCore5._0_CvProject.Hobilerim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">
        <table class="table table-bordered">
            <tr>
                <th>ID</th>
                <th>Hobilerim</th>
                <th>İşlemler</th>
            </tr>
            <tbody>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td><%# Eval("ID") %></td>
                            <td><%# Eval("Hobilerim") %></td>
                            <td>
                                <asp:HyperLink NavigateUrl='<%# "HobiSil.aspx?ID=" + Eval("ID") %>' ID="HyperLink2" runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                                <asp:HyperLink NavigateUrl='<%# "HobiGuncelle.aspx?ID="+Eval("ID") %>' ID="HyperLink1" runat="server" CssClass="btn btn-primary">Güncelle</asp:HyperLink>
                            </td>
                        </tr>
                        </tbody>
                    </ItemTemplate>
                </asp:Repeater>
        </table>
        
        <asp:HyperLink NavigateUrl="HobiEkle.aspx" ID="HyperLink3" runat="server" CssClass="btn btn-success">Ekle</asp:HyperLink>

    </form>

</asp:Content>
