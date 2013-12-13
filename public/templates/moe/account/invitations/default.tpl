<form action="{$smarty.server.PHP_SELF}" method="POST">
  <input type="hidden" name="page" value="{$smarty.request.page}">
  <input type="hidden" name="action" value="{$smarty.request.action}">
  <input type="hidden" name="do" value="sendInvitation">
  <article class="module width_quarter">
    <header><h3>{t}Invitation{/t}</h3></header>
    <div class="module_content">
      <fieldset>
        <label>{t}E-Mail{/t}</label>
        <input type="text" name="data[email]" value="{$smarty.request.data.email|escape|default:""}" size="30" />
      </fieldset>
      <fieldset>
        <label>{t}Message{/t}</label>
        <textarea name="data[message]" rows="5">{$smarty.request.data.message|escape|default:"Please accept my invitation to this awesome pool."}</textarea>
      </fieldset>
    </div>
    <footer>
      <div class="submit_link">
        <input type="submit" value="{t}Invite{/t}" class="alt_btn">
      </div>
    </footer>
  </article>
</form>

<article class="module width_3_quarter">
  <header><h3>{t}Past Invitations{/t}</h3></header>
  <table class="tablesorter" cellspacing="0">
    <thead style="font-size:13px;">
      <tr>
        <th>{t}E-Mail{/t}</th>
        <th align="center">{t}Sent{/t}</th>
        <th align="center">{t}Activated{/t}</th>
      </tr>
    </thead>
    <tbody>
{section name=invite loop=$INVITATIONS}
      <tr>
        <td>{$INVITATIONS[invite].email}</td>
        <td align="center">{$INVITATIONS[invite].time|date_format:"%d/%m/%Y %H:%M:%S"}</td>
        <td align="center"><i class="icon-{if $INVITATIONS[invite].is_activated}ok{else}cancel{/if}"></i></td>
      </tr>
{/section}
    <tbody>
  </table>
</article>
