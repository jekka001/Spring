<#import "parts/common.ftl" as c>
<#import "parts/navigation.ftl" as n>
<#import "parts/header.ftl" as h>
<@c.page>
    <@n.navigation>
        <@n.navigationForALL />
    </@n.navigation>

    <@h.header />
    List of users
    <table>
        <thead>
        <tr>
            <th>Name</th>
            <th>Role</th>
            <th> </th>
        </tr>
        </thead>
        <tbody>
    <#list users as user>
        <tr>
            <td>${user.name}</td>
            <td><#list user.roles as role>${role}<#sep>, </#list></td>
            <td><a href="/user/${user.id}"> edit</a></td>
        </tr>
    </#list>
        </tbody>
    </table>

    <@c.footer/>
</@c.page>