<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div id="site_content">

        <div class="sidebar_container">
            <div class="sidebar">
          <div class="sidebar_item">
            <h2>Latest Update</h2>
            <h3>September 2012</h3>
            <p>Successful Completion Of Installation Of Musical Instruments Room With A Wide Variety Of Instruments For The Children To Choose From.</p>         
		  </div><!--close sidebar_item--> 
        </div><!--close sidebar-->
		<div class="sidebar">
          <div class="sidebar_item">
            <h3>September 2012</h3>
            <p>Installation of new security gates.</p>         
		  </div><!--close sidebar_item--> 
        </div><!--close sidebar-->  
		<div class="sidebar">
          <div class="sidebar_item">
            <h3>September 2012</h3>
            <p>Upgraded Bathroom Facilities.</p>         
		  </div><!--close sidebar_item--> 
            </div>
            <!--close sidebar-->
            <div class="sidebar">
                <div class="sidebar_item">
                    <h2>Contact</h2>
                    <p>Phone: +44 (0)1234 567891</p>
                    <p>Email: <a href="mailto:info@youremail.co.uk">info@youremail.co.uk</a></p>
                </div>
                <!--close sidebar_item-->
            </div>
            <!--close sidebar-->
        </div>
        <!--close sidebar_container-->

        <ul class="slideshow">
            <li class="show">
                <img width="680" height="250" src="images/home_1.jpg" alt="&quot;The Children Are Our Future&quot;" /></li>
            <li>
                <img width="680" height="250" src="images/home_2.jpg" alt="&quot;Help Us Help A Child Today&quot;" /></li>
        </ul>

        <div id="content">
            <div class="content_item">
                <h1>Welcome to the official web site of the Jamaica National Children´s Home. Please visit often.</h1>
                <p>The purpose of this site is to raise awareness of the Home in the internet community and solicit donations of cash and equipment. The Jamaica National Children´s Home was started in 1972 by the
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="http://www.nchafc.org.uk/" ForeColor="#0000CC">National Children's Home, U.K</asp:HyperLink>
                    &nbsp;to provide a loving, caring and stable home to orphans and abandoned children as well as children with severe mental or physical disabilities whose parents are unable to provide proper care.</p>

                <div class="content_image">
                    <img src="images/content_image1.jpg" alt="image1" width="150px" height="150px" />
                </div>
                <p>The home has urgent need for baby diapers.
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="http://www.nchafc.org.uk/" ForeColor="#0000CC">Click here for information on how to contact us</asp:HyperLink>
                    for arranging the delivery of your donations. All assistance will be greatly appreciated.</p>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque cursus tempor enim.</p>
                <br style="clear: both" />

                <div class="content_container">
                    <p>You May Also Visit Our Page That Provides A List Of Government Websites</p>
                    <div class="button_small">
                        <a href="#">Read more</a>
                    </div>
                    <!--close button_small-->
                </div>
                <!--close content_container-->
                <div class="content_container">
                    <p>Links To Childrens Sites World Wide</p>
                    <div class="button_small">
                        <a href="#">Read more</a>
                    </div>
                    <!--close button_small-->
                </div>
                <!--close content_container-->
            </div>
            <!--close content_item-->
        </div>
        <!--close content-->
    </div>
    <!--close site_content-->

    <div id="content_green">
        <div class="content_green_container_box">
            <h4>Latest Blog Post</h4>
            <p>Phasellus laoreet feugiat risus. Ut tincidunt, ante vel fermentum iaculis.</p>
            <div class="readmore">
                <a href="#">Read more</a>
            </div>
            <!--close readmore-->
        </div>
        <!--close content_green_container_box-->
        <div class="content_green_container_box">
            <h4>Latest News</h4>
            <p>Phasellus laoreet feugiat risus. Ut tincidunt, ante vel fermentum iaculis.</p>
            <div class="readmore">
                <a href="#">Read more</a>
            </div>
            <!--close readmore-->
        </div>
        <!--close content_green_container_box-->
        <div class="content_green_container_boxl">
            <h4>Latest Projects</h4>
            <p>Phasellus laoreet feugiat risus. Ut tincidunt, ante vel fermentum iaculis.</p>
            <div class="readmore">
                <a href="#">Read more</a>
            </div>
            <!--close readmore-->
        </div>
        <!--close content_green_container_box1-->
        <br style="clear: both" />
    </div>
    <!--close content_green-->
</asp:Content>

