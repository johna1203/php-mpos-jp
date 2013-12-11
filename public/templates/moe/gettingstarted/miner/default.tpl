<style type="text/css">
    pre {
        border: solid 1px #a0a0a0;
        margin: 1em;
        padding: 0.7em;
        font-size: 11px;
        color: #ffffff;
        background-color: #000000;
        opacity: 0.9;
    }

    .synSpecial {
        color: #7fffd4;
    }

    /* 特殊文字、記号 */
    .synType {
        color: #4169e1;
    }

    /* タイプ */
    .synComment {
        color: #78727f;
    }

    /* コメント */
    .synPreProc {
        color: #ffd700;
    }

    /* 前処理 */
    .synIdentifier {
        color: #00e5e5;
    }

    /* 識別子 */
    .synConstant {
        color: #ffffff;
    }

    /* 定数、文字列 */
    .synStatement {
        color: #ff8c00;
    }

    /* 命令 */
</style>
<article class="module width_full">
    <header><h3>CGMiner - Linux編</h3></header>
    <div class="module_content">
        <ul>
            <li>1.
                <strong>CGMiner Linux版のダウンロード</strong>

                <p>
                    <a href="http://ck.kolivas.org/apps/cgminer/">http://ck.kolivas.org/apps/cgminer/</a>
                    から最新版を確認して下さい
                </p>
                <p>現在の最新版は cgminer-3.8.5-x86_64-built.tar.bz2 でした。現 2013-12-10</p>

                <pre>
<span class="synPreProc">wget を使ってダウンロードを行ないます。</span>
$ wget http://ck.kolivas.org/apps/cgminer/cgminer-3.8.5-x86_64-built.tar.bz2
<span class="synPreProc">ダウンロードしたファイルを解凍致します。　※今回ダウンロードしたのは、tar.bz2なので以下のコマンドで解凍します。</span>
$ bzip2 -dc cgminer-3.8.5-x86_64-built.tar.bz2 | tar xvf -
<span class="synPreProc">解凍したディレクトリ内に入ります。</span>
$ cd cgminer-3.8.5-x86_64-built/
<span class="synPreProc">
今回は、ビルド済みのcgminerディレクトリ内にをダウンロードしたので
解凍するだけで、cgminerのバイナリファイルが使えるようになります。
</span>
$ ls -la
合計 1120
drwxr-xr-x  3 johna johna   4096 12月  9 21:16 .
drwxr-xr-x 44 johna johna   4096 12月 10 23:14 ..
-rw-r--r--  1 johna johna   1578 12月  9 21:16 01-cgminer.rules
-rw-r--r--  1 johna johna  54842 12月  9 21:16 API-README
-rw-r--r--  1 johna johna   3431 12月  9 21:16 API.class
-rw-r--r--  1 johna johna  13239 12月  9 21:16 ASIC-README
-rw-r--r--  1 johna johna    431 12月  9 21:16 AUTHORS
-rw-r--r--  1 johna johna  35147 12月  9 21:16 COPYING
-rw-r--r--  1 johna johna    160 12月  9 21:16 ChangeLog
-rw-r--r--  1 johna johna  12021 12月  9 21:16 FPGA-README
-rw-r--r--  1 johna johna   5678 12月  9 21:16 MCast.class
-rw-r--r--  1 johna johna 273084 12月  9 21:16 NEWS
-rw-r--r--  1 johna johna  31831 12月  9 21:16 README
-rw-r--r--  1 johna johna   7196 12月  9 21:16 api-example.c
-rw-r--r--  1 johna johna   2056 12月  9 21:16 api-example.php
-rwxr-xr-x  1 johna johna   1334 12月  9 21:16 api-example.py
drwxr-xr-x  2 johna johna   4096 12月  9 21:16 bitstreams
<span class="synSpecial">-rwxr-xr-x  1 johna johna 574856 12月  9 21:16 cgminer</span>
-rw-r--r--  1 johna johna    384 12月  9 21:16 example.conf
-rw-r--r--  1 johna johna  10861 12月  9 21:16 linux-usb-cgminer
-rw-r--r--  1 johna johna  68473 12月  9 21:16 miner.php
<span class="synPreProc">
cgminerコマンドを実行します。
オプション：
<em class="synType">{t}Weblogin{/t}</em>            : 登録時のユーザーに書き換えて下さい。
<em class="synType">{t}Worker{/t}</em>              : 登録した{t}Worker Name{/t}に書き換えて下さい。
<em class="synType">{t}Worker password{/t}</em>     : 登録したワーカーのパスワードです。
※<em class="synType">{t}Weblogin{/t}</em>と<em class="synType">{t}Worker{/t}</em>の間の . (ドット)は忘れないで下さい。
※あなたの{t}Worker{/t}の情報は、<a href="{$smarty.server.PHP_SELF}?page=account&action=workers">こちら</a>のリンクから見る事ができます。
</span>
./cgminer -o stratum+tcp://{$smarty.server.SERVER_NAME}:{$SITESTRATUMPORT|default:"3333"} -u <em class="synType">{t}Weblogin{/t}</em>.<em class="synType">{t}Worker{/t}</em> -p <em class="synType">{t}Worker password{/t}</em>

                </pre>
            </li>
        </ul>
        <div style="text-align: center;">
            {include file="global/fb-comments.tpl"}
        </div>

    </div>
</article>
