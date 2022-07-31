<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminDeneyimler.aspx.cs" Inherits="Asp.NetCore5._0_CvProject.AdminDeneyimler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <table class="table table-bordered">
        <tr>
            <th>ID</th>
            <th>Başlık</th>
            <th>Alt Başlık</th>
            <th>Açıklama</th>
            <th>Tarih</th>

        </tr>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">

                <ItemTemplate>
                    <tr>
                        <td><%# Eval("ID") %></td>
                        <td><%# Eval("Baslik") %></td>
                        <td><%# Eval("AltBaslik") %></td>
                        <td><%# Eval("Aciklama") %></td>
                        <td><%# Eval("Tarih") %></td>
                    </tr>
                

                    </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>

</asp:Content>
