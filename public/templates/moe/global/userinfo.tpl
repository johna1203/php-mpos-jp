    <div class="user">
{if $GLOBAL.userdata.username|default}
            <p>{t escape=yes name=$smarty.session.USERDATA.username|escape}Welcome %1{/t}</p>
{else}
            <p>{t}Welcome Guest{/t}</p>
{/if}
    </div>
