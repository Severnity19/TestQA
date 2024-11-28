﻿#language: ru

@tree

Функционал: <Проверка расчета суммы Заказа при изменении количества или цены>

Как <Менеджер по продажам> я хочу
<Создать новый документ Заказ> 
чтобы <Проверить расчет суммы заказа>   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <Создать новый документ Заказ>
И В командном интерфейсе я выбираю "Продажи" "Заказы"
Тогда открылось окно "Заказы товаров"
И я нажимаю на кнопку с именем 'ФормаСоздать'
Тогда открылось окно "Заказ (создание)"
И из выпадающего списка с именем 'Организация' я выбираю точное значение "ООО \"1000 мелочей\""
И я нажимаю кнопку выбора у поля с именем 'Покупатель'
Тогда открылось окно "Контрагенты"
И в таблице 'Список' я перехожу на один уровень вниз
И в таблице 'Список' я перехожу к строке:
	| "Код"       | "Наименование" |
	| "000000004" | "Шлюзовая ООО" |
И в таблице 'Список' я выбираю текущую строку
Тогда открылось окно "Заказ (создание) *"
И из выпадающего списка с именем 'Склад' я выбираю точное значение "Склад отдела продаж"
И в таблице 'Товары' я нажимаю на кнопку с именем 'ТоварыДобавить'
И в таблице 'Товары' я нажимаю кнопку выбора у реквизита с именем 'ТоварыТовар'
Тогда открылось окно "Товары"
И в таблице 'Список' я перехожу к строке:
	| "Код"       | "Наименование" |
	| "000000011" | "Продукты"     |
И в таблице 'Список' я выбираю текущую строку
И в таблице 'Список' я перехожу к строке:
	| "Код"       | "Наименование" |
	| "000000029" | "Хлеб"         |
И в таблице 'Список' я выбираю текущую строку
Тогда открылось окно "Заказ (создание) *"
И в таблице 'Товары' я активизирую поле с именем 'ТоварыКоличество'
И в таблице 'Товары' в поле с именем 'ТоварыКоличество' я ввожу текст "100"
И я перехожу к следующему реквизиту
И в таблице 'Товары' я завершаю редактирование строки
* Проверка расчета суммы документа (в зависимости от количества)
Тогда таблица 'Товары' стала равной:
| 'Товар' | 'Цена'  | 'Количество' | 'Сумма'    |
| 'Хлеб'  | '20,00' | '100'        | '2 000,00' |
И элемент формы с именем 'ТоварыИтогКоличество' стал равен "100"
И элемент формы с именем 'ТоварыИтогСумма' стал равен "2 000"
И в таблице 'Товары' я нажимаю на кнопку с именем 'ТоварыДобавить'
И в таблице 'Товары' я нажимаю кнопку выбора у реквизита с именем 'ТоварыТовар'
Тогда открылось окно "Товары"
И в таблице 'Список' я перехожу к строке:
	| "Код"       | "Наименование" |
	| "000000011" | "Продукты"     |
И в таблице 'Список' я выбираю текущую строку
И в таблице 'Список' я перехожу к строке:
	| "Код"       | "Наименование" |
	| "000000032" | "Торт "        |
И в таблице 'Список' я выбираю текущую строку
Тогда открылось окно "Заказ (создание) *"
И в таблице 'Товары' я активизирую поле с именем 'ТоварыЦена'
И в таблице 'Товары' в поле с именем 'ТоварыЦена' я ввожу текст "500,00"
И я перехожу к следующему реквизиту
И в таблице 'Товары' я завершаю редактирование строки
* Проверка расчета суммы документа (в зависимости от цены)
Тогда таблица "Товары" содержит строки:
| 'Товар' | 'Цена'     | 'Количество' | 'Сумма'    |
	| 'Хлеб'  | '20,00'    | '100'        | '2 000,00' |
	| 'Торт ' | '500,00' | '1'          | '500,00' |
И элемент формы с именем 'ТоварыИтогКоличество' стал равен "101"
И элемент формы с именем 'ТоварыИтогСумма' стал равен "2 500"
И я нажимаю на кнопку с именем 'ФормаПровести'
