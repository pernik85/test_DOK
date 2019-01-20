<?php
/**
 * Задание: 
 * Все слова, в которых есть повторяющиеся буквы (например, слова duMMy, TexT, EvEr, tOOk, ..), необходимо обернуть в тег <strong>.
 * На выходе должны получить строку "This is simply <strong>dummy</strong> <strong>text</strong> of the..."
 */
$string = '
    This is simply dummy text of the printing and typesetting industry.
    Lorem Ipsum has been the industrys standard dummy text ever since the 1500s,
    when an unknown printer took a galley of type
    and scrambled it to make a type specimen book.
';
//Ответ
$newDataString = array();
$string = trim($string);
$dataString = explode(' ', $string);

foreach ($dataString as $string){
    if(isRepeatedLetter($string)){
        $string = '<strong>'.$string.'</strong>';
    }
    $newDataString[] = $string;
}

echo implode(' ', $newDataString);

function isRepeatedLetter($string){
    $dataLetters = array();
    for($i = 0; $i < strlen($string); $i++){
        if(preg_match('/[a-z]/i', $string[$i])){
            $letterLower = strtolower($string[$i]);
            if(in_array($letterLower, $dataLetters)){
                return true;
            }
            $dataLetters[] = $letterLower;
        }
    }
    return false;
}
