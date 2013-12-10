<form action="{$smarty.server.PHP_SELF}" method="post">
    <input type="hidden" name="page" value="{$smarty.request.page|escape}">
    <input type="hidden" name="action" value="{$smarty.request.action|escape}">
    <input type="hidden" name="do" value="updateAccount">
    <article class="module width_half">
        <header><h3>{t}Account Details{/t}</h3></header>
        <div class="module_content">
            <fieldset>
                <label>{t}Username{/t}</label>
                <input type="text" value="{$GLOBAL.userdata.username|escape}" readonly/>
            </fieldset>
            <fieldset>
                <label>{t}User Id{/t}</label>
                <input type="text" value="{$GLOBAL.userdata.id}" readonly/>
            </fieldset>
            {if !$GLOBAL.website.api.disabled}
                <fieldset>
                    <label>{t}API Key{/t}</label>
                    <a href="{$smarty.server.PHP_SELF}?page=api&action=getuserstatus&api_key={$GLOBAL.userdata.api_key}&id={$GLOBAL.userdata.id}">{$GLOBAL.userdata.api_key}</a>
                </fieldset>
            {/if}
            <fieldset>
                <label>{t}E-Mail{/t}</label>
                <input type="text" name="email" value="{nocache}{$GLOBAL.userdata.email|escape}{/nocache}" size="20"/>
            </fieldset>
            <fieldset>
                <label>{t}Payment Address{/t}</label>
                <input type="text" name="paymentAddress" value="{nocache}{$smarty.request.paymentAddress|default:$GLOBAL.userdata.coin_address|escape}{nocache}" size="40"/>
            </fieldset>
            <fieldset>
                <label>{t}Donation Percentage{/t}</label>
                <font size="1">{t} Donation amount in percent (example: 0.5){/t}</font>
                <input type="text" name="donatePercent" value="{nocache}{$smarty.request.donatePercent|default:$GLOBAL.userdata.donate_percent|escape}{nocache}" size="4"/>
            </fieldset>
            <fieldset>
                <label>{t}Automatic Payout Threshold{/t}</label>
                <font size="1">{t escape=yes min=$GLOBAL.config.ap_threshold.min max=$GLOBAL.config.ap_threshold.max currency=$GLOBAL.config.currency}%1-%2 %3. Set to '0' for no auto payout.{/t}</font>
                <input type="text" name="payoutThreshold" value="{$smarty.request.payoutThreshold|default:$GLOBAL.userdata.ap_threshold|escape}" size="5" maxlength="5"/>
            </fieldset>
            <fieldset>
                <label>{t}Anonymous Account{/t}</label>
                {t}Hide username on website from others. Admins can still get your user information.{/t}
                <label class="checkbox" for="is_anonymous">
                    <input class="ios-switch" type="hidden" name="is_anonymous" value="0"/>
                    <input class="ios-switch" type="checkbox" name="is_anonymous" value="1" id="is_anonymous" {if $GLOBAL.userdata.is_anonymous}checked{/if} />
                    <div class="switch"></div>
                </label>
            </fieldset>
            <fieldset>
                <label>{t}4 digit PIN{/t}</label>
                <font size="1">{t}The 4 digit PIN you chose when registering{/t}</font>
                <input type="password" name="authPin" size="4" maxlength="4">
            </fieldset>
        </div>
        <footer>
            <div class="submit_link">
                <input type="submit" value="{t}Update Account{/t}" class="alt_btn">
            </div>
        </footer>
    </article>
</form>

{if !$GLOBAL.disable_mp}
    <form action="{$smarty.server.PHP_SELF}" method="post">
        <input type="hidden" name="page" value="{$smarty.request.page|escape}">
        <input type="hidden" name="action" value="{$smarty.request.action|escape}">
        <input type="hidden" name="do" value="cashOut">
        <article class="module width_half">
            <header>
                <h3>{t}Cash Out{/t}</h3>
            </header>
            <div class="module_content">
                <p style="padding-left:30px; padding-redight:30px; font-size:10px;">
                    {t txfee=$GLOBAL.config.txfee currency=$GLOBAL.config.currency}Please note: a %1 %2 transaction will apply when processing "On-Demand" manual payments{/t}
                </p>
                <fieldset>
                    <label>{t}Account Balance{/t}</label>
                    <input type="text" value="{nocache}{$GLOBAL.userdata.balance.confirmed|escape}{/nocache}" {$GLOBAL.config.currency} readonly/>
                </fieldset>
                <fieldset>
                    <label>{t}Payout to{/t}</label>
                    <input type="text" value="{nocache}{$GLOBAL.userdata.coin_address|escape}{/nocache}" readonly/>
                </fieldset>
                <fieldset>
                    <label>{t}4 digit PIN{/t}</label>
                    <input type="password" name="authPin" size="4" maxlength="4"/>
                </fieldset>
            </div>
            <footer>
                <div class="submit_link">
                    <input type="submit" value="{t}Cash Out{/t}" class="alt_btn">
                </div>
            </footer>
        </article>
    </form>
{/if}

<form action="{$smarty.server.PHP_SELF}" method="post">
    <input type="hidden" name="act" value="updatePassword">
    <input type="hidden" name="page" value="{$smarty.request.page|escape}">
    <input type="hidden" name="action" value="{$smarty.request.action|escape}">
    <input type="hidden" name="do" value="updatePassword">
    <article class="module width_half">
        <header>
            <h3>{t}Change Password{/t}</h3>
        </header>
        <div class="module_content">
            <p style="padding-left:30px; padding-redight:30px; font-size:10px;">
                {t}Note: You will be redirected to login on successful completion of a password change{/t}
            </p>
            <fieldset>
                <label>{t}Current Password{/t}</label>
                <input type="password" name="currentPassword"/>
            </fieldset>
            <fieldset>
                <label>{t}New Password{/t}</label>
                <input type="password" name="newPassword"/>
            </fieldset>
            <fieldset>
                <label>{t}New Password Repeat{/t}</label>
                <input type="password" name="newPassword2"/>
            </fieldset>
            <fieldset>
                <label>{t}4 digit PIN{/t}</label>
                <input type="password" name="authPin" size="4" maxlength="4"/>
            </fieldset>
        </div>
        <footer>
            <div class="submit_link">
                <input type="submit" value="{t}Change Password{/t}" class="alt_btn">
            </div>
        </footer>
    </article>
</form>
