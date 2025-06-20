﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Shop.Master" AutoEventWireup="true" CodeBehind="Buy_Product.aspx.cs" Inherits="MultiShop.admin.Booking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
<asp:Content ID="Content5" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <%@ Register Src="~/admin/inc/header.ascx" TagName="Header" TagPrefix="uc" %>
    <uc:Header runat="server" />
</asp:Content>

<asp:Content ID="Content6" runat="server" contentplaceholderid="ContentPlaceHolder2">
          
    
    <!DOCTYPE html>
    <html>
    <head>
        <title>Admin Panel - Users</title>
        <style>
            .Activate {
                padding: 5px 10px;
                border-radius: 5px;
                background-color: green; 
                color: white; 
            }

            .Deactivate {
                padding: 5px 10px;
                border-radius: 5px;
                background-color: red; 
                color: white; 
            }
             .delete {
                padding: 5px 10px;
                border-radius: 5px;
                background-color: palegreen; 
                color: white; 
            }
        </style>
    </head>
    <body>
        <div class="container-fluid admin-panel-rooms__main-content" id="admin-panel-content">
            <div class="row main-content">
                <div class="col-lg-10 ms-auto p-4">
                    <h3 class="mb-4">Users</h3>
                    <div class="card border-0 shadow-sm mb-4">
                        <div class="card-body">
                            <!-- serach box -->
                            <div class="text-end mb-3">
                                <input type="text" oninput="search_user(this.value)" class="form-control shadow-none w-25 ms-auto" placeholder="type to search...">
                            </div>
                            <div class="table-responsive">
                                <table class="table table-hover border" style="min-width: 1900px;">
                                    <thead class="sticky-top">
                                        <tr class="bg-dark text-light">
                                            <th>#</th>
                                            <th>User</th>
                                            <th>Order Id</th>
                                            <th>Payment Id</th>
                                            <th>Amount</th>
                                            <th>Status</th>
                                            <th>Date Time</th>
                                            <th>Remove User</th>
                                            <th>FirstName</th>
                                            <th>Lastname</th>
                                            <th>Email</th>
                                            <th>Mobile No</th>
                                            <th>Address1</th>
                                            <th>Address2</th>
                                            <th>Country</th>
                                            <th>State</th>
                                            <th>City</th>
                                            <th>Pincode</th>                                         
                                        </tr>
                                    </thead>
                                    <tbody id="users-data">
                                        <asp:Repeater ID="UserRepeater" runat="server">
                                            <ItemTemplate>
                                                <tr>
                                                    <td><%#Eval("Id") %></td>
                                                    <td><%# Eval("User") %></td>
                                                    <td><%# Eval("Orderid") %></td>
                                                    <td><%# Eval("Paymentid") %></td>
                                                    <td><%# Eval("Amount") %></td>
                                                    <td><%# Eval("Status") %></td>
                                                    <td><%# Eval("Date_Time") %></td>
                                                    <td>
                                                         <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" CommandArgument='<%# Eval("Id") %>' CssClass="delete" >Delete</asp:LinkButton>
                                                    </td>                                                              
                                                    <td><%# Eval("Firstname") %></td>
                                                    <td><%# Eval("Lastname") %></td>
                                                    <td><%# Eval("Email") %></td>
                                                    <td><%# Eval("Mobile_no") %></td>
                                                    <td><%# Eval("Address_1") %></td>
                                                    <td><%# Eval("Address_2") %></td>
                                                    <td><%# Eval("Country") %></td>
                                                    <td><%# Eval("State") %></td>
                                                    <td><%# Eval("City") %></td>
                                                    <td><%# Eval("Pincode") %></td>
                                                    
                                                </tr>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
    </html>
                                                        
               

</asp:Content>


