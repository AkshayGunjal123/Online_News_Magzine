<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddNews.aspx.cs" Inherits="Online_News_Magzine.AddNews" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-right: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="jumbotron bg-white">
 <div class="container">
 <div class="card text-center bg-white">
        <div class="card-header bg-white font-weight-bold">
           <h4 class="text-center">Add News....</h4> 
        </div>
  

     <div class="card-body">
  
    <div class="form-group">
         <asp:Label ID="message" class="font-weight-bold text-danger" runat="server" Text=""></asp:Label>     
      </div>

   <div class="form-row">

    <div class="form-group col-md-4">
      <label for="inputEmail4" class="font-weight-bold">News Category</label>
        <asp:DropDownList ID="NewsCategory" class="form-control" runat="server">
            <asp:ListItem Selected="True">Select News Category</asp:ListItem>
            <asp:ListItem Value="Covid">Covid</asp:ListItem>
            <asp:ListItem Value="Politics">Politics</asp:ListItem>
            <asp:ListItem Value="Bollywood">Bollywood</asp:ListItem>
            <asp:ListItem Value="Technology">Technology</asp:ListItem>
            <asp:ListItem Value="Cricket">Cricket</asp:ListItem>
            <asp:ListItem Value="WorldNews">WorldNews</asp:ListItem>
        </asp:DropDownList>  
    </div>

    <div class="col-md-6">
      <label for="inputEmail4" class="font-weight-bold">News Title</label>
        <asp:TextBox ID="newsTitle" class="form-control" TextMode="MultiLine" Rows="2" Columns="5" runat="server"></asp:TextBox>
    </div>
</div>

  <div class="form-row">
    <div class="col-md-4">
    <label for="newsDate" class="font-weight-bold">News Date</label>
  
      <asp:TextBox ID="NewsDateText"  class="form-control" placeholder="Date" runat="server"></asp:TextBox>  
      <asp:Button ID="newsDateButton"  CssClass="btn btn-outline-danger" runat="server" Text="Date" OnClick="newsDateButton_Click" />
      <asp:Calendar ID="Calendar1" Visible="false" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px" OnSelectionChanged="Calendar1_SelectionChanged">
          <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
          <NextPrevStyle VerticalAlign="Bottom" />
          <OtherMonthDayStyle ForeColor="#808080" />
          <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
          <SelectorStyle BackColor="#CCCCCC" />
          <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
          <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
          <WeekendDayStyle BackColor="#FFFFCC" />
      </asp:Calendar>
    </div>

       <div class="col-md-4">
        <label for="newsDescription" class="font-weight-bold">News Photo</label>
           <asp:FileUpload ID="FileUpload1" class="form-control-file" runat="server" />
      </div> 

  </div>

   <div class="form-row">
    
      <div class="col-md-12">
        <label for="newsDescription" class="font-weight-bold">News Descriptionbel</label>
        <asp:TextBox ID="newsDescription" class="form-control" TextMode="MultiLine" Rows="6" Columns="12" runat="server"></asp:TextBox>
      </div> 
   </div>
 </div>
     <div class="card-footer text-muted">
         <asp:Button ID="addNews" class="btn btn-primary ml-2 font-weight-bold mt-2 w-50" runat="server" Text="Add News" OnClick="addNews_Click" />
     </div>
  </div>
   </div>
</div>
</asp:Content>
