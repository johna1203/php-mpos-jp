         <tr>
           <td colspan="2"><b><u>{t}Round Shares{/t}</u></b> <span id='tt'><img src='{$PATH}/images/questionmark.png' height='15px' width='15px' title='Submitted shares since last found block (ie. round shares)'></span></td>
         </tr>
         <tr>
           <td><b>{t}Est. Shares{/t}</b></td>
           <td id="b-target" class="right">{$ESTIMATES.shares} ({t}done{/t}: {$ESTIMATES.percent}%)</td>
         </tr>
         <tr>
           <td><b>{t}Pool Valid{/t}</b></td>
           <td id="b-pvalid" class="right">{$GLOBAL.roundshares.valid}</td>
         </tr>
         <tr>
           <td><b>{t}Your Valid{/t}<b></td>
           <td id="b-yvalid" class="right">{$GLOBAL.userdata.shares.valid}</td>
         </tr>
         <tr>
           <td><b>{t}Pool Invalid{/t}</b></td>
           <td id="b-pivalid" class="right">{$GLOBAL.roundshares.invalid}</td>
         </tr>
         <tr>
           <td><b>{t}Your Invalid{/t}</b></td>
           <td id="b-yivalid" class="right">{$GLOBAL.userdata.shares.invalid}</td>
         </tr>
