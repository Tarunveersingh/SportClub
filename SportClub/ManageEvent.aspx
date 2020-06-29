<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageEvent.aspx.cs" Inherits="SportClub.ManageEvent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    
    
		<main id="contact_main">
			<div id="contact">
				<div class="container">
					<div class="row m-0">
						<div class="col-sm-12 p-0">
							<div class="contact_title">
								<h4>Manage Events </h4>
							</div>
						</div>
					</div>
					<div class="row m-0">
						<div class="col-sm-12 p-0">
							
                              

                            <asp:ListView ID="ListView1" runat="server" DataKeyNames="Event_ID" DataSourceID="SqlDataSource1">
                                <AlternatingItemTemplate>
                                    <tr style="background-color: #FFFFFF;color: #284775;">
                                        <td>
                                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                                        </td>
                                        <td>
                                            <asp:Label ID="Event_IDLabel" runat="server" Text='<%# Eval("Event_ID") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="DurationLabel" runat="server" Text='<%# Eval("Duration") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="StartDateLabel" runat="server" Text='<%# Eval("StartDate") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="EndDateLabel" runat="server" Text='<%# Eval("EndDate") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="BudgetLabel" runat="server" Text='<%# Eval("Budget") %>' />
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
                                            <asp:Label ID="Event_IDLabel1" runat="server" Text='<%# Eval("Event_ID") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="DurationTextBox" runat="server" Text='<%# Bind("Duration") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="StartDateTextBox" runat="server" Text='<%# Bind("StartDate") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="EndDateTextBox" runat="server" Text='<%# Bind("EndDate") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="BudgetTextBox" runat="server" Text='<%# Bind("Budget") %>' />
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
                                            <asp:TextBox ID="DurationTextBox" runat="server" Text='<%# Bind("Duration") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="StartDateTextBox" runat="server" Text='<%# Bind("StartDate") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="EndDateTextBox" runat="server" Text='<%# Bind("EndDate") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="BudgetTextBox" runat="server" Text='<%# Bind("Budget") %>' />
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
                                            <asp:Label ID="Event_IDLabel" runat="server" Text='<%# Eval("Event_ID") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="DurationLabel" runat="server" Text='<%# Eval("Duration") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="StartDateLabel" runat="server" Text='<%# Eval("StartDate") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="EndDateLabel" runat="server" Text='<%# Eval("EndDate") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="BudgetLabel" runat="server" Text='<%# Eval("Budget") %>' />
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
                                                        <th runat="server">Event_ID</th>
                                                        <th runat="server">Name</th>
                                                        <th runat="server">Duration</th>
                                                        <th runat="server">StartDate</th>
                                                        <th runat="server">EndDate</th>
                                                        <th runat="server">Budget</th>
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
                                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                                        </td>
                                        <td>
                                            <asp:Label ID="Event_IDLabel" runat="server" Text='<%# Eval("Event_ID") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="DurationLabel" runat="server" Text='<%# Eval("Duration") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="StartDateLabel" runat="server" Text='<%# Eval("StartDate") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="EndDateLabel" runat="server" Text='<%# Eval("EndDate") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="BudgetLabel" runat="server" Text='<%# Eval("Budget") %>' />
                                        </td>
                                    </tr>
                                </SelectedItemTemplate>
                              </asp:ListView>
                            
						      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SportsCludConnectionString2 %>" DeleteCommand="DELETE FROM [EventTable] WHERE [Event_ID] = @Event_ID" InsertCommand="INSERT INTO [EventTable] ([Name], [Duration], [StartDate], [EndDate], [Budget]) VALUES (@Name, @Duration, @StartDate, @EndDate, @Budget)" SelectCommand="SELECT * FROM [EventTable] ORDER BY [Event_ID] DESC" UpdateCommand="UPDATE [EventTable] SET [Name] = @Name, [Duration] = @Duration, [StartDate] = @StartDate, [EndDate] = @EndDate, [Budget] = @Budget WHERE [Event_ID] = @Event_ID">
                                  <DeleteParameters>
                                      <asp:Parameter Name="Event_ID" Type="Int32" />
                                  </DeleteParameters>
                                  <InsertParameters>
                                      <asp:Parameter Name="Name" Type="String" />
                                      <asp:Parameter Name="Duration" Type="String" />
                                      <asp:Parameter Name="StartDate" Type="String" />
                                      <asp:Parameter Name="EndDate" Type="String" />
                                      <asp:Parameter Name="Budget" Type="String" />
                                  </InsertParameters>
                                  <UpdateParameters>
                                      <asp:Parameter Name="Name" Type="String" />
                                      <asp:Parameter Name="Duration" Type="String" />
                                      <asp:Parameter Name="StartDate" Type="String" />
                                      <asp:Parameter Name="EndDate" Type="String" />
                                      <asp:Parameter Name="Budget" Type="String" />
                                      <asp:Parameter Name="Event_ID" Type="Int32" />
                                  </UpdateParameters>
                              </asp:SqlDataSource>
                            
						</div>
					</div>
				</div>
			</div>
		</main>



</asp:Content>
