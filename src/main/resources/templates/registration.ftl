<#import "parts/common.ftl" as c>
<#import "parts/registration.ftl" as l>
<#import "parts/navigation.ftl" as n>
    <#import "parts/header.ftl" as h>
<@c.page>
<@n.navigation>
    <@n.navigationForALL />
</@n.navigation>

    <@h.header />

<!-- Main Content -->
<div class="container">
    <div class="row">
        <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
            <p>
                ${message}
            </p>
            <@l.registration/>
        </div>
    </div>
</div>

<hr>

<@c.footer />
</@c.page>