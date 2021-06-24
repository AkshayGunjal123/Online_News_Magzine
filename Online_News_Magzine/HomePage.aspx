<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Online_News_Magzine.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="jumbotron bg-white align-content-center">
 <div class="container">
      <h4 class="text-center">News</h4> 

<div class="row justify-content-center">
 <asp:GridView ID="GridView1" CssClass="col-12  text-center "  AutoGenerateColumns="false" runat="server">
     
     <Columns>           
          
           <asp:TemplateField HeaderText="News" >
               <ItemTemplate>
                     <br />
                    
                     <asp:Image ID="BookImage" CssClass=" mt-2"  src='<%# Eval("NewsPhoto")%>' Width="700" Height="400" runat="server" />
                     <br />
                     <br />
                   <asp:Label ID="NewsDate" CssClass=" bg-white card-header font-weight-bold" Text='<%#"Date : "+ Eval("NewsDate")%>' runat="server"></asp:Label>                    
                     <br />
                     <br />
                     <asp:Label ID="NewsTitle" CssClass="bg-white card-header font-weight-bold" Text='<%#Eval("NewsTitle")%>' runat="server"></asp:Label>  
                      <br />
                      <br />
                    <asp:Label ID="NewsCategory" CssClass="bg-white card-header font-weight-bold" Text='<%#Eval("NewsCategory")%>' runat="server"></asp:Label>  
                      <br />
                      <br />
                   <asp:LinkButton ID="ReadNews" CssClass="btn btn-outline-primary w-50 font-weight-bold mt-2 mb-2" Text="ReadNews" runat="server" CommandArgument='<%#Eval("Id")%>' OnClick="ReadNews_Click" />
                   
               </ItemTemplate>
           </asp:TemplateField>
       </Columns>

        <HeaderStyle CssClass=" bg-danger text-white text-lg-center font-weight-bold" />
    </asp:GridView>   
    </div>
</div>
</div>
</asp:Content>
