<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeBehind="UserSignUp.aspx.cs" Inherits="Online_News_Magzine.UserSignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 <div class="jumbotron bg-white">
 <div class="container">
 <div class="card text-center">
    <div class="card-header text-white font-weight-bold bg-white">
           <asp:Image ID="Image1" src="img/newspaperLogo.jpg" class="text-center justify-content-center" runat="server" alt="" width="72" height="72" />
      </div>
 
     
     <div class="card-body">
    <h3 class="text-center">Reader Sign up</h3> 
    <div class="form-group col-md-8">
        <asp:Label ID="message" class="font-weight-bold text-danger" runat="server" Text=""></asp:Label>
    </div>

  <div class="form-row">
    <div class="form-group col-md-3">
      <label for="inputEmail4" class="font-weight-bold">First Name</label>
        <asp:TextBox ID="firstName" class="form-control" placeholder="First Name" runat="server"></asp:TextBox>      
    </div>

      <div class="form-group col-md-3">
      <label for="inputEmail4" class="font-weight-bold">Last Name</label>
        <asp:TextBox ID="lastName" class="form-control" placeholder="Last Name" runat="server"></asp:TextBox>      
    </div>

    <div class="form-group col-md-6">
      <label for="inputEmail4" class="font-weight-bold">Email</label>
        <asp:TextBox ID="readerEmail" class="form-control" placeholder="Email" runat="server"></asp:TextBox>
       
    </div>
  </div>

  <div class="form-row"> 
     
    <div class="form-group col-md-4">
        <label for="inputEmail4" class="font-weight-bold">Contact</label>
          <asp:TextBox ID="readerContact" class="form-control" placeholder="Contact" runat="server"></asp:TextBox>        
      </div>
    
 
    <div class="form-group col-md-4">
      <label for="inputPassword4" class="font-weight-bold">Password</label>
       <asp:TextBox ID="readerPassword" class="form-control" placeholder="Password" runat="server"></asp:TextBox>       
    </div>

    <div class="form-group col-md-4">
      <label for="inputPassword4" class="font-weight-bold">Confirm Password</label>
        <asp:TextBox ID="readerConfirmPassword" class="form-control" placeholder="Confirm Password" runat="server"></asp:TextBox>       
    </div>
 
  </div>

 </div>

     <div class="card-footer text-muted">
         <asp:Button ID="Button1" class="btn btn-danger font-weight-bold w-50" runat="server" Text="Sign Up" OnClick="Button1_Click"  />
          <asp:Button ID="Button2" class="btn btn-primary font-weight-bold w-50 mt-2" runat="server" Text="Sign in" OnClick="Button2_Click"   />
     </div>
  
  </div>

</div>   
</div>

</asp:Content>
