<%@ page import="javax.servlet.http.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page session="false" %>
<%
    HttpSession session = request.getSession(false);
    if (session == null || session.getAttribute("user") == null) {
        response.sendRedirect("afterindex.jsp");
        return;
    }

    String username = (String) session.getAttribute("user");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Footflair Ecommerce</title>
    <script src="https://kit.fontawesome.com/842d22c3e7.js" crossorigin="anonymous"></script>
    <link rel=" stylesheet" href="style.css">
    <style>
     






.account-options a {
  text-decoration: none;
  color: #fff;
  background-color: #f04;
  padding: 8px 12px;
  border-radius: 5px;
  transition: background-color 0.3s ease;
}

.account-options a:hover {
  background-color: #c00;
}
    </style>
</head>

<body>

    <section id="header">
        <a href="#"><img src="footflair/Logo/logo.png" class="logo" alt=""></a>
        <div class="account-options">
            
            <span>Welcome, <%= username %>!</span>
             
        </div>
        <div>
            <ul id="navbar">
                
                <li><a class="active" href="afterindex.jsp">Home</a></li>
                <li><a href="shop.html">Shop</a></li>
                <li><a href="blog.html">Blog</a></li>
                <li><a href="about.html">About</a></li>
                <li><a href="contact.html">Contact</a></li>
                <li id="lg-bag"><a href="cart.html"><i class="fa-solid fa-cart-shopping"></i></a></li>
            
                <a href="#" id="close"><i class="fa-solid fa-x"></i></a>
                <li><a href="profile1.jsp" class="profile1-link">
                    <img src="a.png" alt="profile Image" title="profile Image" width="30" height="30">
                    </a></li>
            </ul>
        </div>
        <div id="mobile">
            <a href="cart.html"><i class="fa-solid fa-cart-shopping"></i></a>
            <i id="bar" class="fas fa-outdent"></i>
        </div>
       
        
    </section>

    <section id="hero">
        <h4>Trade-in-offer</h4>
        <h2>Super value deals</h2>
        <h1>On all product</h1>
        <p>Save more with coupons & up to 60% off!</p>
        <button>Shop Now</button>
    </section>

    <section id="feature" class="section-p1">
        <div class="fe-box">
            <img src="img/features/f1.png" alt="">
            <h6>Free Shipping</h6>
        </div>
        <div class="fe-box">
            <img src="img/features/f2.png" alt="">
            <h6>Online Order</h6>
        </div>
        <div class="fe-box">
            <img src="img/features/f3.png" alt="">
            <h6>Save Money</h6>
        </div>
        <div class="fe-box">
            <img src="img/features/f4.png" alt="">
            <h6>Promotions</h6>
        </div>
        <div class="fe-box">
            <img src="img/features/f5.png" alt="">
            <h6>Happy Sell</h6>
        </div>
        <div class="fe-box">
            <img src="img/features/f6.png" alt="">
            <h6>24/7 Support</h6>
        </div>
    </section>

    <section id="product1" class="section-p1">
        <h2>Featured Products</h2>
        <p>Collection Of New Morden Design</p>
        <div class="pro-conatainer">
            <div class="pro">
                <img src="footflair/Product/Product/p1.jpg" alt="">
                <div class="des">
                    <span>Footflair</span>
                    <h5>Footflair Boots</h5>
                    <div class="star">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                    <h4>₹5000</h4>
                </div>
                <a href="#"><i class="fa-solid fa-cart-shopping cart "></i></a>
            </div>
            <div class="pro">
                <img src="footflair/Product/Product/p2.jpg" alt="">
                <div class="des">
                    <span>Footflair</span>
                    <h5>Footflair Black Carbon</h5>
                    <div class="star">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                    <h4>₹5000</h4>
                </div>
                <a href="#"><i class="fa-solid fa-cart-shopping cart "></i></a>
            </div>
            <div class="pro">
                <img src="footflair/Product/Product/p3.jpg" alt="">
                <div class="des">
                    <span>Footflair</span>
                    <h5>Footflair Girls Sandals</h5>
                    <div class="star">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                    <h4>₹5000</h4>
                </div>
                <a href="#"><i class="fa-solid fa-cart-shopping cart "></i></a>
            </div>
            <div class="pro">
                <img src="footflair/Product/Product/p4.jpg" alt="">
                <div class="des">
                    <span>Footflair</span>
                    <h5>Footflair Premium Red Shoes</h5>
                    <div class="star">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                    <h4>₹5000</h4>
                </div>
                <a href="#"><i class="fa-solid fa-cart-shopping cart "></i></a>
            </div>
            <div class="pro">
                <img src="footflair/Product/Product/p5.jpg" alt="">
                <div class="des">
                    <span>Footflair</span>
                    <h5>Footflair High Heels</h5>
                    <div class="star">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                    <h4>₹5000</h4>
                </div>
                <a href="#"><i class="fa-solid fa-cart-shopping cart "></i></a>
            </div>
            <div class="pro">
                <img src="footflair/Product/Product/p6.jpg" alt="">
                <div class="des">
                    <span>Footflair</span>
                    <h5>Footflair Heels</h5>
                    <div class="star">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                    <h4>₹5000</h4>
                </div>
                <a href="#"><i class="fa-solid fa-cart-shopping cart "></i></a>
            </div>
            <div class="pro">
                <img src="footflair/Product/Product/p7.jpg" alt="">
                <div class="des">
                    <span>Footflair</span>
                    <h5>Footflair Black Carbon Shoes</h5>
                    <div class="star">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                    <h4>₹5000</h4>
                </div>
                <a href="#"><i class="fa-solid fa-cart-shopping cart "></i></a>
            </div>
            <div class="pro">
                <img src="footflair/Product/Product/p8.jpg" alt="">
                <div class="des">
                    <span>Footflair</span>
                    <h5>Footflair Rainbow Shoes</h5>
                    <div class="star">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                    <h4>₹5000</h4>
                </div>
                <a href="#"><i class="fa-solid fa-cart-shopping cart "></i></a>
            </div>
        </div>
    </section>

    <section id="banner" class="section-m1">
        <h4>Repair Service</h4>
        <h2>Up to <span>70% Off</span> - All Shoes & All Products</h2>
        <button class="normal">Explore More</button>
    </section>

    <section id="product1" class="section-p1">
        <h2>New Arrivals</h2>
        <p>Collection Of New Morden Design</p>
        <div class="pro-conatainer">
            <div class="pro">
                <img src="footflair/Product/N_product/n1.jpg" alt="">
                <div class="des">
                    <span>Footflair</span>
                    <h5>Footflair Shoes</h5>
                    <div class="star">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                    <h4>₹5000</h4>
                </div>
                <a href="#"><i class="fa-solid fa-cart-shopping cart "></i></a>
            </div>
            <div class="pro">
                <img src="footflair/Product/N_product/n2.jpg" alt="">
                <div class="des">
                    <span>Footflair</span>
                    <h5>Footflair Yellow Shoes</h5>
                    <div class="star">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                    <h4>₹5000</h4>
                </div>
                <a href="#"><i class="fa-solid fa-cart-shopping cart "></i></a>
            </div>
            <div class="pro">
                <img src="footflair/Product/N_product/n3.jpg" alt="">
                <div class="des">
                    <span>Footflair</span>
                    <h5>Footflair</h5>
                    <div class="star">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                    <h4>₹5000</h4>
                </div>
                <a href="#"><i class="fa-solid fa-cart-shopping cart "></i></a>
            </div>
            <div class="pro">
                <img src="footflair/Product/N_product/n4.jpg" alt="">
                <div class="des">
                    <span>Footflair</span>
                    <h5>Footflair Dark Knight Shoes</h5>
                    <div class="star">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                    <h4>₹5000</h4>
                </div>
                <a href="#"><i class="fa-solid fa-cart-shopping cart "></i></a>
            </div>
            <div class="pro">
                <img src="footflair/Product/N_product/n5.jpg" alt="">
                <div class="des">
                    <span>Footflair</span>
                    <h5>Footflair White Red</h5>
                    <div class="star">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                    <h4>₹5000</h4>
                </div>
                <a href="#"><i class="fa-solid fa-cart-shopping cart "></i></a>
            </div>
            <div class="pro">
                <img src="footflair/Product/N_product/n6.jpg" alt="">
                <div class="des">
                    <span>Footflair</span>
                    <h5>Footflair Balck Red</h5>
                    <div class="star">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                    <h4>₹5000</h4>
                </div>
                <a href="#"><i class="fa-solid fa-cart-shopping cart "></i></a>
            </div>
            <div class="pro">
                <img src="footflair/Product/N_product/n7.jpg" alt="">
                <div class="des">
                    <span>Footflair</span>
                    <h5>Footflair Sneakers</h5>
                    <div class="star">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                    <h4>₹5000</h4>
                </div>
                <a href="#"><i class="fa-solid fa-cart-shopping cart "></i></a>
            </div>
            <div class="pro">
                <img src="footflair/Product/N_product/n8.jpg" alt="">
                <div class="des">
                    <span>Footflair</span>
                    <h5>Footflair Boots</h5>
                    <div class="star">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                    <h4>₹5000</h4>
                </div>
                <a href="#"><i class="fa-solid fa-cart-shopping cart "></i></a>
            </div>
        </div>
    </section>

    <section id="sm-banner" class="section-p1">
        <div class="banner-box">
            <h4>Crazy deals</h4>
            <h2>buy 1 get 1 free</h2>
            <span>The best classic shoes is on sale at footflair</span>
            <button class="white">Learn more</button>
        </div>
        <div class="banner-box banner-box2">
            <h4>For Everyone</h4>
            <h2>Upcoming seasons</h2>
            <span>The best classic shoes is on sale at footflair</span>
            <button class="white">Collection</button>
        </div>
    </section>

    <section id="banner3">
        <div class="banner-box">
            <h2>SEASONAL SALE</h2>
            <h3>Winter Collection -60% OFF</h3>
        </div>
        <div class="banner-box banner-box2">
            <h2>NEW FOOTWEAR COLLECTION</h2>
            <h3>For Everyone</h3>
        </div>
        <div class="banner-box banner-box3">
            <h2>SHOES</h2>
            <h3>New Trendy Prints</h3>
        </div>
    </section>

    <section id="newsletter" class="section-p1 section-m1">
        <div class="newstext">
            <h4>Sign Up For Newsletters</h4>
            <p>Get E-mail updates about our latest shop and <span>special offers.</span>
            </p>
        </div>
        <div class="form">
            <input type="text" placeholder="Your email address">
            <button class="normal">Sign Up</button>
        </div>
    </section>

    <footer class="section-p1">
        <div class="col">
            <h4>Contact</h4>
            <p><strong>Adress:</strong>Itm University,Gwalior,(M.P),475001</p>
            <p><strong>Phone:</strong>+91 8539046887 / +91 9027616709</p>
            <p><strong>Hours:</strong>10:00 Am - 18:00 Pm, Mon - Sat</p>
            <div class="follow">
                <h4>Follow us</h4>
                <div class="icon">
                    <i class="fab fa-facebook-f"></i>
                    <i class="fab fa-twitter"></i>
                    <i class="fab fa-instagram"></i>
                    <i class="fab fa-pinterest-p"></i>
                    <i class="fab fa-youtube"></i>
                </div>
                <img class="logo" src="footflair/Logo/logo.png" alt="">
            </div>
        </div>

        <div class="col">
            <h4>About</h4>
            <a href="#">About us</a>
            <a href="#">Delivery Information</a>
            <a href="#">Privacy Policy</a>
            <a href="#">Term & Condition</a>
            <a href="#">Contact us</a>
        </div>

        <div class="col">
            <h4>My Account</h4>
            <a href="#">Sign In</a>
            <a href="#">View Cart</a>
            <a href="#">My Wishlist</a>
            <a href="#">Track My Order</a>
            <a href="#">Help</a>
        </div>

        <div class="col install">
            <h4>Install App</h4>
            <p>From App Store or Google Play</p>
            <div class="row">
                <img src="img/pay/app.jpg" alt="">
                <img src="img/pay/play.jpg" alt="">
            </div>
            <p>Secured Payment Gateways</p>
            <img src="img/pay/pay.png" alt="">
        </div>

        <div class="Copyright">
            <p>© 2024, Dhruv etc - HTML CSS Ecommerce All Right Reserved</p>
        </div>
    </footer>

    <script src="script.js"></script>
</body>

</html>