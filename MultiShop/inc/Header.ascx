﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Header.ascx.cs" Inherits="MultiShop.Header" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>MultiShop - Online Shop Website Template</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
</head>
<body>
    <!-- Topbar Start -->
    <div class="container-fluid">
        <div class="row bg-secondary py-1 px-xl-5">
            <div class="col-lg-6 d-none d-lg-block">
                <div class="d-inline-flex align-items-center h-100">
                    <a class="text-body mr-3" href="#">About</a> <a class="text-body mr-3" href="">Contact</a> <a class="text-body mr-3" href="#">Help</a> <a class="text-body mr-3" href="#">FAQs</a>
                </div>
            </div>
            <div class="col-lg-6 text-center text-lg-right">
                <div class="d-inline-flex align-items-center">
                    <div class="btn-group">
                        <button type="button" class="btn btn-sm btn-light dropdown-toggle" data-toggle="dropdown">
                            <% if (Session["UserName"] == null)
                               { %>
                                     My Account
                            <% }
                               else
                               { %>
                                     Welcome, <%= Session["UserName"].ToString() %>
                            <% } %>
                        </button>
                        <div class="dropdown-menu dropdown-menu-right">
                            <% if (Session["UserName"] == null)
                               { %>
                            <a href="Login.aspx" class="dropdown-item">Sign in</a>
                            <a href="Registration.aspx" class="dropdown-item">Sign up</a>
                            <% }
                               else
                               { %>
                            <a href="Profile.aspx" class="dropdown-item">Profile</a>
                            <a href="Logout.aspx" class="dropdown-item">Logout</a>
                            <% } %>
                        </div>

                    </div>
                    <div class="btn-group mx-2">
                        <button type="button" class="btn btn-sm btn-light dropdown-toggle" data-toggle="dropdown">
                            USD
                        </button>
                        <div class="dropdown-menu dropdown-menu-right">
                            <button class="dropdown-item" type="button">
                                EUR
                            </button>
                            <button class="dropdown-item" type="button">
                                GBP
                            </button>
                            <button class="dropdown-item" type="button">
                                CAD
                            </button>
                        </div>
                    </div>
                    <div class="btn-group">
                        <button type="button" class="btn btn-sm btn-light dropdown-toggle" data-toggle="dropdown">
                            EN
                        </button>
                        <div class="dropdown-menu dropdown-menu-right">
                            <button class="dropdown-item" type="button">
                                FR
                            </button>
                            <button class="dropdown-item" type="button">
                                AR
                            </button>
                            <button class="dropdown-item" type="button">
                                RU
                            </button>
                        </div>
                    </div>
                </div>
                <div class="d-inline-flex align-items-center d-block d-lg-none">
                    <a href="#" class="btn px-0 ml-2"><i class="fas fa-heart text-dark"></i><span class="badge text-dark border border-dark rounded-circle" style="padding-bottom: 2px;">0</span> </a>
                    <a href="" class="btn px-0 ml-2"><i class="fas fa-shopping-cart text-dark"></i><span class="badge text-dark border border-dark rounded-circle" style="padding-bottom: 2px;">0</span> </a>
                </div>
            </div>
        </div>
        <div class="row align-items-center bg-light py-3 px-xl-5 d-none d-lg-flex">
            <div class="col-lg-4">
                <a href="#" class="text-decoration-none"><span class="h1 text-uppercase text-primary bg-dark px-2">
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                </span><span class="h1 text-uppercase text-dark bg-primary px-2 ml-n1">
                    <asp:Label ID="Label2" runat="server" Text=""></asp:Label></span> </a>
            </div>
            <div class="col-lg-4 col-6 text-left">


                <div class="input-group">
                    <asp:TextBox ID="txtSearch" CssClass="form-control" runat="server" placeholder="Search for products"></asp:TextBox>
                    <div class="input-group-append">
                        <asp:Button ID="btnSearch" CssClass="btn btn-primary" runat="server" Text="search" OnClick="btnSearch_Click"/>

                    </div>
                </div>

            </div>
            <div class="col-lg-4 col-6 text-right">
                <p class="m-0">
                    Customer Service
                </p>
                <h5 class="m-0">+<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></h5>
            </div>
        </div>
    </div>
    <!-- Topbar End -->


    <!-- Navbar Start -->
    <div class="container-fluid bg-dark mb-30">
        <div class="row px-xl-5">
            <div class="col-lg-3 d-none d-lg-block">
                <a class="btn d-flex align-items-center justify-content-between bg-primary w-100" data-toggle="collapse" href="#navbar-vertical" style="height: 65px; padding: 0 30px;">
                    <h6 class="text-dark m-0"><i class="fa fa-bars mr-2"></i>Categories</h6>
                    <i class="fa fa-angle-down text-dark"></i></a>
                <nav class="collapse position-absolute navbar navbar-vertical navbar-light align-items-start p-0 bg-light" id="navbar-vertical" style="width: calc(100% - 30px); z-index: 999;">
                    <div class="navbar-nav w-100">
                        <div class="nav-item dropdown dropright">
                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Dresses <i class="fa fa-angle-right float-right mt-1"></i></a>
                            <div class="dropdown-menu position-absolute rounded-0 border-0 m-0">
                                <asp:Button ID="Men" runat="server" Text="Men's Dresses" OnClick="Men_Click" />
                                <asp:Button ID="Women" runat="server" Text="Women's Dresses" OnClick="Women_Click"  />
                                <asp:Button ID="Baby" runat="server" Text="Baby's Dresses" OnClick="Baby_Click"   />
                            </div>
                        </div>
                        
                        <asp:Button ID="Shirts" runat="server" Text="Shirts" CssClass="nav-item nav-link" OnClick="Shirts_Click"  />
                        <asp:Button ID="Jeans" runat="server" Text="Jeans"  CssClass="nav-item nav-link" OnClick="Jeans_Click" />
                        <asp:Button ID="Swimwear" runat="server" Text="Swimwear" CssClass="nav-item nav-link" OnClick="Swimwear_Click"  />
                        <asp:Button ID="Sleepwear" runat="server" Text="Sleepwear" CssClass="nav-item nav-link" OnClick="Sleepwear_Click"  />
                        <asp:Button ID="Sportswear" runat="server" Text="Sportswear" CssClass="nav-item nav-link" OnClick="Sportswear_Click"  />
                        <asp:Button ID="Jumpsuits" runat="server" Text="Jumpsuits" CssClass="nav-item nav-link" OnClick="Jumpsuits_Click"  />
                        <asp:Button ID="Blazers" runat="server" Text="Blazers" CssClass="nav-item nav-link" OnClick="Blazers_Click"  />
                        <asp:Button ID="Jackets" runat="server" Text="Jackets" CssClass="nav-item nav-link" OnClick="Jackets_Click"  />
                        <asp:Button ID="ShoesButton" runat="server" Text="Shoes" CssClass="nav-item nav-link" OnClick="ShoesButton_Click"  />

                    </div>
                </nav>
            </div>
            <div class="col-lg-9">
                <nav class="navbar navbar-expand-lg bg-dark navbar-dark py-3 py-lg-0 px-0">
                    <a href="#" class="text-decoration-none d-block d-lg-none"><span class="h1 text-uppercase text-dark bg-light px-2">Multi</span> <span class="h1 text-uppercase text-light bg-primary px-2 ml-n1">Shop</span> </a>
                    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                        <div class="navbar-nav mr-auto py-0">
                            <a href="MultiShop.aspx" class="nav-item nav-link active">Home</a> <a href="shop.aspx" class="nav-item nav-link">Shop</a> <a href="myorder.aspx" class="nav-item nav-link">My Order</a>
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Pages <i class="fa fa-angle-down mt-1"></i></a>
                                <div class="dropdown-menu bg-primary rounded-0 border-0 m-0">
                                    <a href="cart.aspx" class="dropdown-item">Shopping Cart</a> <a href="checkout.aspx" class="dropdown-item">Checkout</a>
                                </div>
                            </div>
                            <a href="contact.aspx" class="nav-item nav-link">Contact</a>
                        </div>
                        <div class="navbar-nav ml-auto py-0 d-none d-lg-block">
                            <a href="AddToWishlist.aspx" class="btn px-0">
                                <i class="fas fa-heart text-primary"></i>
                                <span id="wishlistCountBadge" class="badge text-secondary border border-secondary rounded-circle" style="padding-bottom: 2px;">0</span>
                            </a>
                            <a href="AddToCart.aspx" class="btn px-0 ml-3">
                                <i class="fas fa-shopping-cart text-primary"></i>
                                <span id="cartCountBadge" class="badge text-secondary border border-secondary rounded-circle" style="padding-bottom: 2px;">0</span>
                            </a>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
    </div>
    <!-- Navbar End -->



    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script>
        function updateBadgeCounts() {
            $.ajax({
                url: 'GetBadgeCounts.aspx',
                method: 'GET',
                dataType: 'json',
                success: function (response) {
                    $('#wishlistCountBadge').text(response.wishlistCount);
                    $('#cartCountBadge').text(response.cartCount);
                },
                error: function (xhr, status, error) {
                    console.error('Error fetching badge counts:', error);
                }
            });
        }

        $(document).ready(function () {
            updateBadgeCounts();
        });
    </script>
