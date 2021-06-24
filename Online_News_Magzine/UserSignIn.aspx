<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeBehind="UserSignIn.aspx.cs" Inherits="Online_News_Magzine.UserSignIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div class="jumbotron bg-white">
 <div class="container">
   
 <div class="card text-center">

  
     <div class="card-body">
         <asp:Image ID="Image1" src="img/newsPaperUserlogo.png" class="text-center justify-content-center" runat="server" alt="" width="72" height="72" />
         <h3 class="font-weight-bold">Reader Sign in</h3> 
         <div class="form-group">
             <asp:Label ID="message" class="font-weight-bold text-danger" runat="server" Text=""></asp:Label>     
         </div>
      
         <div class="form-group">
            <label class="font-weight-bold">Username</label>         
             <asp:TextBox ID="readerUsername" class="form-control font-weight-bold" placeholder="Username" runat="server"></asp:TextBox>
         </div>
         <div class="form-group">
             <label  class="font-weight-bold">Password</label>
             <asp:TextBox ID="readerPassword" class="form-control font-weight-bold" placeholder="Password" runat="server"></asp:TextBox>
         </div>
 
     </div>

     <div class="card-footer text-muted bg-white">
         <asp:Button ID="Button1" class="btn btn-primary font-weight-bold w-50" runat="server" Text="Sign in" OnClick="Button1_Click"  />
         <asp:Button ID="Button2" class="btn btn-danger font-weight-bold w-50 mt-2" runat="server" Text="Sign up" OnClick="Button2_Click"  />
     </div>

  </div>
 </div>    
</div>

</asp:Content>
