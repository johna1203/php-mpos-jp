<form action="{$smarty.server.PHP_SELF}" method="post">
    <input type="hidden" name="page" value="{$smarty.request.page|escape}">
    <input type="hidden" name="action" value="{$smarty.request.action|escape}">
    <input type="hidden" name="do" value="updateAccount">
    <article class="module width_half">
        <header><h3>アカウント詳細</h3></header>
        <div class="module_content">
            <fieldset>
                <label>ユーザー名</label>
                <input type="text" value="{$GLOBAL.userdata.username|escape}" readonly/>
            </fieldset>
            <fieldset>
                <label>ユーザーID</label>
                <input type="text" value="{$GLOBAL.userdata.id}" readonly/>
            </fieldset>
            {if !$GLOBAL.website.api.disabled}
                <fieldset>
                    <label>API キー</label>
                    <a href="{$smarty.server.PHP_SELF}?page=api&action=getuserstatus&api_key={$GLOBAL.userdata.api_key}&id={$GLOBAL.userdata.id}">{$GLOBAL.userdata.api_key}</a>
                </fieldset>
            {/if}
            <fieldset>
                <label>メールアドレス</label>
                <input type="text" name="email" value="{nocache}{$GLOBAL.userdata.email|escape}{/nocache}" size="20"/>
            </fieldset>
            <fieldset>
                <label>ペイメントアドレス</label>
                <input type="text" name="paymentAddress" value="{nocache}{$smarty.request.paymentAddress|default:$GLOBAL.userdata.coin_address|escape}{nocache}" size="40"/>
            </fieldset>
            <fieldset>
                <label>寄付の割合</label>
                <font size="1"> 寄付金額をパーセンテージで入力して下さい (例: 0.5)</font>
                <input type="text" name="donatePercent" value="{nocache}{$smarty.request.donatePercent|default:$GLOBAL.userdata.donate_percent|escape}{nocache}" size="4"/>
            </fieldset>
            <fieldset>
                <label>自動支払い</label>
                <font size="1">{$GLOBAL.config.ap_threshold.min}
                    -{$GLOBAL.config.ap_threshold.max} {$GLOBAL.config.currency}. 自動支払いを行なわない場合は '0' を入力して下さい。</font>
                <input type="text" name="payoutThreshold" value="{$smarty.request.payoutThreshold|default:$GLOBAL.userdata.ap_threshold|escape}" size="5" maxlength="5"/>
            </fieldset>
            <fieldset>
                <label>匿名アカウント</label>
                管理者は以外の人からユーザー名が非表示になります。
                <label class="checkbox" for="is_anonymous">
                    <input class="ios-switch" type="hidden" name="is_anonymous" value="0"/>
                    <input class="ios-switch" type="checkbox" name="is_anonymous" value="1" id="is_anonymous" {if $GLOBAL.userdata.is_anonymous}checked{/if} />
                    <div class="switch"></div>
                </label>
            </fieldset>
            <fieldset>
                <label>４桁のPIN</label>
                <font size="1">登録時の４桁のPINを入力下さい。</font>
                <input type="password" name="authPin" size="4" maxlength="4">
            </fieldset>
        </div>
        <footer>
            <div class="submit_link">
                <input type="submit" value="Update Account" class="alt_btn">
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
                <h3>キャッシュアウト</h3>
            </header>
            <div class="module_content">
                <p style="padding-left:30px; padding-redight:30px; font-size:10px;">
                    Please note: a {$GLOBAL.config.txfee} {$GLOBAL.config.currency} transaction will apply when
                    processing "On-Demand" manual payments
                </p>
                <fieldset>
                    <label>Account Balance</label>
                    <input type="text" value="{nocache}{$GLOBAL.userdata.balance.confirmed|escape}{/nocache}" {$GLOBAL.config.currency} readonly/>
                </fieldset>
                <fieldset>
                    <label>Payout to</label>
                    <input type="text" value="{nocache}{$GLOBAL.userdata.coin_address|escape}{/nocache}" readonly/>
                </fieldset>
                <fieldset>
                    <label>4 digit PIN</label>
                    <input type="password" name="authPin" size="4" maxlength="4"/>
                </fieldset>
            </div>
            <footer>
                <div class="submit_link">
                    <input type="submit" value="Cash Out" class="alt_btn">
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
            <h3>Change Password</h3>
        </header>
        <div class="module_content">
            <p style="padding-left:30px; padding-redight:30px; font-size:10px;">
                Note: You will be redirected to login on successful completion of a password change
            </p>
            <fieldset>
                <label>Current Password</label>
                <input type="password" name="currentPassword"/>
            </fieldset>
            <fieldset>
                <label>New Password</label>
                <input type="password" name="newPassword"/>
            </fieldset>
            <fieldset>
                <label>New Password Repeat</label>
                <input type="password" name="newPassword2"/>
            </fieldset>
            <fieldset>
                <label>4 digit PIN</label>
                <input type="password" name="authPin" size="4" maxlength="4"/>
            </fieldset>
        </div>
        <footer>
            <div class="submit_link">
                <input type="submit" value="Change Password" class="alt_btn">
            </div>
        </footer>
    </article>
</form>
