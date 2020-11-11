
Процедура ОбработкаПроведения(Отказ, Режим)
	//{{__КОНСТРУКТОР_ДВИЖЕНИЙ_РЕГИСТРОВ
	// Данный фрагмент построен конструктором.
	// При повторном использовании конструктора, внесенные вручную изменения будут утеряны!!!

	// регистр ТоварыНаСкладах Приход
	Движения.ТоварыНаСкладах.Записывать = Истина;
	Для Каждого ТекСтрокаТовары Из Товары Цикл
		Движение = Движения.ТоварыНаСкладах.Добавить();
		Движение.ВидДвижения = ВидДвиженияНакопления.Приход;
		Движение.Период = Дата;
		Движение.Номенклатура = ТекСтрокаТовары.Товар;
		Движение.Склад = Склад;
		Движение.Количетсво = ТекСтрокаТовары.Количество;
	КонецЦикла;

	// регистр СебестоимостьТовара Приход
	Движения.СебестоимостьТовара.Записывать = Истина;
	Для Каждого ТекСтрокаТовары Из Товары Цикл
		Движение = Движения.СебестоимостьТовара.Добавить();
		Движение.ВидДвижения = ВидДвиженияНакопления.Приход;
		Движение.Период = Дата;
		Движение.Номенклатура = ТекСтрокаТовары.Товар;
		Движение.Сумма = ТекСтрокаТовары.Сумма;
		Движение.Количество = ТекСтрокаТовары.Количество;
	КонецЦикла;

	//}}__КОНСТРУКТОР_ДВИЖЕНИЙ_РЕГИСТРОВ
КонецПроцедуры
