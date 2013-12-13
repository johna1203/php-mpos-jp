<article class="module width_full">
  <header><h3>{t}Transaction Summary{/t}</h3></header>
  <table class="tablesorter" cellspacing="0">
    <thead>
      <tr>
    {foreach $SUMMARY as $type=>$total}
        <th>{$type}</th>
    {/foreach}
      </tr>
    </thead>
    <tbody>
      <tr>
    {foreach $SUMMARY as $type=>$total}
        <td class="right">{$total}</td>
    {/foreach}
      </tr>
    </tbody>
  </table>
</article>

<article class="module width_quarter">
  <header><h3>{t}Transaction Filter{/t}</h3></header>
  <div class="module_content">
  <form action="{$smarty.server.PHP_SELF}">
    <input type="hidden" name="page" value="{$smarty.request.page}" />
    <input type="hidden" name="action" value="{$smarty.request.action}" />
    <table cellspacing="0" class="tablesorter">
    <tbody>
      <tr>
{if $COUNTTRANSACTIONS / $LIMIT > 1}
        <td align="left">
  {if $smarty.request.start|default:"0" > 0}
          <a href="{$smarty.server.PHP_SELF}?page={$smarty.request.page}&action={$smarty.request.action}&start={$smarty.request.start|default:"0" - $LIMIT}{if $FILTERS|default:""}{$FILTERS}{/if}"><i class="icon-left-open"></i></a>
  {else}
          <i class="icon-left-open"></i>
  {/if}
        </td>
        <td align="right">
  {if $COUNTTRANSACTIONS - $smarty.request.start|default:"0" - $LIMIT > 0}
          <a href="{$smarty.server.PHP_SELF}?page={$smarty.request.page}&action={$smarty.request.action}&start={$smarty.request.start|default:"0" + $LIMIT}{if $FILTERS|default:""}{$FILTERS}{/if}"><i class="icon-right-open"></i></a>
  {else}
          <i class="icon-right-open"></i>
  {/if}
{/if}
        </td>
      </tr>
    </tbody>
  </table>
    <fieldset>
      <label>{t}Type{/t}</label>
      {html_options name="filter[type]" options=$TRANSACTIONTYPES selected=$smarty.request.filter.type|default:""}
    </fieldset>
    <fieldset>
      <label>{t}Status{/t}</label>
      {html_options name="filter[status]" options=$TXSTATUS selected=$smarty.request.filter.status|default:""}
    </fieldset>
    </div>
  <footer>
    <div class="submit_link">
      <input type="submit" value="{t}Filter{/t}" class="alt_btn">
    </div>
  </footer>
</form>
</article>

<article class="module width_3_quarter">
  <header><h3>{t}Transaction History{/t}</h3></header>
    <table cellspacing="0" class="tablesorter" width="100%">
      <thead>
        <tr>
          <th align="center">ID</th>
          <th>{t}Account{/t}</th>
          <th>{t}Date{/t}</th>
          <th>{t}TX Type{/t}</th>
          <th align="center">{t}Status{/t}</th>
          <th>{t}Payment Address{/t}</th>
          <th>{t}TX #{/t}</th>
          <th>{t}Block #{/t}</th>
          <th>{t}Amount{/t}</th>
        </tr>
      </thead>
      <tbody style="font-size:12px;">
{section transaction $TRANSACTIONS}
        <tr class="{cycle values="odd,even"}">
          <td align="center">{$TRANSACTIONS[transaction].id}</td>
          <td>{$TRANSACTIONS[transaction].username}</td>
          <td>{$TRANSACTIONS[transaction].timestamp}</td>
          <td>{$TRANSACTIONS[transaction].type}</td>
          <td align="center">
            {if $TRANSACTIONS[transaction].type == 'Credit_PPS' OR
                $TRANSACTIONS[transaction].type == 'Fee_PPS' OR
                $TRANSACTIONS[transaction].type == 'Donation_PPS' OR
                $TRANSACTIONS[transaction].type == 'Debit_MP' OR
                $TRANSACTIONS[transaction].type == 'Debit_AP' OR
                $TRANSACTIONS[transaction].type == 'TXFee' OR
                $TRANSACTIONS[transaction].confirmations >= $GLOBAL.confirmations
            }<span class="confirmed">{t}Confirmed{/t}</span>
            {else if $TRANSACTIONS[transaction].confirmations == -1}<span class="orphan">{t}Orphaned{/t}</span>
            {else}<span class="unconfirmed">{t}Unconfirmed{/t}</span>{/if}
          </td>
          <td>{$TRANSACTIONS[transaction].coin_address|truncate:20:"...":true:true}</td>
          <td>{$TRANSACTIONS[transaction].txid|truncate:20:"...":true:true}</td>
          <td>{if $TRANSACTIONS[transaction].height == 0}n/a{else}<a href="{$smarty.server.PHP_SELF}?page=statistics&action=round&height={$TRANSACTIONS[transaction].height}">{$TRANSACTIONS[transaction].height}</a>{/if}</td>
          <td><font color="{if $TRANSACTIONS[transaction].type == 'Credit' or $TRANSACTIONS[transaction].type == 'Credit_PPS' or $TRANSACTIONS[transaction].type == 'Bonus'}green{else}red{/if}">{$TRANSACTIONS[transaction].amount|number_format:"8"}</td>
        </tr>
{/section}
      </tbody>
    </table>
    <footer><p style="margin-left: 25px; font-size: 9px;"><b>Debit_AP</b> = {t}Auto Threshold Payment{/t}, <b>Debit_MP</b> = {t}Manual Payment{/t}, <b>Donation</b> = {t}Donation{/t}, <b>Fee</b> = {t}Pool Fees (if applicable){/t}</p></footer>
</article>
