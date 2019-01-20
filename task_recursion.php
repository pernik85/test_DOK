<?php
/**
 * Вывод меню на сайте
 *
 * Написать код, преобразовующий массив $links в html-список
 */

$links = [
	'Тормозные системы' => [
		'Тормозные колодки' => [
			'Bosch',
			'Meyle',
			'Уценка' => [
				'Ferodo',
			],
		],
		'Тормозные диски' => [
			'ABE',
			'Bosch',
			'Profit',
		],
		'Тормозные барабаны' => [
			'Textar',
			'Nipparts',
		],
	],
	'Коробка передач' => [
		'Сцепление' => [
			'LuK',
			'Nexus',
			'Sachs'
		],
	],
	'Электрика' => [
		'Exide',
		'Osram',
		'Valeo',
	],
	'Доставка',
	'Контакты',
];
//Ответ
echo viewTreeMenu($links);
function viewTreeMenu($links){
    $viewMenu = '<ul>';
    foreach ($links as $link => $val){
        if(is_array($val)){
            $viewMenu .= '<li>'.$link;
            $viewMenu .= viewTreeMenu($val);
            $viewMenu .= '</li>';
        } else {
            $viewMenu .= '<li>'.$val.'</li>';
        }

    }
    $viewMenu .= '</ul>';

    return $viewMenu;
}

/*
<ul>
    <li>Тормозные системы
        <ul>
            <li>Тормозные колодки
                <ul>
                    <li>Bosch</li>
                    <li>Meyle</li>
                    <li>Уценка
                        <ul>
                            <li>Ferodo</li>
                        </ul>
                    </li>
                </ul>
            </li>
            <li>Тормозные диски
                <ul>
                    <li>ABE</li>
                    <li>Bosch</li>
                    <li>Profit</li>
                </ul>
            </li>
            <li>Тормозные барабаны
                <ul>
                    <li>Textar</li>
                    <li>Nipparts</li>
                </ul>
            </li>
        </ul>
    </li>
    <li>Коробка передач
        <ul>
            <li>Сцепление
                <ul>
                    <li>LuK</li>
                    <li>Nexus</li>
                    <li>Sachs</li>
                </ul>
            </li>
        </ul>
    </li>
    <li>Электрика
        <ul>
            <li>Exide</li>
            <li>Osram</li>
            <li>Valeo</li>
        </ul>
    </li>
    <li>Доставка</li>
    <li>Контакты</li>
</ul>
*/