<article class="module width_half">
  <header><h3>{t}Last Found Blocks{/t}</h3></header>
  <table class="tablesorter" cellspacing="0">
    <thead>
      <tr>
        <th align="center">{t}Block{/t}</th>
        <th>{t}Finder{/t}</th>
        <th align="center">{t}Time{/t}</th>
        <th align="right" style="padding-right: 25px;">{t}Actual Shares{/t}</th>
      </tr>
    </thead>
    <tbody>
{assign var=rank value=1}
{section block $BLOCKSFOUND}
      <tr class="{cycle values="odd,even"}">
        {if ! $GLOBAL.website.blockexplorer.disabled}
        <td align="center"><a href="{$GLOBAL.website.blockexplorer.url}{$BLOCKSFOUND[block].blockhash}" target="_new">{$BLOCKSFOUND[block].height}</a></td>
        {else}
        <td align="center">{$BLOCKSFOUND[block].height}</td>
        {/if}
        <td>{if $BLOCKSFOUND[block].is_anonymous|default:"0" == 1 && $GLOBAL.userdata.is_admin|default:"0" == 0}anonymous{else}{$BLOCKSFOUND[block].finder|default:"unknown"|escape}{/if}</td>
        <td align="center">{$BLOCKSFOUND[block].time|date_format:"%d/%m %H:%M:%S"}</td>
        <td align="right" style="padding-right: 25px;">{$BLOCKSFOUND[block].shares|number_format}</td>
      </tr>
{/section}
    </tbody>
  </table>
{if $GLOBAL.config.payout_system != 'pps'}
<footer>
<ul>
  <li>{t}Note: Round Earnings are not credited until{/t} <font color="orange">{$GLOBAL.confirmations}</font> {t}confirms.</li>{/t}
</ul>
{/if}
</footer>
</article>
