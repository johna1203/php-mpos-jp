{if is_array($YOURHASHRATES) && is_array($POOLHASHRATES)}
    <div class="tab_content" id="both">
      <table class="visualize" rel="area">
        <caption>{t}Your vs Pool Hashrate{/t}</caption>
        <thead>
          <tr>
            <td></td>
{foreach $YOURHASHRATES as $hour=>$hashrate}
            <th scope="col">{$hour|default:"0"}:00</th>
{/foreach}
          </tr>
        </thead>
        <tbody>
          <tr>
            <th scope="row">{$smarty.session.USERDATA.username}</th>
{foreach $YOURHASHRATES as $hour=>$hashrate}
            <td>{$hashrate|default:"0"}</td>
{/foreach}
          </tr>
          <tr>
            <th scope="row">{t}Pool{/t}</th>
{foreach $POOLHASHRATES as $hour=>$hashrate}
            <td>{$hashrate|default:"0"}</td>
{/foreach}
          </tr>
        </tbody>
      </table>
    </div>
{/if}
