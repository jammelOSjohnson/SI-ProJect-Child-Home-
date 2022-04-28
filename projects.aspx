<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="projects.aspx.cs" Inherits="projects" %>

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
          <h2>Latest Projects</h2>
            <div class="content_container">       
			  <h3>Example 1</h3>
			  <p>identifying life experiences that increase the risks for the development of conduct problems.</p>
            </div><!--close content_container-->
            <div class="content_container">			  
			  <h3>Example 2</h3>
			  <p>understanding how life experiences, sociocultural contexts, and biological dispositions combine to develop psychopathology processes.</p>
			</div><!--close content_container-->
            <div class="content_container">       
			  <h3>Example 1</h3>
			  <p>testing the hypothesis that risk factors operate through effects on individuals’ social knowledge and the ways that individuals process social information.</p>
            </div><!--close content_container-->
            <div class="content_container">			  
			  <h3>Example 2</h3>
			  <p>evaluating a model of “switch points” for changes in adjustment trajectories at normative and non-normative transitions and for determining critical environmental features in development.</p>
			</div><!--close content_container-->
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

