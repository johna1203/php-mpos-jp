<div class="breadcrumbs_container">
    <article class="breadcrumbs">
        <a href="{$smarty.server.PHP_SELF}">{$GLOBAL.website.name|default:"Unknown Pool"|_}</a>
        <div class="breadcrumb_divider"></div>
        <a class="{if ! $smarty.request.action|default:""|_}current{/if}" {if $smarty.request.action|default:""}href="{$smarty.server.PHP_SELF}?page={$smarty.request.page|default:"home"}"{/if}>{$smarty.request.page|escape|default:"Home"|capitalize|_}</a>{if $smarty.request.action|default:""}
        <div class="breadcrumb_divider"></div>
        <a class="current">{$smarty.request.action|escape|capitalize|_}</a>{/if}</article>
</div>
