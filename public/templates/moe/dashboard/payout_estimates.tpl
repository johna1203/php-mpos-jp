
         <tr>
           <td colspan="2"><b><u>{$GLOBAL.config.currency} {t}Estimates{/t}</u></b></td>
         </tr>
{if $GLOBAL.config.payout_system != 'pps'}
         <tr>
           <td><b>{t}Block{/t}</b></td>
           <td id="b-block" class="right">{$GLOBAL.userdata.estimates.block}</td>
         </tr>
         <tr>
           <td><b>{t}Fees{/t}</b></td>
           <td id="b-fee" class="right">{$GLOBAL.userdata.estimates.fee}</td>
         </tr>
         <tr>
           <td><b>{t}Donation{/t}</b></td>
           <td id="b-donation" class="right">{$GLOBAL.userdata.estimates.donation}</td>
         </tr>
         <tr>
           <td><b>{t}Payout{/t}</b></td>
           <td id="b-payout" class="right">{$GLOBAL.userdata.estimates.payout}</td>
         </tr>
{else}
        <tr>
          <td><b>{t}in 1 hour{/t}</b></td>
          <td id="b-est1hour" align="left">{$GLOBAL.userdata.estimates.hours1|round:"8"}</td>
        </tr>
        <tr>
          <td><b>{t}in 24 hours{/t}</b></td>
          <td id="b-est24hours" align="left">{($GLOBAL.userdata.estimates.hours24)|round:"8"}</td>
        </tr>
        <tr>
          <td><b>{t}in 7 days{/t}</b></td>
          <td id="b-est7days" align="left">{($GLOBAL.userdata.estimates.days7)|round:"8"}</td>
        </tr>
        <tr>
          <td><b>{t}in 14 days{/t}</b></td>
          <td id="b-est14days" align="left">{($GLOBAL.userdata.estimates.days14)|round:"8"}</td>
        </tr>
        <tr>
          <td><b>{t}in 30 days{/t}</b></td>
          <td id="b-est30days" align="left">{($GLOBAL.userdata.estimates.days30)|round:"8"}</td>
        </tr>
{/if}
