<#import "parts/common.ftl" as c>
<#import "parts/navigation.ftl" as n>
<#import "parts/header.ftl" as h>
<@c.page>
    <@n.navigation>
        <@n.navigationForALL />
    </@n.navigation>

    <@h.header />

    <#list reviews as review>
        <div class="post-preview">
            <h2 class="post-title">${review.topic}</h2>
            <div>${review.speaker.name} ${review.speaker.surname}</div>
            <div>Registered: 0</div>
            <div>Visitors:${review.visitors}</div>
        </div>
        <hr>
    </#list>
</@c.page>