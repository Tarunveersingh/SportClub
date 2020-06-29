<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SportClub.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    
		<main id="contact_main">
			<div id="contact">
				<div class="container">
					<div class="row m-0">
						<div class="col-sm-12 p-0">
							<div class="contact_title">
								<h4>Login Area </h4>
							</div>
						</div>
					</div>
					<div class="row m-0">
						<div class="col-sm-12 p-0">
							
                                <div class="form-group">
                                    <asp:TextBox ID="txtEmail" TextMode="Email" class="form-control" placeholder="Your Email " runat="server"></asp:TextBox>

                                    <asp:RequiredFieldValidator ControlToValidate="txtEmail" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Email is Mendatory "></asp:RequiredFieldValidator>
                                                                
                                </div>
   
                                 <div class="form-group">
                                    
                                    <asp:TextBox ID="txtPassword" class="form-control" TextMode="Password" placeholder="Your Name" runat="server"></asp:TextBox>

                                    <asp:RequiredFieldValidator ControlToValidate="txtPassword" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Password is Mendatory "></asp:RequiredFieldValidator>
                                </div>

                                <div class="form-group form_button">

                                    

                                    <asp:Button ID="btnSend" class="btn btn-warning" runat="server" Text="Click for Login " OnClick="btnSend_Click"/>

                                </div>
                                <h1 id="screen" runat="server"> </h1>
						</div>
					</div>
				</div>
			</div>
		</main>



</asp:Content>
