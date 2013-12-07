    <div class="user">
{if $GLOBAL.userdata.username|default}
            <p>ようこそ {$smarty.session.USERDATA.username|escape}</p>
{else}
            <p>ようこそ ゲストさん</p>
{/if}
    </div>
