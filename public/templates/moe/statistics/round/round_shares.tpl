<article class="module width_half">
  <header><h3>{t}Round Shares{/t}</h3></header>
  <table class="tablesorter" cellspacing="0">
    <thead>
      <tr>
        <th align="center">{t}Rank{/t}</th>
        <th align="left">{t}User Name{/t}</th>
        <th align="right">{t}Valid{/t}</th>
        <th align="right">{t}Invalid{/t}</th>
        <th align="right" style="padding-right: 25px;">{t}Invalid{/t} %</th>
      </tr>
    </thead>
    <tbody>
{assign var=rank value=1}
{assign var=listed value=0}
{foreach key=id item=data from=$ROUNDSHARES}
      <tr{if $GLOBAL.userdata.username|default:"" == $data.username}{assign var=listed value=1} style="background-color:#99EB99;"{else} class="{cycle values="odd,even"}"{/if}>
        <td align="center">{$rank++}</td>
        <td>{if $data.is_anonymous|default:"0" == 1 && $GLOBAL.userdata.is_admin|default:"0" == 0}anonymous{else}{$data.username|escape}{/if}</td>
        <td align="right">{$data.valid|number_format}</td>
        <td align="right">{$data.invalid|number_format}</td>
      	<td align="right" style="padding-right: 25px;">{if $data.invalid > 0 }{($data.invalid / $data.valid * 100)|number_format:"2"|default:"0"}{else}0.00{/if}</td>
      </tr>
{/foreach}
    </tbody>
  </table>
</article>
