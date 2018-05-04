<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebApplication1.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <style type="text/css">
        .auto-style1 {font-size: large;}
    </style>
    <div class="leftbox">
     <asp:Label ID="lblName" runat="server" Text="Name:" class="style-label" AssociatedControlID="textName"></asp:Label>
             <p><asp:RequiredFieldValidator ID="reqNameValidator" runat="server" ErrorMessage="*Required" ControlToValidate="textName" class="validation" ValidationGroup="validatedControls" ></asp:RequiredFieldValidator>
            <asp:TextBox ID="textName" runat="server" placeholder="Name is required" class="style-input" TabIndex="1"></asp:TextBox>
            </p>
                <p><asp:Label ID="lblEmail" runat="server" Text="Email:" class="style-label" AssociatedControlID="textEmail"></asp:Label>
            <asp:RequiredFieldValidator ID="reqEmailValidator" runat="server" ErrorMessage="*Required" ControlToValidate="textEmail" class="validation" ValidationGroup="validatedControls"></asp:RequiredFieldValidator>
            
                    <asp:TextBox ID="textEmail" runat="server" placeholder="Email Address is required" class="style-input" TabIndex="2"></asp:TextBox>
            <asp:RegularExpressionValidator ID="regExprChkEmail" runat="server" ControlToValidate="textEmail" ErrorMessage="*e.g. someone@example.com" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" class="validation" ValidationGroup="validatedControls"></asp:RegularExpressionValidator>
            </p>
                    <p><asp:Label ID="lblSubject" runat="server" Text="Subject:" class="style-label" AssociatedControlID="textSubject"></asp:Label><asp:RequiredFieldValidator ID="reqSubjectValidator" runat="server" ErrorMessage="*Required" ControlToValidate="textSubject" class="validation" ValidationGroup="validatedControls"></asp:RequiredFieldValidator>
            <asp:TextBox ID="textSubject" runat="server" placeholder="Subject is required" class="style-input" TabIndex="3"></asp:TextBox>
            </p>
                        <p><asp:Label ID="lblMessage" runat="server" Text="Message:" class="style-label" AssociatedControlID="textMessage"></asp:Label><asp:RequiredFieldValidator ID="reqMessageValidator" runat="server" ErrorMessage="*Required" ControlToValidate="textMessage" class="validation" ValidationGroup="validatedControls"></asp:RequiredFieldValidator>
            <asp:TextBox ID="textMessage" runat="server" placeholder="Message is required" class="style-input" TextMode="MultiLine" TabIndex="4"></asp:TextBox>
            <asp:Button ID="btnSendEmail" runat="server" Text="Send" OnClick="btnSend_Clicks" title="Submit" class="style-button" ValidationGroup="validatedControls"  />
            </p><span class="literal">
                <asp:Literal ID="litResult" runat="server"></asp:Literal></span>
        </div>
    
    <div class="mapContainer">
    <div id="map">
    <script>
      var map;
      function initMap() {
          
              
              var ShopLatLng = { lat: 4.90559, lng: 114.917015 };
              var map = new google.maps.Map(document.getElementById('map'), {
                  zoom: 19,
                  center: ShopLatLng
              });
              
              var contentString1 = '<div id="content">' +
                  '<div id="siteNotice">' +
                  '</div>' +
                  '<h1 id="Location" class="firstHeading">MARKS AND SPENCER</h1>' +
                  '<div id="bodyContent">' +
                  '<p><b>YOU CAN COLLECT THE ORDER FROM THIS ADDRESS:The Mall Gadong, Bandar Seri Begawan, Brunei</b></p>' +
                  '</div>' +
                  '</div>';
              
              var infowindow1 = new google.maps.InfoWindow({
                  content: contentString1
              });
             
             
              var marker1 = new google.maps.Marker({
                  position: ShopLatLng,
                  map: map,
                  title: 'THE MALL GADONG: MARKS AND SPENCER'
              });
              marker1.addListener('click', function () {
                  infowindow1.open(map, marker1);
              });
      }
    </script>

   
         <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDCkf3qZ3r1FxNDB7DLstgkHIxaGD8HxB4&callback=initMap"
  type="text/javascript"></script>
   

    </div>
       </div> 

</asp:Content>



    
<asp:Content ID="Content4" runat="server" ContentPlaceHolderID="GoogleMap">
   
</asp:Content>
