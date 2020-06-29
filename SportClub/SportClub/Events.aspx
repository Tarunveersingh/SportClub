<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Events.aspx.cs" Inherits="SportClub.Events" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    
    
		<main id="contact_main">
			<div id="contact">
				<div class="container">
					<div class="row m-0">
						<div class="col-sm-12 p-0">
							<div class="contact_title">
								<h4>Add Events  </h4>
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
                                    
                                    <asp:TextBox ID="txtDuration" TextMode="Number" class="form-control" placeholder="Duration " runat="server"></asp:TextBox>

                                    <asp:RequiredFieldValidator ControlToValidate="txtDuration" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Duration is Mendatory "></asp:RequiredFieldValidator>
                                    
                            
                                </div>
                                 <div class="form-group">

                                     <asp:TextBox ID="txtStartDate"  class="form-control" placeholder="Start Date " runat="server"></asp:TextBox>

                                     <asp:RequiredFieldValidator ControlToValidate="txtStartDate" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Date is Mendatory "></asp:RequiredFieldValidator>
                                    
                            
                                </div>

                                 <div class="form-group">

                                     <asp:TextBox ID="txtEndDate"  class="form-control" placeholder="End Date " runat="server"></asp:TextBox>

                                     <asp:RequiredFieldValidator ControlToValidate="txtEndDate" ID="RequiredFieldValidator5" runat="server" ErrorMessage="End Date is Mendatory "></asp:RequiredFieldValidator>
                                    
                            
                                </div>



                                <div class="form-group">

                                    

                                    <asp:TextBox ID="txtBudget" class="form-control" TextMode="Number" PlaceHolder="Enter Budget " runat="server"></asp:TextBox>

                                     <asp:RequiredFieldValidator ControlToValidate="txtBudget"  ID="RequiredFieldValidator4" runat="server" ErrorMessage="Budget is Mendatory "></asp:RequiredFieldValidator>

                                </div>
                                <div class="form-group form_button">

                                    

                                    <asp:Button ID="btnSend" class="btn btn-warning" runat="server" Text="Record Event  " OnClick="btnSend_Click" />

                                </div>
                                <h1 id="screen" runat="server"> </h1>
						</div>
					</div>
				</div>
			</div>
		</main>

</asp:Content>
