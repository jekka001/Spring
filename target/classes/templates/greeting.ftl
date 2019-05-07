<#import "parts/common.ftl" as c>
<#import "parts/navigation.ftl" as n>
<#import "parts/header.ftl" as h>
    <#import "parts/pager.ftl" as p>
    <#import "parts/conference.ftl" as conf>
<@c.page>
<@n.navigation>
    <@n.navigationForALL />
</@n.navigation>

<@h.header />
                <@conf.conferenceForAll />
                <@p.pager url conferencePage />
<@c.footer/>
</@c.page>