<%-- 
    Document   : ErrorPage
    Created on : 22 Aug, 2017, 11:57:21 AM
    Author     : adoshi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>OWEN Analytics - AI driven people solutions</title>

        <meta name="description" content="Harness the power of the informal organization. Redefine workforce engagement by leveraging employee interaction patterns. Optimize these interactions through a clever combination of traditional engagement mechanisms, network analysis and new-age predictive algorithms. Empower HR leaders to make data-driven decisions.">
        <meta name="keywords" content="human resources, HR, big data, talent management, talent acquisition, productivity, onboarding, onboarding and engagement, recruitment, solution, insights, machine learning, artificial intelligence, organizational network analysis, ona, retention, attrition">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
        <meta content="IE=11;IE=Edge" http-equiv="X-UA-Compatible">
        <meta charset="utf-8">

        <meta itemprop="name" content="OWEN Analytics - AI driven people solutions">
        <meta itemprop="description" content="Harness the power of the informal organization. Redefine workforce engagement by leveraging employee interaction patterns. Optimize these interactions through a clever combination of traditional engagement mechanisms, network analysis and new-age predictive algorithms. Empower HR leaders to make data-driven decisions.">

        <meta property="og:type" content="website">
        <meta property="og:title" content="OWEN Analytics 404">
        <meta property="og:description" content="404 Page not found">
        <meta property="og:url" content="http://www.owenanalytics.com/index.html/">
        <meta property="og:site_name" content="OWEN Analytics">
        <meta property="og:locale" content="en_IN">

        <link rel="canonical" href="http://www.owenanalytics.com/error404.jsp"/>
        <META NAME="ROBOTS" CONTENT="INDEX, FOLLOW">
        <!-- Page styles -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:regular,bold,italic,thin,light,bolditalic,black,medium&amp;lang=en">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="css/material.min.css">
        <link href="css/materialdesignicons.css" media="all" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="css/error404.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

        <link rel='shortcut icon' type='image/x-icon' href='images/OWEN_Favicon.ico'/>

        <!-- Chrome, Firefox OS and Opera -->
        <meta name="theme-color" content="#303f9f">
        <!-- Windows Phone -->
        <meta name="msapplication-navbutton-color" content="#303f9f">
        <!-- iOS Safari -->
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="apple-mobile-web-app-status-bar-style" content="#303f9f">

        <script>
            $(function () {
                $("#header").load("common/header.html");
                $("#drawer").load("common/drawer.html");
                $("#footer").load("common/footer.html");
                $("#dialog").load("common/dialog.html");
                $("#toast").load("common/toast.html");
            });
        </script>
        <script>
            (function (i, s, o, g, r, a, m) {
                i['GoogleAnalyticsObject'] = r;
                i[r] = i[r] || function () {
                    (i[r].q = i[r].q || []).push(arguments)
                }, i[r].l = 1 * new Date();
                a = s.createElement(o),
                        m = s.getElementsByTagName(o)[0];
                a.async = 1;
                a.src = g;
                m.parentNode.insertBefore(a, m)
            })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');

            ga('create', 'UA-88251495-1', 'auto');
            ga('send', 'pageview');

        </script>
    </head>
    <body>
        <div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">
            <!--<header id="header" class="android-header mdl-layout__header mdl-layout__header--waterfall"></header>-->
            <!--<div id="drawer" class="android-drawer mdl-layout__drawer"></div>-->
            <main class="android-content mdl-layout__content">
                <div class="android-card-container mdl-grid">
                    <div class="mdl-layout-spacer"></div>
                    <!--                    <div class="mdl-cell mdl-cell--4-col mdl-cell--4-col-tablet mdl-cell--4-col-phone mdl-card centerDiv">
                                            <div class="mdl-card__title">404. You've gone adrift</div>
                                            <div class="mdl-card__actions"><button class="mdl-button mdl-js-button mdl-js-ripple-effect">GO HOME</button></div>
                                        </div>-->
                    <div class="mdl-cell mdl-cell--4-col mdl-cell--4-col-tablet mdl-cell--4-col-phone mdl-card centerDiv">
                        <div class="mdl-card__title">
                            <img src="images/404.png" alt="page not found"><h2 class="mdl-card__title-text">Oops</h2>
                        </div>
                        <div class="mdl-card__supporting-text">There's nothing to see here</div>
                        <div class="mdl-card__actions">
                            <a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect" href="index.html">Go Home</a>
                        </div>
                    </div>
                    <div class="mdl-layout-spacer"></div>
                </div>
            </main>
        </div>
        <script src="js/material.min.js"></script>
        <script src="js/tilt.jquery.js"></script>
        <script type="text/javascript">
            $('.mdl-card__title img').tilt({
                glare: true,
                maxGlare: .5
            });
        </script>
    </body>
</html>
