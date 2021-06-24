<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="UserFeedback.aspx.cs" Inherits="Online_News_Magzine.UserFeedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="form-group">
     <asp:Label ID="message" class="font-weight-bold text-danger" runat="server" Text=""></asp:Label>     
  </div>

    <div class="jumbotron bg-white align-content-center">
 <div class="container">
      <h4 class="text-center">News Description</h4> 
     <div class="form-group">
             <asp:Label ID="Label1" class="font-weight-bold text-danger" runat="server" Text=""></asp:Label>     
     </div>
<div class="row justify-content-center">
 <asp:GridView ID="GridView1" CssClass="col-12  text-center "  AutoGenerateColumns="false" runat="server">
     
     <Columns>           
          
           <asp:TemplateField HeaderText="News" >
               <ItemTemplate>
                     <br />
                    
                     <asp:Image ID="BookImage" CssClass=" mt-2"  src='<%# Eval("NewsPhoto")%>' Width="600" Height="400" runat="server" />
                     <br />
                     <br />
                   <asp:Label ID="NewsDate" CssClass=" bg-white  font-weight-bold" Text='<%#"Date : "+ Eval("NewsDate")%>' runat="server"></asp:Label>                    
                     <br />
                     <br />
                     <asp:Label ID="NewsTitle" CssClass="bg-white  font-weight-bold" Text='<%#Eval("NewsTitle")%>' runat="server"></asp:Label>  
                      <br />
                      <br />
                      <asp:Label ID="NewsDescription" CssClass="bg-white  font-weight-bold" Text='<%#Eval("NewsDescription")%>' runat="server"></asp:Label>
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
