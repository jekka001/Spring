<#macro navigation>
<!-- Navigation -->
<nav class="navbar navbar-default navbar-custom navbar-fixed-top">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header page-scroll">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                Menu <i class="fa fa-bars"></i>
            </button>
            <a class="navbar-brand" href="/">Start Bootstrap</a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <#nested/>
            </ul>
        </div>
        <!-- /.navbar-collapse -->

    </div>
    <!-- /.container -->
</nav>
</#macro>

<#macro navigationForALL>
    <li>
        <a href="/login">Log in</a>
    </li>
    <li>
        <a href="/registration">Register</a>
    </li>
    <li>
        <a href="/">Home</a>
    </li>
    <li>
        <a href="about.html">About</a>
    </li>
    <li>
        <a href="contact.html">Contact</a>
    </li>
</#macro>

<#macro navigationForUser>
    <li>
        <a>${user.name}</a>
    </li>
    <li>
        <form action="/logout" method="post">
            <input type="hidden" name="_csrf" value="${_csrf.token}" />
            <input type="submit" value="Sign Out" class="noButton"/>
        </form>
    </li>
    <li>
        <a href="/user">Choose Role</a>
    </li>
    <li>
        <a href="/">Home</a>
    </li>
    <li>
        <a href="/about">About</a>
    </li>
    <li>
        <a href="/contact">Contact</a>
    </li>
</#macro>

<#macro navigationForSpeaker>
    <li>
        <a>${speaker.name} (${speaker.rating} : ${speaker.bonus})</a>
    </li>
    <li>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
            <input type="submit" value="Sign Out" class="noButton"/>
    </form>
    </li>
    <li>
        <a href="/user">Choose Role</a>
    </li>
    <li>
        <a href="/">Home</a>
    </li>
    <li>
        <a href="/about">About</a>
    </li>
    <li>
        <a href="/contact">Contact</a>
    </li>
</#macro>