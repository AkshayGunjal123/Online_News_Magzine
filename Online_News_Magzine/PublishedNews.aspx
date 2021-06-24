<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="PublishedNews.aspx.cs" Inherits="Online_News_Magzine.PublishedNews" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
<div class="container mt-4  primary-background text-dark text-center">
      <h4 class="text-center text-white">Publish Book</h4> 

  
<asp:DataList ID="DataList1" runat="server" RepeatColumns="1"  >
  <ItemTemplate>
  
    <div class="card m-2" style="width: 60rem;">
      <asp:Image ID="newPhoto" class="card-img-top" src='<%# Eval("NewsPhoto")%>' Width="960" Height="500"  alt="Card image cap" runat="server" />
 
      <div class="card-body">
      <asp:Label ID="Id" class="card-title font-weight-bold text-lg-center" runat="server"  Text='<%#"Sr/No: "+Eval("Id")%>'></asp:Label>
      <br />
      <asp:Label ID="NewsCategory" class="card-title font-weight-bold text-danger" runat="server" Text='<%# Eval("NewsCategory")%>'></asp:Label>
      <br />
      <asp:Label ID="NewsTitle" class="card-title font-weight-bold" runat="server" Text='<%#Eval("NewsTitle")%>'></asp:Label>
      <br />
      <asp:Label ID="NewsDate" class="card-title font-weight-bold" runat="server" Text='<%#Eval("NewsDate")%>'></asp:Label>
      <br />  
      <asp:Label ID="NewsDescription" class="card-title font-weight-bold text-lg-center" runat="server" Text='<%#Eval("NewsDescription")%>'></asp:Label>
      <br /> 
      <asp:LinkButton ID="Delete" CssClass="btn btn-outline-primary w-50 font-weight-bold mt-2 mb-2" Text="Delete News" runat="server" CommandArgument='<%#Eval("Id")%>' OnClick="Cancel_Click"/>
            
      </div>
   
</div>
  
     </ItemTemplate>
   </asp:DataList>
</div>  


</asp:Content>
