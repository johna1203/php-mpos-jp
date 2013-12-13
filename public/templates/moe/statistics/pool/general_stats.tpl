 <article class="module width_half">
  <header><h3>{t}General Statistics{/t}</h3></header>
  <div class="module_content">
    <table width="100%">
      <tbody>
        <tr>
          <th align="left" width="50%">{t}Pool Hash Rate{/t}</th>
          <td width="70%"><span id="b-hashrate">{$GLOBAL.hashrate|number_format:"3"}</span> {$GLOBAL.hashunits.pool}</td>
        </tr>
        <tr>
          <th align="left">{t}Pool Efficiency{/t}</td>
          <td>{if $GLOBAL.roundshares.valid > 0}{($GLOBAL.roundshares.valid / ($GLOBAL.roundshares.valid + $GLOBAL.roundshares.invalid) * 100)|number_format:"2"}%{else}0%{/if}</td>
        </tr>
        <tr>
          <th align="left">{t}Current Active Workers{/t}</td>
          <td id="b-workers">{$GLOBAL.workers}</td>
        </tr>
        <tr>
          <th align="left">{t}Current Difficulty{/t}</td>
      {if ! $GLOBAL.website.chaininfo.disabled}
          <td><a href="{$GLOBAL.website.chaininfo.url}" target="_new"><font size="2"><span id="b-diff">{$NETWORK.difficulty}</span></font></a></td>
      {else}
          <td><font size="2"><span id="b-diff">{$NETWORK.difficulty}</span></font></td>
      {/if}
        </tr>
        <tr>
          <th align="left">{t}Est. Avg. Time per Round{/t}</td>
          <td>{$ESTTIME|seconds_to_words}</td>
        </tr>
        <tr>
          <th align="left">{t}Est. Shares this Round{/t}</td>
          <td id="b-target">{$ESTIMATES.shares} ({t}done{/t}: {$ESTIMATES.percent}%)</td>
        </tr>
    {if ! $GLOBAL.website.blockexplorer.disabled}
        <tr>
          <th align="left" width="50%">{t}Next Network Block{/t}</td>
          <td colspan="3">{$CURRENTBLOCK + 1} &nbsp;&nbsp;<font size="1"> ({t}Current{/t}: <a href="{$GLOBAL.website.blockexplorer.url}{$CURRENTBLOCKHASH}" target="_new">{$CURRENTBLOCK})</a></font></td>
        </tr>
    {else}
        <tr>
          <th align="left">{t}Next Network Block{/t}</td>
          <td colspan="3">{$CURRENTBLOCK + 1} &nbsp;&nbsp; ({t}Current{/t}: {$CURRENTBLOCK})</td>
        </tr>
    {/if}
        <tr>
          <th align="left">{t}Last Block Found{/t}</td>
          <td colspan="3"><a href="{$smarty.server.PHP_SELF}?page=statistics&action=round&height={$LASTBLOCK}" target="_new">{$LASTBLOCK|default:"0"}</a></td>
        </tr>
        <tr>
          <th align="left">{t}Time Since Last Block{/t}</td>
          <td colspan="3">{$TIMESINCELAST|seconds_to_words}</td>
        </tr>
      </tbody>
    </table>
  </div>
  </div>
  <footer>
{if !$GLOBAL.website.api.disabled}<ul><li>{t}These stats are also available in JSON format{/t} <a href="{$smarty.server.PHP_SELF}?page=api&action=getpoolstatus&api_key={$GLOBAL.userdata.api_key|default:""}">{t}HERE{/t}</a></li></ul>{/if}
  </footer>
</article>
