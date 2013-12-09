<?php
use Zend\I18n\Translator\Translator;

function smarty_function_translate($str)
{
    if (isset($str['string'])) {

        $translator = new Translator();

        return $translator->translate($str['string']);
    }

    return "";
}

?>