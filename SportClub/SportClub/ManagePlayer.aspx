<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManagePlayer.aspx.cs" Inherits="SportClub.ManagePlayer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    
		<main id="contact_main">
			<div id="contact">
				<div class="container">
					<div class="row m-0">
						<div class="col-sm-12 p-0">
							<div class="contact_title">
								<h4> Manage Player </h4>
							</div>
						</div>
					</div>
					<div class="row m-0">
						<div class="col-sm-12 p-0">

                            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="MemberID">
                                <AlternatingItemTemplate>
                                    <tr style="background-color: #FFFFFF;color: #284775;">
                                        <td>
                                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                                        </td>
                                        <td>
                                            <asp:Label ID="MemberIDLabel" runat="server" Text='<%# Eval("MemberID") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="ContactLabel" runat="server" Text='<%# Eval("Contact") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="GameLabel" runat="server" Text='<%# Eval("Game") %>' />
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
                                            <asp:Label ID="MemberIDLabel1" runat="server" Text='<%# Eval("MemberID") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="ContactTextBox" runat="server" Text='<%# Bind("Contact") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="GameTextBox" runat="server" Text='<%# Bind("Game") %>' />
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
                                            <asp:TextBox ID="ContactTextBox" runat="server" Text='<%# Bind("Contact") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="GameTextBox" runat="server" Text='<%# Bind("Game") %>' />
                                        </td>
                                    </tr>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <tr style="background-color: #E0FFFF;color: #333333;">
                                        <td>
                                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                                        </td>
                                        <td>
                                            <asp:Label ID="MemberIDLabel" runat="server" Text='<%# Eval("MemberID") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="ContactLabel" runat="server" Text='<%# Eval("Contact") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="GameLabel" runat="server" Text='<%# Eval("Game") %>' />
                                        </td>
                                    </tr>
                                </ItemTemplate>
                                <LayoutTemplate>
                                    <table runat="server">
                                        <tr runat="server">
                                            <td runat="server">
                                                <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                                    <tr runat="server" style="background-color: #E0FFFF;color: #333333;">
                                                        <th runat="server"></th>
                                                        <th runat="server">MemberID</th>
                                                        <th runat="server">Name</th>
                                                        <th runat="server">Contact</th>
                                                        <th runat="server">Address</th>
                                                        <th runat="server">Game</th>
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
                                                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                                        <asp:NumericPagerField />
                                                        <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                                    </Fields>
                                                </asp:DataPager>
                                            </td>
                                        </tr>
                                    </table>
                                </LayoutTemplate>
                                <SelectedItemTemplate>
                                    <tr style="background-color: #E2DED6;font-weight: bold;color: #333333;">
                                        <td>
                                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                                        </td>
                                        <td>
                                            <asp:Label ID="MemberIDLabel" runat="server" Text='<%# Eval("MemberID") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="ContactLabel" runat="server" Text='<%# Eval("Contact") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="GameLabel" runat="server" Text='<%# Eval("Game") %>' />
                                        </td>
                                    </tr>
                                </SelectedItemTemplate>
                            </asp:ListView>
						    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SportsCludConnectionString %>" DeleteCommand="DELETE FROM [Player] WHERE [MemberID] = @MemberID" InsertCommand="INSERT INTO [Player] ([Name], [Contact], [Address], [Game]) VALUES (@Name, @Contact, @Address, @Game)" SelectCommand="SELECT * FROM [Player] ORDER BY [MemberID] DESC" UpdateCommand="UPDATE [Player] SET [Name] = @Name, [Contact] = @Contact, [Address] = @Address, [Game] = @Game WHERE [MemberID] = @MemberID">
                                <DeleteParameters>
                                    <asp:Parameter Name="MemberID" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="Name" Type="String" />
                                    <asp:Parameter Name="Contact" Type="String" />
                                    <asp:Parameter Name="Address" Type="String" />
                                    <asp:Parameter Name="Game" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="Name" Type="String" />
                                    <asp:Parameter Name="Contact" Type="String" />
                                    <asp:Parameter Name="Address" Type="String" />
                                    <asp:Parameter Name="Game" Type="String" />
                                    <asp:Parameter Name="MemberID" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
						</div>
					</div>
				</div>
			</div>
		</main>
</asp:Content>
