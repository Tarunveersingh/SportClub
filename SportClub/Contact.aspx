<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="SportClub.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   

    		<style>
			.error{
				color: red;
			}
		</style>


    
		<main id="contact_main">
			<div id="contact">
				<div class="container">
					<div class="row m-0">
						<div class="col-sm-12 p-0">
							<div class="contact_title">
								<h4>Contact Us</h4>
							</div>
						</div>
					</div>
					<div class="row m-0">
						<div class="col-sm-12 p-0">
							
                                <div class="form-group">
                                    
                                    <asp:TextBox ID="txtName" class="form-control" placeholder="Your Name" runat="server"></asp:TextBox>

                                    <asp:RequiredFieldValidator ControlToValidate="txtName" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is Mendatory "></asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="txtEmail" TextMode="Email" class="form-control" placeholder="Your Email " runat="server"></asp:TextBox>

                                    <asp:RequiredFieldValidator ControlToValidate="txtEmail" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Email is Mendatory "></asp:RequiredFieldValidator>
                                    
                            
                                </div>
                                 <div class="form-group">
                                     <asp:TextBox ID="txtSubject"  class="form-control" placeholder="Your Subject" runat="server"></asp:TextBox>

                                     <asp:RequiredFieldValidator ControlToValidate="txtSubject" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Subject is Mendatory "></asp:RequiredFieldValidator>
                                    
                            
                                </div>
                                <div class="form-group">

                                    

                                    <asp:TextBox ID="txtMsg" class="form-control" PlaceHolder="Enter Message " runat="server"></asp:TextBox>

                                     <asp:RequiredFieldValidator ControlToValidate="txtMsg" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Message is Mendatory "></asp:RequiredFieldValidator>

                                </div>
                                <div class="form-group form_button">

                                    

                                    <asp:Button ID="btnSend" class="btn btn-warning" runat="server" Text="Send Message " OnClick="btnSend_Click" />

                                </div>
                                <h1 id="screen" runat="server"> </h1>
						</div>
					</div>
				</div>
			</div>
		</main>

</asp:Content>
