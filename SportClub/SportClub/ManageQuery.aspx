<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageQuery.aspx.cs" Inherits="SportClub.ManageQuery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    	<main id="contact_main">
			<div id="contact">
				<div class="container">
					<div class="row m-0">
						<div class="col-sm-12 p-0">
							<div class="contact_title">
								<h4>Manage Queries </h4>
							</div>
						</div>
					</div>
					<div class="row m-0">
						<div class="col-sm-12 p-0">
                            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                                <AlternatingItemTemplate>
                                    <tr style="background-color: #FFFFFF;color: #284775;">
                                        <td>
                                            <asp:Label ID="Contact_IDLabel" runat="server" Text='<%# Eval("Contact_ID") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="SubjectLabel" runat="server" Text='<%# Eval("Subject") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="MsgLabel" runat="server" Text='<%# Eval("Msg") %>' />
                                        </td>
                                    </tr>
                                </AlternatingItemTemplate>
                                <EditItemTemplate>
                                    <tr style="background-color: #999999;">
                                        <td>
                                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                                        </td>
                                        <td>
                                            <asp:Label ID="Contact_IDLabel1" runat="server" Text='<%# Eval("Contact_ID") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="SubjectTextBox" runat="server" Text='<%# Bind("Subject") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="MsgTextBox" runat="server" Text='<%# Bind("Msg") %>' />
                                        </td>
                                    </tr>
                                </EditItemTemplate>
                                <EmptyDataTemplate>
                                    <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                                        <tr>
                                            <td>No data was returned.</td>
                                        </tr>
                                    </table>
                                </EmptyDataTemplate>
                                <InsertItemTemplate>
                                    <tr style="">
                                        <td>
                                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>
                                            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="SubjectTextBox" runat="server" Text='<%# Bind("Subject") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="MsgTextBox" runat="server" Text='<%# Bind("Msg") %>' />
                                        </td>
                                    </tr>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <tr style="background-color: #E0FFFF;color: #333333;">
                                        <td>
                                            <asp:Label ID="Contact_IDLabel" runat="server" Text='<%# Eval("Contact_ID") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="SubjectLabel" runat="server" Text='<%# Eval("Subject") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="MsgLabel" runat="server" Text='<%# Eval("Msg") %>' />
                                        </td>
                                    </tr>
                                </ItemTemplate>
                                <LayoutTemplate>
                                    <table runat="server">
                                        <tr runat="server">
                                            <td runat="server">
                                                <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                                    <tr runat="server" style="background-color: #E0FFFF;color: #333333;">
                                                        <th runat="server">Contact_ID</th>
                                                        <th runat="server">Name</th>
                                                        <th runat="server">Email</th>
                                                        <th runat="server">Subject</th>
                                                        <th runat="server">Msg</th>
                                                    </tr>
                                                    <tr id="itemPlaceholder" runat="server">
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr runat="server">
                                            <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
                                                <asp:DataPager ID="DataPager1" runat="server">
                                                    <Fields>
                                                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                                    </Fields>
                                                </asp:DataPager>
                                            </td>
                                        </tr>
                                    </table>
                                </LayoutTemplate>
                                <SelectedItemTemplate>
                                    <tr style="background-color: #E2DED6;font-weight: bold;color: #333333;">
                                        <td>
                                            <asp:Label ID="Contact_IDLabel" runat="server" Text='<%# Eval("Contact_ID") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="SubjectLabel" runat="server" Text='<%# Eval("Subject") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="MsgLabel" runat="server" Text='<%# Eval("Msg") %>' />
                                        </td>
                                    </tr>
                                </SelectedItemTemplate>
                            </asp:ListView>
                           
						    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SportsCludConnectionString3 %>" SelectCommand="SELECT * FROM [ContactTable] ORDER BY [Contact_ID] DESC"></asp:SqlDataSource>
                           
						</div>
					</div>
				</div>
			</div>
		</main>


</asp:Content>
