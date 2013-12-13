<form action="{$smarty.server.PHP_SELF}" method="post">
  <input type="hidden" name="page" value="{$smarty.request.page|escape}">
  <input type="hidden" name="action" value="contactform">
    <article class="module width_3_quarter">
    <header><h3>{t}Contact Us{/t}</h3></header>
    <div class="module_content">
      <fieldset>
        <label for="senderName">{t}Your Name{/t}</label>
        <input type="text" class="text tiny" name="senderName" value="{$smarty.request.senderName|escape|default:""}" placeholder="{t}Please type your name{/t}" size="15" maxlength="100" required />
      </fieldset>
      <fieldset>
        <label for="senderEmail">{t}Your Email Address{/t}</label>
        <input type="text" class="text tiny" name="senderEmail" value="{$smarty.request.senderEmail|escape|default:""}" placeholder="{t}Please type your email{/t}" size="50"  maxlength="100" required />
      </fieldset>
      <fieldset>
        <label for="senderEmail">{t}Your Subject{/t}</label>
        <input type="text" class="text tiny" name="senderSubject" value="{$smarty.request.senderSubject|escape|default:""}" placeholder="{t}Please type your subject{/t}" size="15" maxlength="100" required />
      </fieldset>
      <fieldset>
        <label for="message">{t}Your Message{/t}</label>
        <textarea type="text" name="senderMessage" cols="80" rows="10" maxlength="10000" required>{$smarty.request.senderMessage|escape|default:""}</textarea>
      </fieldset>
      <center>{nocache}{$RECAPTCHA|default:""}{/nocache}</center>
    </div>
    <footer>
      <div class="submit_link"><input type="submit" class="alt_btn" name="sendMessage" value="{t}Send Email{/t}" /></div>
    </footer>
  </article>
</form>
