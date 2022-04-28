<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div id="site_content">

	  <div class="sidebar_container">       
		<div class="sidebar">
          <div class="sidebar_item">
            <h2>New Website</h2>
            <p>Welcome to our new website. Please have a look around, any feedback is much appreciated.</p>
          </div><!--close sidebar_item--> 
        </div><!--close sidebar-->     		
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
        </div><!--close sidebar-->  		
        <div class="sidebar">
          <div class="sidebar_item">
            <h2>Contact</h2>
            <p>Phone: +44 (0)1234 567891</p>
            <p>Email: <a href="mailto:info@youremail.co.uk">info@youremail.co.uk</a></p>
          </div><!--close sidebar_item--> 
        </div><!--close sidebar-->
       </div><!--close sidebar_container-->	
	
      <ul class="slideshow">
        <li class="show"><img width="680" height="250" src="images/home_1.jpg" alt="&quot;Enter your caption here&quot;" /></li>
        <li><img width="680" height="250" src="images/home_2.jpg" alt="&quot;Enter your caption here&quot;" /></li>
      </ul> 	   
	   
      <div id="content">
        <div class="content_item">
            <h2>Contact Us</h2>
            <p>This is what a contact form could look like on this website template:</p>
            <div style="width:120px; float:left;"><p>Name</p></div>
			<div style="width:430px; float:right;"><p><input class="contact" type="text" name="your_name" value="" /></p></div>
            <div style="width:120px; float:left;"><p>Email Address</p></div>
			<div style="width:430px; float:right;"><p><input class="contact" type="text" name="your_email" value="" /></p></div>
            <div style="width:120px; float:left;"><p>Message</p></div>
			<div style="width:430px; float:right;"><p><textarea class="contact textarea" rows="8" cols="50" name="your_message"></textarea></p></div>
            <br style="clear:both;" />
            <p style="padding: 10px 0 10px 0;">Please enter the answer to this simple maths question (to prevent spam)</p>
            <div style="width:120px; float:left;"><p>Maths Question: 9 + 3 = ?</p></div>
			<div style="width:430px; float:right;"><p><input type="text" name="user_answer" class="contact" /><input type="hidden" name="answer" value="4d76fe9775" /></p></div>
            <div style="width:430px; float:right;"><p style="padding-top: 15px"><input class="submit" type="submit" name="contact_submitted" value="Send" /></p></div>
        </div><!--close content_item-->
      </div><!--close content-->  
    </div><!--close site_content-->  

	<div id="content_green">
	  <div class="content_green_container_box">
		<h4>Latest Blog Post</h4>
	    <p> Phasellus laoreet feugiat risus. Ut tincidunt, ante vel fermentum iaculis.</p>
		<div class="readmore">
		  <a href="#">Read more</a>
		</div><!--close readmore-->
	  </div><!--close content_green_container_box-->
      <div class="content_green_container_box">
       <h4>Latest News</h4>
	    <p> Phasellus laoreet feugiat risus. Ut tincidunt, ante vel fermentum iaculis.</p>
	    <div class="readmore">
		  <a href="#">Read more</a>
		</div><!--close readmore-->
	  </div><!--close content_green_container_box-->
      <div class="content_green_container_boxl">
		<h4>Latest Projects</h4>
	    <p> Phasellus laoreet feugiat risus. Ut tincidunt, ante vel fermentum iaculis.</p>
	    <div class="readmore">
		  <a href="#">Read more</a>
		</div><!--close readmore-->	  
	  </div><!--close content_green_container_box1-->      
	  <br style="clear:both"/>
    </div><!--close content_green-->   
</asp:Content>

