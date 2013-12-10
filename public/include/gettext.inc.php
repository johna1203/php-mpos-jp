<?php
ini_set('display_errors', 1);
// 変換テーブルの場所を指定します
$localeDir = realpath(__DIR__ . '/../../locale');
$language  = 'ja_JP.utf8';
$domain    = "messages";
putenv("LANG=$language");
$res = setlocale(LC_ALL, $language);
var_dump($res);

//system('locale -a');

bind_textdomain_codeset($domain, "UTF8");
bindtextdomain($domain, $localeDir);
textdomain($domain);

//echo gettext("My Account");

function GetPrefLanguage($str_http_languages)
{
    $lang = substr($str_http_languages, 0, 2);

    switch ($lang) {
        case 'fr':
            return 'fr_FR';
            break;
        case 'de':
            return 'de_DE';
            break;
        case 'en':
            return 'en_US';
            break;
        default:
            return 'ja_JP';
    }
}