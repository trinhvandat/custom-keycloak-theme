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
        <div class="login">
            <div>
                <div class="login-header">
                    <img src="" alt="logo" width="52" height="52"/>
                    <p class="login-header-title">School On Air</p>
                </div>
                <h3 class="login-title">Đăng nhập</h3>
                <#if realm.password>
                    <form id="kc-form-login" class="form" onsubmit="return true;" action="${url.loginAction}" method="post">
                        <input id="username" class="login-field username" placeholder="${msg("username")}" type="text" name="username" tabindex="1">
                        <input id="password" class="login-field" placeholder="${msg("password")}" type="password" name="password" tabindex="2">
                        <#if realm.resetPasswordAllowed>
                            <span class="forgot-password"><a tabindex="5" href="${url.loginResetCredentialsUrl}">${msg("doForgotPassword")}</a></span>
                        </#if>
                        <input class="submit" type="submit" value="${msg("doLogIn")}" tabindex="3">
                    </form>
                </#if>
                <div class="login-footer">
                    <div class="login-footer-hr">
                        <hr>
                        <div><p>Hoặc đăng nhập</p></div>
                    </div>
                    <div class="login-list">
                        <div class="login-item">
                            <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path fill-rule="evenodd" clip-rule="evenodd" d="M10.2016 3.86907C11.6627 3.84614 13.0762 4.37796 14.1462 5.35332L17.0252 2.59999C15.1777 0.90374 12.733 -0.0274568 10.2016 0.000616804C8.31125 0.000817024 6.45815 0.515726 4.84906 1.48806C3.23997 2.4604 1.93819 3.85185 1.08899 5.5071L4.38469 8.02197C4.78752 6.81936 5.5659 5.77132 6.60977 5.02605C7.65364 4.28078 8.91015 3.87608 10.2016 3.86907Z" fill="#EA4335"/>
                                <path fill-rule="evenodd" clip-rule="evenodd" d="M19.9946 10.2216C20.0065 9.53375 19.9343 8.84683 19.7796 8.17578H10.2017V11.8905H15.8232C15.7161 12.54 15.4762 13.1615 15.118 13.7179C14.7597 14.2743 14.2904 14.754 13.7383 15.1282L16.9555 17.574C17.9583 16.6248 18.747 15.48 19.2704 14.2136C19.7939 12.9472 20.0406 11.5873 19.9946 10.2216Z" fill="#4285F4"/>
                                <path fill-rule="evenodd" clip-rule="evenodd" d="M4.39498 11.9751C4.17217 11.3389 4.05739 10.6711 4.05521 9.99852C4.05916 9.32693 4.17009 8.66 4.38399 8.02196L1.0883 5.50708C0.372722 6.90039 0 8.43865 0 9.99852C0 11.5584 0.372722 13.0966 1.0883 14.49L4.39498 11.9751Z" fill="#FBBC05"/>
                                <path fill-rule="evenodd" clip-rule="evenodd" d="M10.2017 19.9965C12.6864 20.0639 15.1034 19.1972 16.957 17.574L13.7398 15.1282C12.6966 15.8156 11.4597 16.1653 10.2032 16.128C8.91263 16.1225 7.65669 15.7182 6.61414 14.9725C5.5716 14.2269 4.79558 13.178 4.39653 11.9751L1.10083 14.49C1.94756 16.1447 3.24713 17.536 4.8543 18.5084C6.46147 19.4809 8.3129 19.996 10.2017 19.9965Z" fill="#34A853"/>
                            </svg>
                            <span>Google</span>
                        </div>
                         <div class="login-item">
                            <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path fill-rule="evenodd" clip-rule="evenodd" d="M0 10C0 8.02219 0.586489 6.08883 1.6853 4.44434C2.78412 2.79985 4.3459 1.51811 6.17317 0.761234C8.00043 0.00435829 10.0111 -0.193709 11.9509 0.192143C13.8907 0.577995 15.6725 1.53043 17.0711 2.92896C18.4696 4.32748 19.422 6.10927 19.8078 8.04908C20.1937 9.98889 19.9957 11.9996 19.2388 13.8268C18.4819 15.6541 17.2002 17.2159 15.5557 18.3147C13.9112 19.4135 11.9778 20 10 20C7.34783 20 4.80429 18.9464 2.92893 17.071C1.05357 15.1957 0 12.6522 0 10Z" fill="#3B5998"/>
                            </svg>

                            <span>Facebook</span>
                        </div>
                         <div class="login-item">
                            <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M10 0C15.5225 0 20 4.47754 20 10C20 14.4189 17.135 18.1665 13.161 19.4885C12.6611 19.5801 12.4786 19.2712 12.4786 19.0076C12.4786 18.7695 12.4878 17.981 12.4927 17.146C15.2734 17.7502 15.8612 15.9668 15.8612 15.9668C16.3165 14.812 16.9714 14.5044 16.9714 14.5044C17.8803 13.8843 16.9025 13.8965 16.9025 13.8965C15.8985 13.9661 15.3699 14.9268 15.3699 14.9268C14.4775 16.4551 13.0286 16.0132 12.4597 15.7568C12.3688 15.1123 12.11 14.6704 11.825 14.4214C14.0448 14.1687 16.38 13.3105 16.38 9.47875C16.38 8.38621 15.99 7.49512 15.3516 6.79504C15.4535 6.54113 15.7977 5.52367 15.2527 4.14734C15.2527 4.14734 14.4141 3.87879 12.5025 5.17273C11.7054 4.94996 10.8502 4.8401 10 4.83643C9.15041 4.8401 8.29471 4.95117 7.49635 5.17395C5.58838 3.87879 4.74854 4.14856 4.74854 4.14856C4.20166 5.52611 4.5459 6.54234 4.64844 6.79504C4.00758 7.49512 3.62061 8.38623 3.62061 9.47875C3.62061 13.3203 5.95947 14.1663 8.18725 14.4141C7.82713 14.7241 7.50854 15.332 7.50854 16.2647C7.50854 17.6013 7.52197 18.6792 7.52197 19.0088C7.52197 19.2749 7.3401 19.5862 6.8335 19.4885C2.86254 18.1641 0 14.4165 0 10C0 4.47754 4.47754 0 10 0Z" fill="black"/>
                            </svg>
                            <span>Github</span>
                        </div>
                    </div>
                   <p class="login-footer-create"> Chưa có tài khoản? <span><a href="#">Đăng ký</a></span></p>
                </div>
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
    </#if>
</@layout.registrationLayout>
