<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="gallery.aspx.cs" Inherits="SportClub.gallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    
		<main>
			            <div class="container-fluid p-0 resturant_gallery">
                <div class="container resturant_gallery_container resturant_special_menu_container">
                    <div class="row m-0 resturant_gallery_row">
                        <div class="col-sm-12 p-0 resturant_gallery_heading">
                            <h3>Gallery</h3>
                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting</p>
                        </div>
                        <div class="col-sm-12 p-0 resturant_special_menu_col">
                            <div class="resturant_special_menu_tabs">
                                <button class="btn btn-default filter-button" data-filter="all">All</button>
                                <button class="btn btn-default filter-button" data-filter="cat1">Category 1</button>
                                <button class="btn btn-default filter-button" data-filter="cat2">Category 2</button>
                                <button class="btn btn-default filter-button" data-filter="cat3">Category 3</button>
                            </div>
                        </div>
                        <div class="col-sm-12 col-md-4 filter cat2 resturant_gallery_image resturant_special_menu_image">
                            <img src="images/gallery-1.jpg" class="menu_image"/>
                            
                        </div>
                        <div class="col-sm-12 col-md-4 filter cat1 lunch resturant_gallery_image resturant_special_menu_image">
                            <img src="images/gallery-2.jpg" class="menu_image"/>
                            
                        </div>
                        <div class="col-sm-12 col-md-4 filter cat2 resturant_gallery_image resturant_special_menu_image">
                            <img src="images/gallery-3.jpg" class="menu_image"/>
                           
                        </div>
                        <div class="col-sm-12 col-md-4 filter cat3 resturant_gallery_image resturant_special_menu_image">
                            <img src="images/gallery-4.jpg" class="menu_image"/>
                            
                        </div>
                        <div class="col-sm-12 col-md-4 filter cat1 resturant_gallery_image resturant_special_menu_image">
                            <img src="images/gallery-5.jpg" class="menu_image"/>
                            
                        </div>
                        <div class="col-sm-12 col-md-4 filter cat2 resturant_gallery_image resturant_special_menu_image">
                            <img src="images/gallery-6.jpg" class="menu_image"/>
                            
                        </div>
                    </div>
                </div>
            </div>
		</main>


</asp:Content>
