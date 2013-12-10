<?php
ini_set('display_errors', 1);
// 変換テーブルの場所を指定します
echo $localeDir = realpath(__DIR__ . '/../../locale');
$language  = 'ja_JP.UTF-8';
$domain    = "messages";
putenv("LANG=$language");
putenv("LANGUAGE=$language");
setlocale(LC_ALL, $language);
setlocale(LC_MESSAGES, $language);
textdomain($domain);
bindtextdomain($domain, $localeDir);

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