<#import "parts/common.ftl" as c>
    <#import "parts/pager.ftl" as p>
    <#import "parts/navigation.ftl" as n>
    <#import "parts/header.ftl" as h>
<#import "parts/conference.ftl" as conf>
<@c.page>

    <@n.navigation>
        <#if !user.roles?seq_contains(SPEAKER)>
        <@n.navigationForUser/>
            <#else>
            <@n.navigationForSpeaker/>
        </#if>
    </@n.navigation>

    <@h.header />
                <@conf.conferenceForModerator />
                <@p.pager url conferencePage />
    <@c.footer />
</@c.page>