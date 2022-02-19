<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=true displayMessage=!messagesPerField.existsError('username'); section>
    <#if section = "header">
    <#elseif section = "form">
        <form class="forgot-password form" action="${url.loginAction}" method="post">
            <div class="forgot-password-header-title">
                <img src="${url.resourcesPath}/img/logo.png" alt="logo" width="52" height="52"/>
                <p>School On Air</p>
            </div>
            <h3 class="forgot-password-title">${msg("registerTitle")}</h3>
            <div class="form-group">
                <label for="username" class="label-field"><#if !realm.loginWithEmailAllowed>${msg("username")}<#elseif !realm.registrationEmailAsUsername>${msg("usernameOrEmail")}<#else>${msg("email")}</#if></label>
                <div>
                    <input type="text" id="username" name="username" class="input-field" autofocus value="${(auth.attemptedUsername!'')}" aria-invalid="<#if messagesPerField.existsError('username')>true</#if>"/>
                    <#if messagesPerField.existsError('username')>
                        <span class="input-error" aria-live="polite">
                                    ${kcSanitize(messagesPerField.get('username'))?no_esc}
                        </span>
                    </#if>
                </div>
            </div>
            <div class="form-group">
                <a href="${url.loginUrl}">${kcSanitize(msg("backToLogin"))?no_esc}</a>
                <input class="submit" type="submit" value="${msg("doSubmit")}"/>
            </div>
        </form>
    <#elseif section = "info" >
        ${msg("emailInstruction")}
    </#if>
</@layout.registrationLayout>
