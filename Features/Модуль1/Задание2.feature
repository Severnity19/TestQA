﻿#language: ru

@tree

Функционал: <Проверка добавления количества для услуги>

Как <Менеджер по продажам> я хочу
<Создать новый заказ> 
чтобы <Проверить добавление количества для услуги >   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <Проверить добавление количества для услуги>
И В командном интерфейсе я выбираю "Продажи" "Заказ"
Тогда открылось окно "Заказ (создание)"
И из выпадающего списка с именем 'Организация' я выбираю точное значение "ООО \"1000 мелочей\""
И из выпадающего списка с именем 'Покупатель' я выбираю точное значение "Шлюзовая ООО"
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
И в таблице 'Товары' я завершаю редактирование строки
И в таблице 'Товары' я нажимаю на кнопку с именем 'ТоварыДобавить'
И в таблице 'Товары' я нажимаю кнопку выбора у реквизита с именем 'ТоварыТовар'
Тогда открылось окно "Товары"
И в таблице 'Список' я перехожу к строке:
	| "Код"       | "Наименование" |
	| "000000036" | "Услуги"       |
И в таблице 'Список' я выбираю текущую строку
Тогда открылось окно "Товары"
И в таблице 'Список' я перехожу к строке:
	| "Код"       | "Наименование" |
	| "000000037" | "Доставка"     |
И в таблице 'Список' я выбираю текущую строку
И в таблице 'Товары' я завершаю редактирование строки
И я нажимаю на кнопку с именем 'ФормаПровести'

Сценарий: не заполняется количество для услуги
И В командном интерфейсе я выбираю "Продажи" "Заказ"
Тогда открылось окно "Заказ (создание)"
И из выпадающего списка с именем 'Организация' я выбираю точное значение "ООО \"1000 мелочей\""
И из выпадающего списка с именем 'Покупатель' я выбираю точное значение "Шлюзовая ООО"
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
И в таблице 'Товары' я завершаю редактирование строки
И в таблице 'Товары' я нажимаю на кнопку с именем 'ТоварыДобавить'
И в таблице 'Товары' я нажимаю кнопку выбора у реквизита с именем 'ТоварыТовар'
Тогда открылось окно "Товары"
И в таблице 'Список' я перехожу к строке:
	| "Код"       | "Наименование" |
	| "000000036" | "Услуги"       |
И в таблице 'Список' я выбираю текущую строку
Тогда открылось окно "Товары"
И в таблице 'Список' я перехожу к строке:
	| "Код"       | "Наименование" |
	| "000000037" | "Доставка"     |
И в таблице 'Список' я выбираю текущую строку
И в таблице 'Товары' я завершаю редактирование строки
Тогда таблица 'Товары' стала равной:
	| 'Товар'    | 'Цена'   | 'Количество' | 'Сумма'  |
	| 'Хлеб'     | '20,00'  | '1'          | '20,00'  |
	| 'Доставка' | '200,00' | '1'          | '200,00' |
И я нажимаю на кнопку с именем 'ФормаПровести'