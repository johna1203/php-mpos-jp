<article class="module width_full">
  <header><h3>{t}Getting Started Guide{/t}</h3></header>
  <div class="module_content">
     <h4 class="info">現在もっと詳しい資料を作成しておりますので、資料が出上がるまでこのページを参考にするか萌えプールの<a href="https://github.com/johna1203/php-mpos-jp/issues">サポートページ</a>に質問して下さい</h4>
     <br />
     <br />
     <br />

    <li>1. <strong>{t}Create account.{/t}</strong>
      <ul>
        <li>{t escape=no phpself=$smarty.server.PHP_SELF}Register <a href="%1?page=register">here</a>, or login if you already have account{/t}</li>
        <li>{t escape=no phpself=$smarty.server.PHP_SELF}Create a <a href="%1?page=account&action=workers">worker</a> that will be used by the miner to login{/t}</li>
      </ul>
    </li>
    <li>2. <strong>{t}Download a miner.{/t}</strong>
      <ul>
        <li>{t escape=no osname="Linux/Windows" url="http://ck.kolivas.org/apps/cgminer/"}<em>CGMiner %1:</em> <a href="%2" target="_blank">Download here</a>{/t}</li>
        <li>{t escape=no osname="Mac OS X" url="http://ck.kolivas.org/apps/cgminer/"}<em>CGMiner %1:</em> <a href="%2" target="_blank">Download here</a>{/t}</li>
        <li>{t escape=no osname="Mac/Linux/Windows" url="https://bitcointalk.org/index.php?topic=55038.msg654850#msg654850"}<em>CPU Miner %1:</em> precompiled binaries are available <a href="%2" target="_blank">Download here</a>{/t}</li>
        <li></li>
      </ul>
    </li>
    <li>3. <strong>{t}Configure your miner.{/t}</strong>
      <p>{t}Settings for Stratum (recommended):{/t}</p>
      <table width="50%">
        <tbody>
          <tr><td>{t}STRATUM{/t}:</td><td><kbd>stratum+tcp://{$smarty.server.SERVER_NAME}</kbd></td></tr>
          <tr><td>{t}PORT{/t}:</td><td><kbd>{$SITESTRATUMPORT|default:"3333"}</kbd></td></tr>
          <tr><td>{t}Username{/t}:</td><td><kbd><em>Weblogin</em>.<em>Worker</em></kbd></td></tr>
          <tr><td>{t}Password{/t}:</td><td><kbd>{t}Worker Password{/t}</kbd></td></tr>
        </tbody>
      </table>
      <p>{t}If you use a command-line miner, type:{/t}</p>
      <pre>./cgminer {if $GLOBAL.config.algorithm == 'scrypt'}--scrypt {/if} -o stratum+tcp://{$smarty.server.SERVER_NAME}:{$SITESTRATUMPORT|default:"3333"} -u <em>{t}Weblogin{/t}</em>.<em>{t}Worker{/t}</em> -p <em>{t}Worker password{/t}</em></pre>
      <p>{t escape=no phpself=$smarty.server.PHP_SELF}If you want, you can create additional workers with usernames and passwords of your choice <a href="%1?page=account&action=workers">Here</a>{/t}</p>
    </li>
    <li>4. <strong>{t coinname=$SITECOINNAME|default:"Litecoin"}Create a %1 address to recieve payments.{/t}</strong>
      <ul>
        <li> {t litecoinurl=$SITECOINURL|default:"http://www.litecoin.org"}Downloading the client &amp; block chain: 	Download the %1 client from <a href="{$SITECOINURL|default:"http://www.litecoin.org"}" target="_blank">here</a>.{/t}
          <p>{t}Generate a new address and input it on your account page to receive payments.{/t}</p>
        </li>
      </ul>
    </li>
    <li>5. <strong>{t}Advanced cgminer settings / FAQ{/t}</strong>
      <ul>
        <li><a href="https://github.com/ckolivas/cgminer/blob/master/SCRYPT-README" target="_blank">Scrypt readme</a></li>
        <li>{t escape=no}Don't set <b>intensity</b> too high, I=11 is standard and safest. Higher intensity takes more GPU RAM. Check for <b>hardware errors</b> in cgminer (HW). HW=0 is good, otherwise lower intensity :){/t}</li>
        <li>{t escape=no url="http://litecoin.info/Mining_Hardware_Comparison"}Set shaders according to the readme (or look at your graphic cards specifications). Cgminer uses this value at first run to calculate <b>thread-concurrency</b>. Easiest way to get this optimized is to use same settings as others have used here: <a href="%1">here</a>.{/t}</li>
        <li>{t}There's also an interesting project which gives you a GUI for cgminer. Windows only it seems.{/t}</li>
        <li>{t escape=no url="https://docs.google.com/document/d/1Gw7YPYgMgNNU42skibULbJJUx_suP_CpjSEdSi8_z9U/preview?sle=true"}Here's a great <a href="%1" target="_blank">guide</a> how to get up and running with Xubuntu.{/t}</li>
      </ul>
    </li>
  </div>
</article>
