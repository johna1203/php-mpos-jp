<hr/>
<li class="icon-home">
    <a href="{$smarty.server.PHP_SELF}">{t}Home{/t}</a>
</li>
{if $smarty.session.AUTHENTICATED|default:"0" == 1}
    <h3>{t}My Account{/t}</h3>
    <ul class="toggle">
        <li class="icon-gauge">
            <a href="{$smarty.server.PHP_SELF}?page=dashboard">{t}Dashboard{/t}</a>
        </li>
        <li class="icon-user">
            <a href="{$smarty.server.PHP_SELF}?page=account&action=edit">{t}Edit Account{/t}</a>
        </li>
        <li class="icon-photo">
            <a href="{$smarty.server.PHP_SELF}?page=account&action=workers">{t}My Workers{/t}</a>
        </li>
        <li class="icon-indent-left">
            <a href="{$smarty.server.PHP_SELF}?page=account&action=transactions">{t}Transactions{/t}</a>
        </li>
        {if !$GLOBAL.config.disable_notifications}
            <li class="icon-megaphone">
            <a href="{$smarty.server.PHP_SELF}?page=account&action=notifications">{t}Notifications{/t}</a></li>{/if}
        {if !$GLOBAL.config.disable_invitations}
            <li class="icon-plus">
            <a href="{$smarty.server.PHP_SELF}?page=account&action=invitations">{t}Invitations{/t}</a></li>{/if}
        <li class="icon-barcode">
            <a href="{$smarty.server.PHP_SELF}?page=account&action=qrcode">{t}QR Codes{/t}</a>
        </li>
    </ul>
    </li>
{/if}
{if $smarty.session.AUTHENTICATED|default:"0" == 1 && $GLOBAL.userdata.is_admin == 1}
    <h3>{t}Admin Panel{/t}</h3>
    <ul class="toggle">
        <li class="icon-bell">
            <a href="{$smarty.server.PHP_SELF}?page=admin&action=monitoring">{t}Monitoring{/t}</a>
        </li>
        <li class="icon-torso">
            <a href="{$smarty.server.PHP_SELF}?page=admin&action=user">{t}User Info{/t}</a>
        </li>
        <li class="icon-money">
            <a href="{$smarty.server.PHP_SELF}?page=admin&action=wallet">{t}Wallet Info{/t}</a>
        </li>
        <li class="icon-exchange">
            <a href="{$smarty.server.PHP_SELF}?page=admin&action=transactions">{t}Transactions{/t}</a>
        </li>
        <li class="icon-cog">
            <a href="{$smarty.server.PHP_SELF}?page=admin&action=settings">{t}Settings{/t}</a>
        </li>
        <li class="icon-doc">
            <a href="{$smarty.server.PHP_SELF}?page=admin&action=news">{t}News{/t}</a>
        </li>
        <li class="icon-chart">
            <a href="{$smarty.server.PHP_SELF}?page=admin&action=reports">{t}Reports{/t}</a>
        </li>
        <li class="icon-photo">
            <a href="{$smarty.server.PHP_SELF}?page=admin&action=poolworkers">{t}Pool Workers{/t}</a>
        </li>
    </ul>
{/if}
{if $smarty.session.AUTHENTICATED|default}
    <h3>{t}Statistics{/t}</h3>
    <ul class="toggle">
        <li class="icon-align-left">
            <a href="{$smarty.server.PHP_SELF}?page=statistics&action=pool">{t}Pool{/t}</a>
        </li>
        <li class="icon-th-large">
            <a href="{$smarty.server.PHP_SELF}?page=statistics&action=blocks">{t}Blocks{/t}</a>
        </li>
        <li class="icon-chart">
            <a href="{$smarty.server.PHP_SELF}?page=statistics&action=graphs">{t}Graphs{/t}</a>
        </li>
        <li class="icon-record">
            <a href="{$smarty.server.PHP_SELF}?page=statistics&action=round">{t}Round{/t}</a>
        </li>
        <li class="icon-search">
            <a href="{$smarty.server.PHP_SELF}?page=statistics&action=blockfinder">{t}Finder{/t}</a>
        </li>
        {if $GLOBAL.config.monitoring_uptimerobot_api_keys|default:"0"}
            <li class="icon-bell">
            <a href="{$smarty.server.PHP_SELF}?page=statistics&action=uptime">{t}Uptime{/t}</a></li>{/if}
    </ul>
{else}
    <h3>{t}Statistics{/t}</h3>
    <ul class="toggle">
        {if $GLOBAL.acl.pool.statistics}
        <li class="icon-align-left">
            <a href="{$smarty.server.PHP_SELF}?page=statistics&action=pool">{t}Pool{/t}</a>
        </li>
        {else}
        <li class="icon-align-left">
            <a href="{$smarty.server.PHP_SELF}?page=statistics">{t}Statistics{/t}</a>
            {/if}
            {if $GLOBAL.acl.block.statistics}
        <li class="icon-th-large">
            <a href="{$smarty.server.PHP_SELF}?page=statistics&action=blocks">{t}Blocks{/t}</a>
        </li>
        {/if}
        {if $GLOBAL.acl.round.statistics}
            <li class="icon-chart">
                <a href="{$smarty.server.PHP_SELF}?page=statistics&action=round">{t}Round{/t}</a>
            </li>
        {/if}
        {if $GLOBAL.acl.blockfinder.statistics}
            <li class="icon-search">
                <a href="{$smarty.server.PHP_SELF}?page=statistics&action=blockfinder">{t}Finder{/t}</a>
            </li>
        {/if}
        {if $GLOBAL.acl.uptime.statistics}
            {if $GLOBAL.config.monitoring_uptimerobot_api_keys|default:"0"}
                <li class="icon-bell">
                <a href="{$smarty.server.PHP_SELF}?page=statistics&action=uptime">{t}Uptime{/t}</a></li>{/if}
        {/if}
    </ul>
{/if}
<h3>{t}Help{/t}</h3>
<ul class="toggle">
    <li class="icon-desktop">
        <a href="{$smarty.server.PHP_SELF}?page=gettingstarted">{t}Getting Started{/t}</a>
    </li>
    <li class="icon-desktop">
        <a href="{$smarty.server.PHP_SELF}?page=gettingstarted&action=miner">CGMINER - LINUX編</a>
    </li>
    {if !$GLOBAL.website.about.disabled}
        <li class="icon-doc">
            <a href="{$smarty.server.PHP_SELF}?page=about&action=pool">{t}About{/t}</a>
        </li>
    {/if}
    {if !$GLOBAL.website.donors.disabled}
        <li class="icon-money">
            <a href="{$smarty.server.PHP_SELF}?page=about&action=donors">{t}Donors{/t}</a>
        </li>
    {/if}
</ul>
<h3>{t}Other{/t}</h3>
<ul class="toggle">
    {if $smarty.session.AUTHENTICATED|default:"0" == 1}
        {if !$GLOBAL.config.disable_contactform|default:"0" == 1}
            <li class="icon-mail">
                <a href="{$smarty.server.PHP_SELF}?page=contactform">{t}Support{/t}</a>
            </li>
        {/if}
        <li class="icon-off">
            <a href="{$smarty.server.PHP_SELF}?page=logout">{t}Logout{/t}</a>
        </li>
    {else}
        <li class="icon-login">
            <a href="{$smarty.server.PHP_SELF}?page=login">{t}Login{/t}</a>
        </li>
        <li class="icon-pencil">
            <a href="{$smarty.server.PHP_SELF}?page=register">{t}Sign Up{/t}</a>
        </li>
        <li class="icon-mail">
            <a href="{$smarty.server.PHP_SELF}?page=support">{t}Support{/t}</a>
        </li>
    {/if}
</ul>
<ul>
    <hr/>
</ul>
{if $smarty.session.AUTHENTICATED|default:"0" == 1}
    <br/>
{else}
    <ul>
        <center>
            <div style="display: inline-block;">
                <i><u><b><font size="2">{t}LIVE STATS{/t}</font></b></u></i>
                <div id="mr" style="width:180px; height:120px;"></div>
                <div id="hr" style="width:180px; height:120px;"></div>
            </div>
        </center>
    </ul>
    <hr/>
    <ul>
        <li>
            <div class="fb-like" data-href="http://www.moepool.com/" data-layout="box_count" data-action="recommend" data-show-faces="true" data-share="true"></div>
        </li>
    </ul>
    <hr/>
    {include file="global/navjs.tpl"}
{/if}
