<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style2
        {
            color: #0000FF;
            font-family: "Goudy Old Style";
            font-size: xx-large;
        }
        
        * {box-sizing: border-box;}
.mySlides {display: none;}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
            max-width: 1000px;
            position: relative;
            margin: auto;
            top: 0px;
            left: 0px;
            height: 200px;
        }

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from { opacity: .4 } 
  to { opacity: 1 }
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
    }
   
    </style>

    <script type="text/javascript">
        var slideIndex = 0;
        showSlides();

        function showSlides() {
            var i;
            var slides = document.getElementsByClassName("mySlides");
            var dots = document.getElementsByClassName("dot");
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }
            slideIndex++;
            if (slideIndex > slides.length) { slideIndex = 1 }
            for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" active", "");
            }
            slides[slideIndex - 1].style.display = "block";
            dots[slideIndex - 1].className += " active";
            setTimeout(showSlides, 3000); // Change image every 2 seconds
        }
</script>

</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

    <h2 class="style2">
        <em><strong>Welcome to E-Election</strong></em></h2>
    <p class="style2">
        &nbsp;</p>

        <div class="slideshow-container">

            <div class="mySlides fade">
            <div class="numbertext">1 / 3</div>
              <img src="pics/img 1.jpg" style="width:100%" alt="" />
                <div class="text">Caption Text</div>
            </div>

            <div class="mySlides fade">
            <div class="numbertext">2 / 3</div>
              <img src="pics/img 2.jpg" style="width:100%" alt="" />
                <div class="text">Caption Text</div>
            </div>

            <div class="mySlides fade">
            <div class="numbertext">3 / 3</div>
              <img src="pics/img 3.jpg" style="width:100%" alt="" />
                <div class="text">Caption Text</div>
            </div>

        </div>
        <br />
        <div style="text-align:center">
          <span class="dot"></span> 
          <span class="dot"></span> 
          <span class="dot"></span> 
        </div>
    <p class="MsoNormal">
        &nbsp;</p>
    <p class="MsoNormal">
        <span style="font-size: 14.0pt; mso-bidi-font-size: 11.0pt; line-height: 115%; font-family: 'Comic Sans MS'; text-align: left;">
        E-Election is a web-based online voting system that will 
        help you manage your elections easily and securely.<o:p></o:p></span></p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
       
</asp:Content>
