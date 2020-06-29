<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Player.aspx.cs" Inherits="SportClub.Player" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    
    
		<main id="contact_main">
			<div id="contact">
				<div class="container">
					<div class="row m-0">
						<div class="col-sm-12 p-0">
							<div class="contact_title">
								<h4>Register Player </h4>
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
                                    <asp:TextBox ID="txtContact" TextMode="Number" class="form-control" placeholder="Your Contact " runat="server"></asp:TextBox>

                                    <asp:RequiredFieldValidator ControlToValidate="txtContact" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Contact is Mendatory "></asp:RequiredFieldValidator>
                                    
                            
                                </div>
                                 <div class="form-group">

                                     <asp:TextBox ID="txtAddress"  class="form-control" placeholder="Your Address" runat="server"></asp:TextBox>

                                     <asp:RequiredFieldValidator ControlToValidate="txtAddress" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Address is Mendatory "></asp:RequiredFieldValidator>
                                    
                            
                                </div>
                                <div class="form-group">

                                    

                                    <asp:TextBox ID="txtGame" class="form-control" PlaceHolder="Enter Game " runat="server"></asp:TextBox>

                                     <asp:RequiredFieldValidator ControlToValidate="txtGame" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Game is Mendatory "></asp:RequiredFieldValidator>

                                </div>
                                <div class="form-group form_button">

                                    

                                    <asp:Button ID="btnSend" class="btn btn-warning" runat="server" Text="Register Member " OnClick="btnSend_Click"  />

                                </div>
                                <h1 id="screen" runat="server"> </h1>
						</div>
					</div>
				</div>
			</div>
		</main>

</asp:Content>
