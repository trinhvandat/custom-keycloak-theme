<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=!messagesPerField.existsError('firstName','lastName','email','username','password','password-confirm'); section>
    <#if section = "header">
    <#elseif section = "form">
        <form class="register form" action="${url.registrationAction}" method="post">
            <div class="register-header-title">
                <img src="${url.resourcesPath}/img/logo.png" alt="logo" width="52" height="52"/>
                <p>School On Air</p>
            </div>
            <h3 class="register-title">${msg("registerTitle")}</h3>
            <div class="form-group">
                <label for="user.attributes.kycLevel" class="label-field">${msg("kycLevel")}</label>
                <div>
                    <input type="text" class="input-field" name="user.attributes.kycLevel" value="1" readonly="true"/>
                </div>
            </div>

            <div class="form-group">
                <label for="firstName" class="label-field"">${msg("firstName")}</label>
                <div>
                    <input type="text" class="input-field" name="firstName"
                        value="${(register.formData.firstName!'')}"
                        aria-invalid="<#if messagesPerField.existsError('firstName')>true</#if>"
                    />
                    <#if messagesPerField.existsError('firstName')>
                        <span class="input-error" aria-live="polite">
                            ${kcSanitize(messagesPerField.get('firstName'))?no_esc}
                        </span>
                    </#if>
                </div>
            </div>

            <div class="form-group">
                <label for="lastName" class="label-field"">${msg("lastName")}</label>
               <div>
                    <input type="text" class="input-field" name="lastName"
                        value="${(register.formData.lastName!'')}"
                        aria-invalid="<#if messagesPerField.existsError('lastName')>true</#if>"
                    />
                    <#if messagesPerField.existsError('lastName')>
                        <span class="input-error" aria-live="polite">
                            ${kcSanitize(messagesPerField.get('lastName'))?no_esc}
                        </span>
                    </#if>
               </div>
            </div>

            <div class="form-group">
                <label for="email" class="label-field"">${msg("email")}</label>
                <div>
                    <input type="text" class="input-field" name="email"
                            value="${(register.formData.email!'')}" autocomplete="email"
                            aria-invalid="<#if messagesPerField.existsError('email')>true</#if>"
                    />
                    <#if messagesPerField.existsError('email')>
                        <span class="input-error" aria-live="polite">
                            ${kcSanitize(messagesPerField.get('email'))?no_esc}
                        </span>
                    </#if>
                </div>    
            </div>

            <#if !realm.registrationEmailAsUsername>
                <div class="form-group">
                    <label for="username" class="label-field"">${msg("username")}</label>
                    <div>
                        <input type="text" class="input-field" name="username"
                                value="${(register.formData.username!'')}" autocomplete="username"
                                aria-invalid="<#if messagesPerField.existsError('username')>true</#if>"
                        />
                        <#if messagesPerField.existsError('username')>
                            <span class="input-error" aria-live="polite">
                                ${kcSanitize(messagesPerField.get('username'))?no_esc}
                            </span>
                        </#if>
                    </div>    
                </div>
            </#if>

            <#if passwordRequired??>
                <div class="form-group">
                    <label for="password" class="label-field"">${msg("password")}</label>
                    <div>
                        <input type="password" class="input-field" name="password"
                                autocomplete="new-password"
                                aria-invalid="<#if messagesPerField.existsError('password','password-confirm')>true</#if>"
                        />

                        <#if messagesPerField.existsError('password')>
                            <span class="input-error" aria-live="polite">
                                ${kcSanitize(messagesPerField.get('password'))?no_esc}
                            </span>
                        </#if>
                    </div>    
                </div>

                <div class="form-group">
                    <label for="password-confirm" class="label-field"">${msg("passwordConfirm")}</label>
                    <div>
                        <input type="password" class="input-field"
                            name="password-confirm"
                            aria-invalid="<#if messagesPerField.existsError('password-confirm')>true</#if>"
                        />
                        <#if messagesPerField.existsError('password-confirm')>
                            <span class="input-error" aria-live="polite">
                                ${kcSanitize(messagesPerField.get('password-confirm'))?no_esc}
                            </span>
                        </#if>
                    </div>    
                </div>
            </#if>

            <div class="form-group">
                <a href="${url.loginUrl}">Back to Login</a>
                <input class="submit" type="submit" value="${msg("doRegister")}"/>
            </div>
        </form>
    </#if>
</@layout.registrationLayout>