    <hgroup>
      <h1 class="site_title">{$GLOBAL.website.name|default:"Unknown Pool"|_}</h1>
      <h2 class="section_title">{if $smarty.request.action|escape|default:""}{$smarty.request.action|escape|capitalize}{else}{$smarty.request.page|escape|default:"home"|capitalize|_}{/if}</h2>
    </hgroup>
    {include file="login/small.tpl"}
