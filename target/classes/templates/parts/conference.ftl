<#macro conferenceForAll>
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">

            <#list conferencePage.content as conference>
        <div class="post-preview">
    <form name="sentConference" action="/conference" method="get" novalidate>
        <button type="submit" name="title" class="btn-link" value="${conference.title}">${conference.title}</button>
    </form>
    <div class="row">
        <div class="form-group col-xs-12">
            <input type="text" class="form-control" placeholder="Time conduction: " value="${conference.timeConduction}" name = "timeConduction" readonly> <Br>
            <input type="text" class="form-control" placeholder="Venue: " value="${conference.venue}" name="venue" readonly>
        </div>
    </div>
</div>

<hr>
    </#list>
    </div>
    </div>
    </div>

    <hr>
</#macro>

<#macro conferenceForModerator >
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
            <#list conferencePage.content as conference>
    <div class="post-preview">
        <form name="sentConference" action="/conference" method="get" novalidate>
            <button type="submit" name="title" class="btn-link" value="${conference.title}">${conference.title}</button>
        </form>
        <form name="sentConference" action="/conference" method="post" novalidate>
            <div class="row">
                <div class="form-group col-xs-12">
                    <input type="text" class="form-control" placeholder="Time conduction: " value="${conference.timeConduction}" name = "timeConduction"> <Br>
                    <input type="text" class="form-control" placeholder="Venue: " value="${conference.venue}" name="venue">
                    <div class="row">
                        <div class="form-group col-xs-12">
                            <button type="submit"  class="btn btn-default">Save</button>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>

    <hr>
    </#list>
            </div>
        </div>
    </div>
    <hr>
</#macro>