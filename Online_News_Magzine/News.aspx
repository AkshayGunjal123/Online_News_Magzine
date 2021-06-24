<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="Online_News_Magzine.News" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="/docs/4.0/assets/img/favicons/favicon.ico">

    <title>News Description</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.0/examples/pricing/">

    <!-- Bootstrap core CSS -->
    <link href="bootstrap-4.0.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/pricing.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
        <div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom box-shadow">
          <h5 class="my-0 mr-md-auto font-weight-bold">News Description</h5>
        </div>
     

    <div class="jumbotron bg-white align-content-center">
 <div class="container">
      <h4 class="text-center">News Description</h4> 
      <div class="form-group">
         <asp:Label ID="message" class="font-weight-bold text-danger" runat="server" Text=""></asp:Label>     
       </div>
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
                    
               </ItemTemplate>
           </asp:TemplateField>
       </Columns>

        <HeaderStyle CssClass=" bg-danger text-white text-lg-center font-weight-bold" />
    </asp:GridView>   
    </div>
</div>
</div>
    </form>
</body>
</html>
