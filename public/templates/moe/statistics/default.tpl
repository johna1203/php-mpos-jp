<article class="module width_full">
  <header><h3>{t}General Statistics{/t}</h3></header>
  <div class="module_content">
    <table class="" width="50%" style="font-size:14px;">
      <tbody>
        <tr>
          <td class="leftheader">{t}Pool Hash Rate{/t}</td>
          <td>{$GLOBAL.hashrate} {$GLOBAL.hashunits.pool}</td>
        </tr>
        <tr>
          <td class="leftheader">{t}Current Total Miners{/t}</td>
          <td>{$GLOBAL.workers}</td>
        </tr>
        <tr>
          <td class="leftheader">{t}Current Block{/t}</td>
          <td><a href="http://explorer.litecoin.net/search?q={$CURRENTBLOCK}" target="_new">{$CURRENTBLOCK}</a></td>
        </tr>
        <tr>
          <td class="leftheader">{t}Current Difficulty{/t}</td>
          <td><a href="http://allchains.info/" target="_new">{$DIFFICULTY}</a></td>
        </tr>
      </tbody>
    </table>
  </div>
  <footer>
{if !$GLOBAL.website.api.disabled}<ul><li>{t}These stats are also available in JSON format{/t} <a href="{$smarty.server.PHP_SELF}?page=api&action=public" target="_api">{t}HERE{/t}</a></li>{/if}
  </footer>
</article>
