<article class="module width_half">
  <form action="{$smarty.server.PHP_SELF}?page=login" method="post" id="loginForm">
    <input type="hidden" name="to" value="{($smarty.request.to|default:"{$smarty.server.PHP_SELF}?page=dashboard")|escape}" />
    <header><h3>{t}Login with existing account{/t}</h3></header>
    <div class="module_content">
        <fieldset>
          <label>{t}Username or E-Mail{/t}</label>
          <input type="text" name="username" size="22" maxlength="20" value="{$smarty.request.username|default:""|escape}" placeholder="Your username or email" required />
        </fieldset>
        <fieldset>
          <label>{t}Password{/t}</label>
          <input type="password" name="password" size="22" maxlength="20" placeholder="Your password" required />
        </fieldset>
      <div class="clear"></div>
    </div>
    <footer>
      <div class="submit_link">
        <a href="{$smarty.server.PHP_SELF}?page=password"><font size="1">{t}Forgot your password?{/t}</font></a>
        <input type="submit" value="{t}Login{/t}" class="alt_btn" />
      </div>
    </footer>
  </form>
</article>
