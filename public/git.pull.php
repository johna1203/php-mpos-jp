<?php
if (isset($_GET['key'])) {
    $key = $_GET['key'];
    if ($key == 'reinopool') {
        $rootPath = realpath(__DIR__ . '/../');
        chdir($rootPath);
        if (!exec('git pull 2>&1', $array)) {
            //command失敗を検知して処理したい
            echo "NG";
        } else {
            echo "OK";
        }
    }
}