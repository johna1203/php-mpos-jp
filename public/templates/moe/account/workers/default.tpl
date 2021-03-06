<article class="module width_quarter">
  <header><h3 class="">{t}Add New Worker{/t}</h3></header>
  <form action="{$smarty.server.PHP_SELF}" method="post">
    <input type="hidden" name="page" value="{$smarty.request.page}">
    <input type="hidden" name="action" value="{$smarty.request.action}">
    <input type="hidden" name="do" value="add">
    <div class="module_content">
      <fieldset>
        <label>{t}Worker Name{/t}</label>
        <input type="text" name="username" value="user" size="10" maxlength="20" required>
      </fieldset>
      <fieldset>
        <label>{t}Worker Password{/t}</label>
        <input type="text" name="password" value="password" size="10" maxlength="20" required>&nbsp;
      </fieldset>
      <div class="clear"></div>
    </div>
    <footer>
      <div class="submit_link">
        <input type="submit" value="{t}Add New Worker{/t}" class="alt_btn">
      </div>
    </footer>
  </form>
</article>

<article class="module width_3_quarter">
  <header><h3 class="">{t}Worker Configuration{/t}</h3></header>
  <form action="{$smarty.server.PHP_SELF}" method="post">
    <input type="hidden" name="page" value="{$smarty.request.page}">
    <input type="hidden" name="action" value="{$smarty.request.action}">
    <input type="hidden" name="do" value="update">
    <table class="tablesorter" cellspacing="0">
      <thead>
        <tr>
          <th align="left">{t}Worker Login{/t}</th>
          <th align="left">{t}Worker Password{/t}</th>
          <th align="center">{t}Active{/t}</th>
          {if $GLOBAL.config.disable_notifications != 1}<th align="center">{t}Monitor{/t}</th>{/if}
          <th align="right">Khash/s</th>
          <th align="right">{t}Difficulty{/t}</th>
          <th align="center" style="padding-right: 25px;">{t}Action{/t}</th>
        </tr>
      </thead>
      <tbody>
        {nocache}
          {section worker $WORKERS}
          {assign var="username" value="."|escape|explode:$WORKERS[worker].username:2} 
        <tr>
          <td align="left"{if $WORKERS[worker].hashrate > 0} style="color: orange"{/if}>{$username.0|escape}.<input name="data[{$WORKERS[worker].id}][username]" value="{$username.1|escape}" size="10" required/></td>
          <td align="left"><input type="text" name="data[{$WORKERS[worker].id}][password]" value="{$WORKERS[worker].password|escape}" size="10" required></td>
          <td align="center"><i class="icon-{if $WORKERS[worker].hashrate > 0}ok{else}cancel{/if}"></i></td>
          {if $GLOBAL.config.disable_notifications != 1}
          <td>
            <span class="toggle">
            <label for="data[{$WORKERS[worker].id}][monitor]">
            <input type="checkbox" class="ios-switch" name="data[{$WORKERS[worker].id}][monitor]" value="1" id="data[{$WORKERS[worker].id}][monitor]" {if $WORKERS[worker].monitor}checked{/if} />
            <div class="switch"></div>
            </label>
            </span>
          </td>
          {/if}
          <td align="right">{$WORKERS[worker].hashrate|number_format}</td>
          <td align="right">{$WORKERS[worker].difficulty|number_format:"2"}</td>
          <td align="center" style="padding-right: 25px;"><a href="{$smarty.server.PHP_SELF}?page={$smarty.request.page|escape}&action={$smarty.request.action|escape}&do=delete&id={$WORKERS[worker].id|escape}" class="icn_trash"><i class="icon-trash" /></a></td>
        </tr>
          {/section}
        {/nocache}
      </tbody>
    </table>
    <div class="clear"></div>
    <footer>
      <div class="submit_link">
        <input type="submit" class="alt_btn" value="{t}Update Workers{/t}">
      </div>
    </footer>
  </form>
</article>
