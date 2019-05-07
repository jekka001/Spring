<#import "parts/common.ftl" as c>
<#import "parts/navigation.ftl" as n>
<#import "parts/header.ftl" as h>
<@c.page>
    <@n.navigation>
        <#if !user.roles?seq_contains(SPEAKER)>
            <@n.navigationForUser/>
        <#else>
            <@n.navigationForSpeaker/>
        </#if>
    </@n.navigation>

    <@h.header />

    User editor
    <form action="/user" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <input type="text" name="name" value="${user.name}">
        <#list roles as role>
            <div>
                <label><input type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked", "")}>${role}</label>
            </div>
        </#list>
        <input type="hidden" value="${user.id}" name="userId">
        <button type="submit">Save</button>
    </form>

    <@c.footer/>
</@c.page>