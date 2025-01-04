#language: ru

@tree
@ExportScenarios
@IgnoreOnCIMainBuild

Функционал: Тестовые данные 

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: создание объектов для шапки Заказа
	И я проверяю или создаю для справочника "ВидыЦен" объекты:
		| 'Ссылка'                                                             | 'ПометкаУдаления' | 'Код'       | 'Наименование' |
		| 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4225' | 'False'           | '000000002' | 'Оптовая'      |

	И я проверяю или создаю для справочника "Контрагенты" объекты:
		| 'Ссылка'                                                                 | 'Код'       | 'Наименование' | 'Регион'                                                             | 'ВидЦен'                                                             |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c4234' | '000000004' | 'Шлюзовая ООО'  | 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c422f' | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4225' |

	И я проверяю или создаю для справочника "Организации" объекты:
		| 'Ссылка'                                                                 | 'Код'       | 'Наименование'       | 'ВалютныйУчет' |
		| 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c63' | '000000001' | 'ООО "Все для дома"' | 'True'         |
		| 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c65' | '000000003' | 'ООО "1000 мелочей"' | 'False'        |

	И я проверяю или создаю для справочника "Валюты" объекты:
		| 'Ссылка'                                                            | 'Код'       | 'Наименование' |
		| 'e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4421dda1c5' | '000000001' | 'Рубли'        |

	И я проверяю или создаю для справочника "Регионы" объекты:
	| 'Ссылка'                                                             | 'Код'       | 'Наименование' |
	| 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c422f' | '000000001' | 'Москва'       |

	И я проверяю или создаю для справочника "Склады" объекты:
		| 'Ссылка'                                                            | 'Код'       | 'Наименование'        | 'НеИспользовать' |
		| 'e1cib/data/Справочник.Склады?ref=8ca1000d8843cd1b11dc8eb49faea67b' | '000000004' | 'Склад отдела продаж' | 'False'          |

Сценарий: создание объектов для ТЧ Заказа
	И я проверяю или создаю для справочника "Товары" объекты:
		| 'Ссылка'                                                            | 'Код'       | 'Наименование' | 'Вид'                    | 'Описание'                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
		| 'e1cib/data/Справочник.Товары?ref=8ca0000d8843cd1b11dc8d043d710077' | '000000029' | 'Хлеб'         | 'Enum.ВидыТоваров.Товар' | '<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN"><html><head><meta name="viewport" content="initial-scale=1.0, width=device-width"></meta><meta http-equiv="Content-Type" content="text/html; charset=utf-8"></meta><meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7"></meta><meta name="format-detection" content="telephone=no"></meta><style type="text/css">\nbody{margin:0px;padding:8px;overflow:auto;width:100%;height:100%;}\np{line-height:1.15;margin:0px;}\nol,ul{margin-top:0px;margin-bottom:0px;}\nimg{border: none;}\n</style></head><body>\n<p>Хлеб "Московский" от Мосхлеб ОАО.</p>\n<p><span style=" font-weight: bold;">Вес</span>  - 0.4 кг.</p>\n<p><span style=" font-weight: bold;">Мука</span> - Пшеничная.<br><span style=" font-weight: bold;">Упаковка </span>- пакет.</p>\n</body></html>'                 |
		| 'e1cib/data/Справочник.Товары?ref=8ca1000d8843cd1b11dc8eb360f70b4d' | '000000032' | 'Торт'         | 'Enum.ВидыТоваров.Товар' | '<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN"><html><head><meta name="viewport" content="initial-scale=1.0, width=device-width"></meta><meta http-equiv="Content-Type" content="text/html; charset=utf-8"></meta><meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7"></meta><meta name="format-detection" content="telephone=no"></meta><style type="text/css">\nbody{margin:0px;padding:8px;overflow:auto;width:100%;height:100%;}\np{line-height:1.15;margin:0px;}\nol,ul{margin-top:0px;margin-bottom:0px;}\nimg{border: none;}\n</style></head><body>\n<p>Торт "Праздничный".</p>\n<p>Три бисквитных коржа со вкусом шоколада щедро залиты банановым кремом.<br></p>\n<p><span style=" font-weight: bold;">Вес </span>- 1кг.</p>\n<p><span style=" font-weight: bold;">Страна-производитель</span> - Россия.</p>\n</body></html>' |

И я проверяю или создаю для регистра сведений "ЦеныТоваров" записи:
		| 'Период'             | 'Товар'                                                             | 'ВидЦен'                                                             | 'Цена' |
		| '09.02.2022 0:00:00' | 'e1cib/data/Справочник.Товары?ref=8ca0000d8843cd1b11dc8d043d710077' | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4225' | 20     |
