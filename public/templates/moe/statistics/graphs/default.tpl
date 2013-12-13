<article class="module width_full">
  <header>
    <h3 class="tabs_involved">{t}Stats{/t}</h3>
    <ul class="tabs">
        <li><a href="#mine">{t}Mine{/t}</a></li>
        <li><a href="#pool">{t}Pool{/t}</a></li>
        <li><a href="#both">{t}Both{/t}</a></li>
    </ul>
  </header>
  <div class="tab_container">
{include file="{$smarty.request.page}/{$smarty.request.action}/mine.tpl"}
{include file="{$smarty.request.page}/{$smarty.request.action}/pool.tpl"}
{include file="{$smarty.request.page}/{$smarty.request.action}/both.tpl"}
  </div>
</article>
