<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=social.displayInfo; section>
    <#if section = "title">
        ${msg("loginTitle",(realm.displayName!''))}
    <#elseif section = "header">
        <link href="https://fonts.googleapis.com/css?family=Muli" rel="stylesheet"/>
        <link href="${url.resourcesPath}/img/favicon.png" rel="icon"/>
        <script>
            function togglePassword() {
                var x = document.getElementById("password");
                var v = document.getElementById("vi");
                if (x.type === "password") {
                    x.type = "text";
                    v.src = "${url.resourcesPath}/img/eye.png";
                } else {
                    x.type = "password";
                    v.src = "${url.resourcesPath}/img/eye-off.png";
                }
            }
        </script>

    <#elseif section = "form">
        <div class="background_right">
            <div>
                <div>
                    <h1>School On Air</h1>
                </div>
                <div>
                    <label>Login</label>
                </div>
                <#if realm.password>
                    <div>
                    <form id="kc-form-login" class="form" onsubmit="return true;" action="${url.loginAction}" method="post">
                        <input id="username" class="login-field" placeholder="${msg("username")}" type="text" name="username" tabindex="1">
                        <input id="password" class="login-field" placeholder="${msg("password")}" type="password" name="password" tabindex="2">
                        <#if realm.resetPasswordAllowed>
                            <span><a tabindex="5" href="${url.loginResetCredentialsUrl}">${msg("doForgotPassword")}</a></span>
                        </#if>
                        <input class="submit" type="submit" value="${msg("doLogIn")}" tabindex="3">
                        </form>
                    </div>
                </#if>
                <#if social.providers??>
                    <p class="para">${msg("selectAlternative")}</p>
                    <div id="social-providers">
                        <#list social.providers as p>
                        <input class="social-link-style" type="button" onclick="location.href='${p.loginUrl}';" value="${p.displayName}"/>
                        </#list>
                    </div>
                </#if>
            </div>
        </div>

    <#elseif section = "info" >
        <#if realm.registrationAllowed>
            <div id="kc-registration-container">
                <div id="kc-registration">
                    <span>If you don't have an account <a tabindex="6"
                             href="${url.registrationUrl}">Sign up</a></span>
                </div>
            </div>
        </#if>
    </#if>
</@layout.registrationLayout>
