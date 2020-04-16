﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ListOfChampions.aspx.vb" Inherits="TheSportsEngine2017.ListOfChampions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <!-- Site Title-->
    <title>Standings</title>
    <meta name="format-detection" content="telephone=no" />
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, user-scalable=1"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta charset="utf-8" />
    <link rel="icon" href="site/images/favicon.ico" type="image/x-icon" />
    <!-- Stylesheets-->
    <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Kanit:300,400,500,500i,600,900%7CRoboto:400,900"/>
    <link rel="stylesheet" href="site/css/bootstrap.css"/>
    <link rel="stylesheet" href="site/css/fonts.css"/>
    <link rel="stylesheet" href="site/css/style.css" />
    <style>.ie-panel{display: none;background: #212121;padding: 10px 0;box-shadow: 3px 3px 5px 0 rgba(0,0,0,.3);clear: both;text-align:center;position: relative;z-index: 1;} html.ie-10 .ie-panel, html.lt-ie-10 .ie-panel {display: block;}</style>
  </head>
<body>
    <form id="form1" runat="server">
    <div class="ie-panel"><a href="http://windows.microsoft.com/en-US/internet-explorer/"><img src="site/images/ie8-panel/warning_bar_0000_us.jpg" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today."></a></div>
    <div id="preloader">
      <div class="preloader-body">
        <div class="preloader-item"></div>
      </div>
    </div>
    <!-- Page-->
    <div class="page">
      <!-- Page Header-->
      <header class="section page-header rd-navbar-dark">
        <!-- RD Navbar-->
        <div class="rd-navbar-wrap">
          <nav class="rd-navbar rd-navbar-classic" data-layout="rd-navbar-fixed" data-sm-layout="rd-navbar-fixed" data-md-layout="rd-navbar-fixed" data-md-device-layout="rd-navbar-fixed" data-lg-layout="rd-navbar-fixed" data-lg-device-layout="rd-navbar-fixed" data-xl-layout="rd-navbar-static" data-xl-device-layout="rd-navbar-static" data-xxl-layout="rd-navbar-static" data-xxl-device-layout="rd-navbar-static" data-lg-stick-up-offset="166px" data-xl-stick-up-offset="166px" data-xxl-stick-up-offset="166px" data-lg-stick-up="true" data-xl-stick-up="true" data-xxl-stick-up="true">
            <div class="rd-navbar-panel">
              <!-- RD Navbar Toggle-->
              <button class="rd-navbar-toggle" data-rd-navbar-toggle=".rd-navbar-main"><span></span></button>
              <!-- RD Navbar Panel-->
              <div class="rd-navbar-panel-inner container">
                <div class="rd-navbar-collapse rd-navbar-panel-item rd-navbar-panel-item-left">
                  <!-- Owl Carousel-->
                  <div class="owl-carousel-navbar owl-carousel-inline-outer">
                    <div class="owl-inline-nav">
                      <button class="owl-arrow owl-arrow-prev"></button>
                      <button class="owl-arrow owl-arrow-next"></button>
                    </div>
                    <div class="owl-carousel-inline-wrap">
                      <div class="owl-carousel owl-carousel-inline" data-items="1" data-dots="false" data-nav="true" data-autoplay="true" data-autoplay-speed="3200" data-stage-padding="0" data-loop="true" data-margin="10" data-mouse-drag="false" data-touch-drag="false" data-nav-custom=".owl-carousel-navbar">
                        <%= Session("BootstrapScores") %>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="rd-navbar-panel-item rd-navbar-panel-item-right">
                  <ul class="list-inline list-inline-bordered">
                  </ul>
                </div>
                <div class="rd-navbar-collapse-toggle rd-navbar-fixed-element-1" data-rd-navbar-toggle=".rd-navbar-collapse"><span></span></div>
              </div>
            </div>
            <div class="rd-navbar-main">
              <div class="rd-navbar-main-top">
                <div class="rd-navbar-main-container container">
                  <!-- RD Navbar Brand-->
                  <div class="rd-navbar-brand"><a class="brand" href="../landing"><img class="brand-logo" src="site/images/LOC/DrPepper.png" alt="" width="156" height="100"/></a>
                  </div>
                  <!-- RD Navbar List-->
                  <ul class="rd-navbar-list">
                    <li class="rd-navbar-list-item"><a class="rd-navbar-list-link" href="#"><img src="site/images/partners-1-inverse-75x42.png" alt="" width="75" height="42"/></a></li>
                    <li class="rd-navbar-list-item"><a class="rd-navbar-list-link" href="#"><img src="site/images/partners-2-inverse-88x45.png" alt="" width="88" height="45"/></a></li>
                    <li class="rd-navbar-list-item"><a class="rd-navbar-list-link" href="#"><img src="site/images/partners-3-inverse-79x52.png" alt="" width="79" height="52"/></a></li>
                  </ul>
                  <!-- RD Navbar Search REMOVED SPACING, LEFT DIVS FOR SPACING PURPOSES -->
                  <div class="rd-navbar-search">
                    <button class="rd-navbar-search-toggle" data-rd-navbar-toggle=".rd-navbar-search"><span></span></button>
                    <form class="rd-search" action="search-results.html" data-search-live="rd-search-results-live" method="GET">
                      <div class="form-wrap">
                        <div class="rd-search-results-live" id="rd-search-results-live"></div>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
              <div class="rd-navbar-main-bottom rd-navbar-darker">
                <div class="rd-navbar-main-container container">
                  <!-- RD Navbar Nav-->
                    <ul class="rd-navbar-nav">
                        <%= Session("menuListOfChampions") %>

                        <li class="rd-nav-item"><a class="rd-nav-link" href="#">Home</a>
                            <ul class="rd-menu rd-navbar-dropdown">
                                <li class="rd-dropdown-item"><a class="rd-dropdown-link" href="#">Niche Templates</a>
                                    <ul class="rd-menu rd-navbar-dropdown">
                                        <li class="rd-dropdown-item"><a class="rd-dropdown-link" href="../soccer">Soccer</a>
                                        </li>
                                        <li class="rd-dropdown-item"><a class="rd-dropdown-link" href="../baseball">Baseball</a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="rd-dropdown-item"><a class="rd-dropdown-link" href="#">Home Types</a>
                                    <ul class="rd-menu rd-navbar-dropdown">
                                        <li class="rd-dropdown-item"><a class="rd-dropdown-link" href="index.html">Home Soccer</a>
                                        </li>
                                        <li class="rd-dropdown-item"><a class="rd-dropdown-link" href="home-baseball.html">Home Baseball</a>
                                        </li>
                                   </ul>
                                </li>
                            </ul>
                        </li>
                        <li class="rd-nav-item"><a class="rd-nav-link" href="#">State Champions</a>
                            <article class="rd-menu rd-navbar-megamenu rd-megamenu-2-columns context-light">
                                <div class="rd-megamenu-main">
                                                <div class="rd-megamenu-item rd-megamenu-item-nav">
                                                    <!-- Heading Component-->
                                                <article class="heading-component heading-component-simple">
                                                    <div class="heading-component-inner">
                                                        <h5 class="heading-component-title">STATES</h5>
                                                    </div>
                                                </article>
                                                <div class="rd-megamenu-list-outer">
                                                    <ul class="rd-megamenu-list">
                                                        <li class="rd-megamenu-list-item"><a class="rd-megamenu-list-link" href="ListOfChampions.aspx?st=AL">Alabama</a></li>
                                                        <li class="rd-megamenu-list-item"><a class="rd-megamenu-list-link" href="ListOfChampions.aspx?st=AZ">Arizona</a></li>
                                                        <li class="rd-megamenu-list-item"><a class="rd-megamenu-list-link" href="ListOfChampions.aspx?st=CO">Colorado</a></li>
                                                        <li class="rd-megamenu-list-item"><a class="rd-megamenu-list-link" href="ListOfChampions.aspx?st=GA">Georgia</a></li>
                                                        <li class="rd-megamenu-list-item"><a class="rd-megamenu-list-link" href="ListOfChampions.aspx?st=HI">Hawaii</a></li>
                                                        <li class="rd-megamenu-list-item"><a class="rd-megamenu-list-link" href="ListOfChampions.aspx?st=IL">Illinois</a></li>
                                                        <li class="rd-megamenu-list-item"><a class="rd-megamenu-list-link" href="ListOfChampions.aspx?st=IN">Indiana</a></li>
                                                    </ul>
                                                    <ul class="rd-megamenu-list">
                                                        <li class="rd-megamenu-list-item"><a class="rd-megamenu-list-link" href="ListOfChampions.aspx?st=KY">Kentucky</a></li>
                                                        <li class="rd-megamenu-list-item"><a class="rd-megamenu-list-link" href="ListOfChampions.aspx?st=MI">Michigan</a></li>
                                                        <li class="rd-megamenu-list-item"><a class="rd-megamenu-list-link" href="ListOfChampions.aspx?st=MO">Missouri</a></li>
                                                        <li class="rd-megamenu-list-item"><a class="rd-megamenu-list-link" href="ListOfChampions.aspx?st=OK">Oklahoma</a></li>
                                                        <li class="rd-megamenu-list-item"><a class="rd-megamenu-list-link" href="ListOfChampions.aspx?st=TX">Texas</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                                                                <div class="rd-megamenu-item rd-megamenu-item-content">
                                                                                  <!-- Heading Component-->
                                                                                  <article class="heading-component heading-component-simple">
                                                                                    <div class="heading-component-inner">
                                                                                      <h5 class="heading-component-title">Latest News
                                                                                      </h5><a class="button button-xs button-gray-outline" href="news-1.html">See all News</a>
                                                                                    </div>
                                                                                  </article>
                                                                                  <div class="row row-20">
                                                                                    <div class="col-lg-6">
                                                                                            <!-- Post Classic-->
                                                                                            <article class="post-classic">
                                                                                              <div class="post-classic-aside"><a class="post-classic-figure" href="blog-post.html"><img src="site/images/megamenu-post-1-93x94.jpg" alt="" width="93" height="94"/></a></div>
                                                                                              <div class="post-classic-main">
                                                                                                <!-- Badge-->
                                                                                                <div class="badge badge-secondary">The Team
                                                                                                </div>
                                                                                                <p class="post-classic-title"><a href="blog-post.html">Raheem Sterling turns the tide for Manchester</a></p>
                                                                                                <div class="post-classic-time"><span class="icon mdi mdi-clock"></span>
                                                                                                  <time datetime="2019">April 15, 2019</time>
                                                                                                </div>
                                                                                              </div>
                                                                                            </article>
                                                                                    </div>
                                                                                    <div class="col-lg-6">
                                                                                            <!-- Post Classic-->
                                                                                            <article class="post-classic">
                                                                                              <div class="post-classic-aside"><a class="post-classic-figure" href="blog-post.html"><img src="site/images/megamenu-post-2-93x94.jpg" alt="" width="93" height="94"/></a></div>
                                                                                              <div class="post-classic-main">
                                                                                                <!-- Badge-->
                                                                                                <div class="badge badge-primary">The League
                                                                                                </div>
                                                                                                <p class="post-classic-title"><a href="blog-post.html">Prem in 90 seconds: Chelsea's crisis is over!</a></p>
                                                                                                <div class="post-classic-time"><span class="icon mdi mdi-clock"></span>
                                                                                                  <time datetime="2019">April 15, 2019</time>
                                                                                                </div>
                                                                                              </div>
                                                                                            </article>
                                                                                    </div>
                                                                                    <div class="col-lg-6">
                                                                                            <!-- Post Classic-->
                                                                                            <article class="post-classic">
                                                                                              <div class="post-classic-aside"><a class="post-classic-figure" href="blog-post.html"><img src="site/images/megamenu-post-3-93x94.jpg" alt="" width="93" height="94"/></a></div>
                                                                                              <div class="post-classic-main">
                                                                                                <!-- Badge-->
                                                                                                <div class="badge badge-primary">The League
                                                                                                </div>
                                                                                                <p class="post-classic-title"><a href="blog-post.html">Good vibes back at struggling Schalke</a></p>
                                                                                                <div class="post-classic-time"><span class="icon mdi mdi-clock"></span>
                                                                                                  <time datetime="2019">April 15, 2019</time>
                                                                                                </div>
                                                                                              </div>
                                                                                            </article>
                                                                                    </div>
                                                                                    <div class="col-lg-6">
                                                                                            <!-- Post Classic-->
                                                                                            <article class="post-classic">
                                                                                              <div class="post-classic-aside"><a class="post-classic-figure" href="blog-post.html"><img src="site/images/megamenu-post-4-93x94.jpg" alt="" width="93" height="94"/></a></div>
                                                                                              <div class="post-classic-main">
                                                                                                <!-- Badge-->
                                                                                                <div class="badge badge-primary">The League
                                                                                                </div>
                                                                                                <p class="post-classic-title"><a href="blog-post.html">Liverpool in desperate need of backup players</a></p>
                                                                                                <div class="post-classic-time"><span class="icon mdi mdi-clock"></span>
                                                                                                  <time datetime="2019">April 15, 2019</time>
                                                                                                </div>
                                                                                              </div>
                                                                                            </article>
                                                                                    </div>
                                                                                  </div>
                                                                                </div>
                                                                              </div>
                                                                                                <!-- Event Teaser-->
                                                                                                <article class="event-teaser rd-megamenu-footer">
                                                                                                  <div class="event-teaser-header">
                                                                                                    <div class="event-teaser-caption">
                                                                                                      <h5 class="event-teaser-title">Final Europa League 2019</h5>
                                                                                                      <time class="event-teaser-time" datetime="2019">Saturday, April 14, 2019</time>
                                                                                                    </div>
                                                                                                    <div class="event-teaser-teams">
                                                                                                      <div class="event-teaser-team">
                                                                                                        <div class="unit unit-spacing-xs unit-horizontal align-items-center">
                                                                                                          <div class="unit-left"><img class="event-teaser-team-image" src="site/images/team-bavaria-fc-38x50.png" alt="" width="38" height="50"/>
                                                                                                          </div>
                                                                                                          <div class="unit-body">
                                                                                                            <p class="heading-7">Bavaria</p>
                                                                                                            <p class="text-style-1">Germany</p>
                                                                                                          </div>
                                                                                                        </div>
                                                                                                      </div>
                                                                                                      <div class="event-teaser-team-divider"><span class="event-teaser-team-divider-text">VS</span></div>
                                                                                                      <div class="event-teaser-team">
                                                                                                        <div class="unit unit-spacing-xs unit-horizontal align-items-center">
                                                                                                          <div class="unit-left"><img class="event-teaser-team-image" src="site/images/team-sportland-41x55.png" alt="" width="41" height="55"/>
                                                                                                          </div>
                                                                                                          <div class="unit-body">
                                                                                                            <p class="heading-7">sportland</p>
                                                                                                            <p class="text-style-1">USA</p>
                                                                                                          </div>
                                                                                                        </div>
                                                                                                      </div>
                                                                                                    </div>
                                                                                                  </div>
                                                                                                  <div class="event-teaser-countdown event-teaser-highlighted">
                                                                                                    <!-- Countdown-->
                                                                                                    <div class="countdown countdown-classic" data-type="until" data-time="31 Dec 2019 16:00" data-format="dhms" data-style="short"></div>
                                                                                                  </div>
                                                                                                  <div class="event-teaser-aside"><a class="event-teaser-link" href="#">Buy Tickets</a></div>
                                                                                                </article>
                                                                            </article>
                                      </li>
                                    </ul>
                  <div class="rd-navbar-main-element">
                    <ul class="list-inline list-inline-sm">
                      <li><a class="icon icon-xs icon-light fa fa-facebook" href="#"></a></li>
                      <li><a class="icon icon-xs icon-light fa fa-twitter" href="http://www.twitter.com/IWasAtTheGame"></a></li>
                      <li><a class="icon icon-xs icon-light fa fa-google-plus" href="#"></a></li>
                      <li><a class="icon icon-xs icon-light fa fa-instagram" href="#"></a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </nav>
        </div>
      </header>
      <!-- Section Breadcrumbs-->
      <section class="section parallax-container breadcrumbs-wrap" data-parallax-img="site/images/bg-breadcrumbs-1-1920x726.jpg">
        <div class="parallax-content breadcrumbs-custom context-dark">
          <div class="container">
            <div class="rd-navbar-brand"><a class="brand" href="../landing"><img class="brand-logo" src="site/images/LOC/ListOfChampions_Logo.png" alt="" width="846" height="170"/></a>
            </div>
          </div>
        </div>
      </section>
      <section class="section section-sm bg-gray-100">
        <div class="container">
          <div class="row row-50">
            <div class="col-lg-7 col-xl-8">
              <div class="row row-50">
                <div class="col-12">
                  <!-- Heading Component-->
                  <article class="heading-component">
                    <div class="heading-component-inner">
                      <h5 class="heading-component-title"><%= Session("LOCStateName") %>&nbsp;STATE CHAMPIONS
                      </h5>
                      <div class="heading-component-aside">
                        <ul class="list-inline list-inline-xs list-inline-middle">
                          <li>
                            <asp:DropDownList runat="server" ID="CboSport" CssClass="select select-minimal" data-placeholder="Sport" data-dropdown-class="select-minimal-dropdown" style="min-width: 200px" 
                                AutoPostBack="true" OnDataBound="CboSport_DataBound" OnSelectedIndexChanged="CboSport_SelectedIndexChanged" DataTextField="strTextField" DataValueField="strValueField">
                                <asp:ListItem Value="" Text="Select Sport..."></asp:ListItem>
                            </asp:DropDownList>
                          </li>
                          <li>
                            <asp:DropDownList runat="server" ID="CboYear" CssClass="select select-minimal" data-placeholder="Year" data-dropdown-class="select-minimal-dropdown" style="min-width: 100px" 
                                OnDataBound="CboYear_DataBound" OnSelectedIndexChanged="CboYear_SelectedIndexChanged" AutoPostBack="true" DataTextField="strTextField" DataValueField="strValueField">
                                <asp:ListItem Value="" Text="Select Year..."></asp:ListItem>
                            </asp:DropDownList>
                          </li>
                        </ul>
                      </div>
                    </div>
                  </article>

                  <div class="card-standing card-group-custom card-standing-index" id="accordion1" role="tablist" aria-multiselectable="false">
                    <!-- Bootstrap card header -->
                    <%= Session("BootstrapCardHeader") %>
                    <!-- Bootstrap card-->
                    <%= Session("BootstrapRows") %>
                    <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                    <!-- Responsive Ad -->
                    <ins class="adsbygoogle"
                         style="display:block"
                         data-ad-client="ca-pub-6403098483302166"
                         data-ad-slot="7074715447"
                         data-ad-format="auto"></ins>
                    <script>
                    (adsbygoogle = window.adsbygoogle || []).push({});
                    </script>
                  </div>
                </div>
               
                <div class="col-12">
                    <!-- GLOSSARY TERMS -->
                </div>
              </div>
            </div>
            <div class="col-lg-5 col-xl-4">
                <!-- Right Column -->

              <!-- Heading Component-->
              <article class="heading-component">
                <div class="heading-component-inner">
                  <h5 class="heading-component-title"><span class="icon material-icons-whatshot text-red"> </span>State Championship News
                  </h5>
                </div>
              </article>
              <!-- List Post minimal-->
              <div class="list-post-minimal">
                              <!-- Post Minimal-->
                              <article class="post-minimal">
                                <div class="post-classic-main">
                                  <time class="post-classic-time" datetime="2019">May 3, 2008<br />Daily Oklahoman
                                  </time>
                                  <p class="post-classic-title"><a href="blog-post.html">Liverpool confirm club-record transfer of Naby Keita</a></p>
                                </div>
                              </article>
                              <!-- Post Minimal-->
                              <article class="post-minimal">
                                <div class="post-classic-main">
                                  <time class="post-classic-time" datetime="2019">15 hours ago
                                  </time>
                                  <p class="post-classic-title"><a href="blog-post.html">Transfer news: The latest rumours from man utd, Chelsea and Arsenal</a></p>
                                </div>
                              </article>
                              <!-- Post Minimal-->
                              <article class="post-minimal">
                                <div class="post-classic-main">
                                  <time class="post-classic-time" datetime="2019">1 day ago
                                  </time>
                                  <p class="post-classic-title"><a href="blog-post.html">Stress behind coutinho's Liverpool Absence, doctor claims</a></p>
                                </div>
                              </article>
                              <!-- Post Minimal-->
                              <article class="post-minimal">
                                <div class="post-classic-main">
                                  <time class="post-classic-time" datetime="2019">2 days ago
                                  </time>
                                  <p class="post-classic-title"><a href="blog-post.html">Chelsea agree £35million fee to sigh Alex Oxlade-Chamberlain</a></p>
                                </div>
                              </article>
              </div>
              <article class="heading-component">
                <div class="heading-component-inner">
                  <h5 class="heading-component-title">Our Sponsors
                  </h5>
                </div>
                <div>
                    <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                    <!-- Responsive Ad -->
                    <ins class="adsbygoogle"
                         style="display:block"
                         data-ad-client="ca-pub-6403098483302166"
                         data-ad-slot="7074715447"
                         data-ad-format="auto"></ins>
                    <script>
                    (adsbygoogle = window.adsbygoogle || []).push({});
                    </script>
                </div>
              </article>
            </div>
          </div>
        </div>
      </section>
      <!-- Page Footer-->
      <footer class="section footer-classic footer-classic-dark context-dark">
        <div class="footer-classic-main">
          <div class="container">
            <p class="heading-7">Subscribe to our Newsletter</p>
            <!-- RD Mailform-->
            <form class="rd-mailform rd-form rd-inline-form-creative" data-form-output="form-output-global" data-form-type="subscribe" method="post" action="bat/rd-mailform.php">
              <div class="form-wrap">
                <div class="form-input-wrap">
                  <input class="form-input" id="footer-form-email" type="email" name="email" data-constraints="@Required">
                  <label class="form-label" for="footer-form-email">Enter your E-mail</label>
                </div>
              </div>
              <div class="form-button">
                <button class="button button-primary-outline" type="submit" aria-label="Send"><span class="icon fl-budicons-launch-right164"></span></button>
              </div>
            </form>
            <div class="row row-50">
              <div class="col-lg-5 text-center text-sm-left">
                <article class="unit unit-sm-horizontal unit-middle justify-content-center justify-content-sm-start footer-classic-info">
                  <div class="unit-left"><a class="brand brand-md" href="../landing"><img class="brand-logo " src="images/logo-soccer-default-95x126.png" alt="" width="95" height="126"/></a>
                  </div>
                  <div class="unit-body">
                    <p>Sportland website offers you the latest news about our team as well as updates on our matches and other events.</p>
                  </div>
                </article>
                <ul class="list-inline list-inline-bordered list-inline-bordered-lg">
                  <li>
                    <div class="unit unit-horizontal unit-middle">
                      <div class="unit-left">
                        <svg class="svg-color-primary svg-sizing-35" x="0px" y="0px" width="27px" height="27px" viewbox="0 0 27 27" preserveAspectRatio="none">
                          <path d="M2,26c0,0.553,0.447,1,1,1h5c0.553,0,1-0.447,1-1v-8.185c-0.373-0.132-0.711-0.335-1-0.595V19 H6v-1v-1v-1H5v1v2H3v-9H2v1H1V9V8c0-0.552,0.449-1,1-1h1h1h3h0.184c0.078-0.218,0.173-0.426,0.297-0.617C8.397,5.751,9,4.696,9,3.5 C9,1.567,7.434,0,5.5,0S2,1.567,2,3.5C2,4.48,2.406,5.364,3.056,6H3H2C0.895,6,0,6.895,0,8v7c0,1.104,0.895,2,2,2V26z M8,26H6v-6h2 V26z M5,26H3v-6h2V26z M3,3.5C3,2.121,4.121,1,5.5,1S8,2.121,8,3.5S6.879,6,5.5,6S3,4.879,3,3.5 M1,15v-3h1v4 C1.449,16,1,15.552,1,15"></path>
                          <path d="M11.056,6H11h-1C8.895,6,8,6.895,8,8v7c0,1.104,0.895,2,2,2v9c0,0.553,0.447,1,1,1h5 c0.553,0,1-0.447,1-1v-9c1.104,0,2-0.896,2-2V8c0-1.105-0.896-2-2-2h-1h-0.056C16.594,5.364,17,4.48,17,3.5 C17,1.567,15.434,0,13.5,0S10,1.567,10,3.5C10,4.48,10.406,5.364,11.056,6 M10,15v1c-0.551,0-1-0.448-1-1v-3h1V15z M11,20h2v6h-2 V20z M16,26h-2v-6h2V26z M17,16v-1v-3h1v3C18,15.552,17.551,16,17,16 M17,7c0.551,0,1,0.448,1,1v1v1v1h-1v-1h-1v5v4h-2v-1v-1v-1h-1 v1v1v1h-2v-4v-5h-1v1H9v-1V9V8c0-0.552,0.449-1,1-1h1h1h3h1H17z M13.5,1C14.879,1,16,2.121,16,3.5C16,4.879,14.879,6,13.5,6 S11,4.879,11,3.5C11,2.121,12.121,1,13.5,1"> </path>
                          <polygon points="15,13 14,13 14,9 13,9 12,9 12,10 13,10 13,13 12,13 12,14 13,14 14,14 15,14 	"></polygon>
                          <polygon points="7,14 7,13 5,13 5,12 6,12 7,12 7,10 7,9 6,9 4,9 4,10 6,10 6,11 5,11 4,11 4,12 4,13 4,14 5,14"></polygon>
                          <polygon points="20,10 22,10 22,11 21,11 21,12 22,12 22,13 20,13 20,14 22,14 23,14 23,13 23,12 23,11 23,10 23,9 22,9 20,9 	"></polygon>
                          <path d="M19.519,6.383C19.643,6.574,19.738,6.782,19.816,7H20h3h1h1c0.551,0,1,0.448,1,1v3h-1v-1h-1v9 h-2v-2v-1h-1v1v2h-2v-1.78c-0.289,0.26-0.627,0.463-1,0.595V26c0,0.553,0.447,1,1,1h5c0.553,0,1-0.447,1-1v-9c1.104,0,2-0.896,2-2 V8c0-1.105-0.896-2-2-2h-1h-0.056C24.594,5.364,25,4.48,25,3.5C25,1.567,23.434,0,21.5,0S18,1.567,18,3.5 c0,0.736,0.229,1.418,0.617,1.981C18.861,5.834,19.166,6.14,19.519,6.383 M19,20h2v6h-2V20z M24,26h-2v-6h2V26z M26,15 c0,0.552-0.449,1-1,1v-4h1V15z M21.5,1C22.879,1,24,2.121,24,3.5C24,4.879,22.879,6,21.5,6C20.121,6,19,4.879,19,3.5 C19,2.121,20.121,1,21.5,1"></path>
                        </svg>
                      </div>
                      <div class="unit-body">
                        <h6>Join Our Team</h6><a class="link" href="mailto:#">chris@iwasatthegame.com</a>
                      </div>
                    </div>
                  </li>
                  <li>
                    <div class="unit unit-horizontal unit-middle">
                      <div class="unit-left">
                        <svg class="svg-color-primary svg-sizing-35" x="0px" y="0px" width="72px" height="72px" viewbox="0 0 72 72">
                          <path d="M36.002,0c-0.41,0-0.701,0.184-0.931,0.332c-0.23,0.149-0.4,0.303-0.4,0.303l-9.251,8.18H11.58 c-1.236,0-1.99,0.702-2.318,1.358c-0.329,0.658-0.326,1.3-0.326,1.3v11.928l-8.962,7.936V66c0,0.015-0.038,1.479,0.694,2.972 C1.402,70.471,3.006,72,5.973,72h30.03h30.022c2.967,0,4.571-1.53,5.306-3.028c0.736-1.499,0.702-2.985,0.702-2.985V31.338 l-8.964-7.936V11.475c0,0,0.004-0.643-0.324-1.3c-0.329-0.658-1.092-1.358-2.328-1.358H46.575l-9.251-8.18 c0,0-0.161-0.154-0.391-0.303C36.703,0.184,36.412,0,36.002,0z M36.002,3.325c0.49,0,0.665,0.184,0.665,0.184l6,5.306h-6.665 h-6.665l6-5.306C35.337,3.51,35.512,3.325,36.002,3.325z M12.081,11.977h23.92H59.92v9.754v2.121v14.816L48.511,48.762 l-10.078-8.911c0,0-0.307-0.279-0.747-0.548s-1.022-0.562-1.684-0.562c-0.662,0-1.245,0.292-1.686,0.562 c-0.439,0.268-0.747,0.548-0.747,0.548l-10.078,8.911L12.082,38.668V23.852v-2.121v-9.754H12.081z M8.934,26.867v9.015 l-5.091-4.507L8.934,26.867z M63.068,26.867l5.091,4.509l-5.091,4.507V26.867z M69.031,34.44v31.559 c0,0.328-0.103,0.52-0.162,0.771L50.685,50.684L69.031,34.44z M2.971,34.448l18.348,16.235L3.133,66.77 c-0.059-0.251-0.162-0.439-0.162-0.769C2.971,66.001,2.971,34.448,2.971,34.448z M36.002,41.956c0.264,0,0.437,0.057,0.546,0.104 c0.108,0.047,0.119,0.059,0.119,0.059l30.147,26.675c-0.3,0.054-0.79,0.207-0.79,0.207H36.002H5.98H5.972 c-0.003,0-0.488-0.154-0.784-0.207l30.149-26.675c0,0,0.002-0.011,0.109-0.059C35.555,42.013,35.738,41.956,36.002,41.956z"></path>
                        </svg>
                      </div>
                      <div class="unit-body">
                        <h6>Contact Us</h6><a class="link" href="mailto:#">info@demolink.org</a>
                      </div>
                    </div>
                  </li>
                </ul>
                <div class="group-md group-middle">
                  <div class="group-item">
                    <ul class="list-inline list-inline-xs">
                      <li><a class="icon icon-corporate fa fa-facebook" href="#"></a></li>
                      <li><a class="icon icon-corporate fa fa-twitter" href="#"></a></li>
                      <li><a class="icon icon-corporate fa fa-google-plus" href="#"></a></li>
                      <li><a class="icon icon-corporate fa fa-instagram" href="#"></a></li>
                    </ul>
                  </div><a class="button button-sm button-gray-outline" href="contact-us.html">Get in Touch</a>
                </div>
              </div>
              <div class="col-lg-7">
                  <!-- Popular News -->
              </div>
            </div>
          </div>
        </div>
        <div class="footer-classic-aside footer-classic-darken">
          <div class="container">
            <div class="layout-justify">
              <!-- Rights-->
              <p class="rights"><span>Sportland</span><span>&nbsp;&copy;&nbsp;</span><span class="copyright-year"></span><span>.&nbsp;</span><a class="link-underline" href="privacy-policy.html">Privacy Policy</a></p>
            </div>
          </div>
        </div>
      </footer>
    </div>
    <!-- Global Mailform Output-->
    <div class="snackbars" id="form-output-global"></div>
    <!-- Javascript-->
    <script src="site/js/core.min.js"></script>
    <script src="site/js/script.js"></script>
    </form>
</body>
</html>
