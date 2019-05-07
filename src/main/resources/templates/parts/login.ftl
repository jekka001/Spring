<#macro login>
    <form action="/login" method="post" name="sentMessage" novalidate>
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <div class="row control-group">
            <div class="form-group col-xs-12 floating-label-form-group controls">
                <label>Email Address</label>
                <input type="email" class="form-control" placeholder="Email Address" name="username" required data-validation-required-message="Please enter your email address.">
                <p class="help-block text-danger"></p>
            </div>
        </div>
        <div class="row control-group">
            <div class="form-group col-xs-12 floating-label-form-group controls">
                <label>Password</label>
                <input type="password" class="form-control" placeholder="Password" name="password" required data-validation-required-message="Please enter your password.">
                <p class="help-block text-danger"></p>
            </div>
        </div>
        <br>
        <div id="success"></div>
        <div class="row">
            <div class="form-group col-xs-12">
                <button type="submit" class="btn btn-default">Sign In</button>
            </div>
        </div>
    </form>
</#macro>