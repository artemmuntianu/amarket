USE [AMarket]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (2, NULL, N'Автомобили и транспорт')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (3, 2, N'Легковые автомобили')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (4, 2, N'Мототехника')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (5, 2, N'Грузовые автомобили')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (6, 2, N'Автобусы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (7, 2, N'Водный транспорт')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (8, 2, N'Спецтехника')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (9, 2, N'Сельхозтехника')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (10, 2, N'Прицепы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (11, 2, N'Шины, диски')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (12, 2, N'Запчасти')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (13, 2, N'GPS, автоэлектроника')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (14, 2, N'Автооборудование и инструмент')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (15, 2, N'Автохимия, масла')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (16, 2, N'Автоаксессуары')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (17, NULL, N'Работа')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (18, 17, N'IT и компьютеры')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (19, 17, N'Бухгалтерия и финансы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (20, 17, N'Красота и спорт')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (21, 17, N'Культура и искусство')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (22, 17, N'Маркетинг, реклама и СМИ')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (23, 17, N'Медицина, фармация, ветеринария')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (24, 17, N'Недвижимость, страхование')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (25, 17, N'Образование')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (26, 17, N'Право, охрана и безопасность')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (27, 17, N'Производство и энергетика')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (28, 17, N'Служба персонала, секретариат и АХО')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (29, 17, N'Строительство')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (30, 17, N'Сельское хозяйство')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (31, 17, N'Розничная торговля и продажи')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (32, 17, N'Сфера услуг')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (33, 17, N'Транспорт и логистика')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (34, 17, N'Туризм, отдых, гостиницы и рестораны')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (35, NULL, N'Недвижимость')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (36, 35, N'Аренда квартир')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (37, 35, N'Аренда комнат')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (38, 35, N'Аренда домов')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (39, 35, N'Аренда земли')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (40, 35, N'Аренда гаражей / стоянок')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (41, 35, N'Продажа квартир')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (42, 35, N'Продажа комнат')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (43, 35, N'Продажа домов')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (44, 35, N'Продажа земли')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (45, 35, N'Продажа гаражей / стоянок')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (46, 35, N'Аренда коммерческой недвижимости')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (47, 35, N'Продажа коммерческой недвижимости')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (48, NULL, N'Электроника')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (49, 48, N'Компьютеры, ноутбуки, планшеты')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (50, 48, N'Смартфоны, телефоны')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (51, 48, N'Игровые приставки, игры')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (52, 48, N'Фототехника')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (53, 48, N'Аудиотехника')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (54, 48, N'ТВ и видеотехника')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (55, 48, N'Офисная техника')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (56, 48, N'Сетевое оборудование')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (57, 48, N'Программное обеспечение')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (58, 48, N'Носители информации')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (59, 48, N'Аксессуары для ПК')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (60, 48, N'Аксессуары для ноутбуков')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (61, 48, N'Аксессуары для планшетов')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (62, NULL, N'Бытовая техника')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (63, 62, N'Крупная бытовая техника')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (64, 62, N'Техника для кухни')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (65, 62, N'Климатическая техника')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (66, 62, N'Техника для дома')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (67, 62, N'Индивидуальный уход')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (68, NULL, N'Строительство и ремонт')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (69, 68, N'Строительные материалы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (70, 68, N'Кровельные материалы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (71, 68, N'Отделочные и облицовочные материалы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (72, 68, N'Металлопрокат, арматура')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (73, 68, N'Крепежные материалы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (74, 68, N'Готовые конструкции')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (75, 68, N'Вентиляционные системы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (76, 68, N'Отопительные системы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (77, 68, N'Сантехника')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (78, 68, N'Электрика')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (79, 68, N'Инструменты')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (80, NULL, N'Дом и Сад')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (81, 80, N'Продукты питания, напитки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (82, 80, N'Мебель')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (83, 80, N'Домашний текстиль')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (84, 80, N'Посуда')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (85, 80, N'Комнатные растения')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (86, 80, N'Садоводство')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (87, 80, N'Садовый инвентарь')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (88, 80, N'Предметы интерьера')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (89, 80, N'Бытовая химия')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (90, NULL, N'Одежда, обувь, аксессуары')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (91, 90, N'Женская обувь')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (92, 90, N'Мужская обувь')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (93, 90, N'Женская одежда')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (94, 90, N'Мужская одежда')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (95, 90, N'Все для свадьбы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (96, 90, N'Спецодежда')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (97, 90, N'Аксессуары')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (98, 90, N'Наручные часы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (99, 90, N'Украшения, бижутерия')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (100, NULL, N'Детский мир')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (101, 100, N'Детская одежда')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (102, 100, N'Детская обувь')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (103, 100, N'Коляски')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (104, 100, N'Автокресла')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (105, 100, N'Детский транспорт')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (106, 100, N'Детская мебель')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (107, 100, N'Игрушки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (108, 100, N'Товары для школы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (109, 100, N'Товары для кормления')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (110, 100, N'Детская косметика')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (111, NULL, N'Услуги, бизнес, индустрия')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (112, 111, N'Бытовые услуги')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (113, 111, N'Услуги для красоты и здоровья')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (114, 111, N'Няни и сиделки, домашний персонал')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (115, 111, N'Охрана и безопасность')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (116, 111, N'Перевод, набор и редактирование текстов')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (117, 111, N'Перевозки и автомобильные услуги')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (118, 111, N'Праздники и торжества')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (119, 111, N'Промышленное оборудование и услуги')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (120, 111, N'Реклама и полиграфия, маркетинг')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (121, 111, N'Ремонт и строительство')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (122, 111, N'Репетиторство, обучение')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (123, 111, N'Риэлторские услуги')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (124, 111, N'Услуги для животных')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (125, 111, N'Финансовые услуги')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (126, 111, N'Юридические услуги')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (127, NULL, N'Красота и здоровье')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (128, 127, N'Парфюмерия')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (129, 127, N'Декоративная косметика')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (130, 127, N'Уход за лицом')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (131, 127, N'Уход за телом')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (132, 127, N'Уход за волосами')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (133, 127, N'Мужская косметика')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (134, 127, N'Гигиенические изделия и средства')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (135, 127, N'Товары для здоровья')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (136, NULL, N'Хобби, отдых и спорт')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (137, 136, N'Билеты, путевки, туры')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (138, 136, N'Велосипеды и запчасти')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (139, 136, N'Зимние виды спорта')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (140, 136, N'Рыбалка и охота')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (141, 136, N'Спортинвентарь и спортивные товары')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (142, 136, N'Туризм, кемпинг')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (143, 136, N'Экстремальные виды спорта')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (144, 136, N'Коллекционирование, антиквариат')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (145, 136, N'Книги и журналы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (146, 136, N'Музыкальные инструменты')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (147, 136, N'Подарки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (148, 136, N'Поиск попутчиков')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (149, NULL, N'Животные')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (150, 149, N'Кошки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (151, 149, N'Собаки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (152, 149, N'Аквариумистика')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (153, 149, N'Птицы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (154, 149, N'Грызуны')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (155, 149, N'Рептилии')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (156, 149, N'Сельхоз животные')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (157, 149, N'Зоотовары')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (158, 149, N'Пропавшие и найденные животные')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (159, 149, N'Вязка животных')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (160, 3, N'Acura')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (161, 3, N'Alfa Romeo')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (162, 3, N'Aston Martin')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (163, 3, N'Audi')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (164, 3, N'Bentley')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (165, 3, N'BMW')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (166, 3, N'Bugatti')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (167, 3, N'Buick')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (168, 3, N'BYD')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (169, 3, N'Cadillac')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (170, 3, N'Chery')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (171, 3, N'Chevrolet')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (172, 3, N'Chrysler')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (173, 3, N'Citroen')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (174, 3, N'Dacia')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (175, 3, N'Daewoo')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (176, 3, N'Daihatsu')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (177, 3, N'Dodge')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (178, 3, N'Ferrari')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (179, 3, N'Fiat')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (180, 3, N'Ford')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (181, 3, N'Geely')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (182, 3, N'GMC')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (183, 3, N'Great Wall')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (184, 3, N'Honda')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (185, 3, N'Hummer')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (186, 3, N'Hyundai')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (187, 3, N'Infiniti')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (188, 3, N'Jaguar')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (189, 3, N'Jeep')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (190, 3, N'Kia')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (191, 3, N'Lamborghini')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (192, 3, N'Lancia')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (193, 3, N'Land Rover')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (194, 3, N'Lexus')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (195, 3, N'Lifan')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (196, 3, N'Lincoln')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (197, 3, N'Lotus')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (198, 3, N'Maserati')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (199, 3, N'Maybach')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (200, 3, N'Mazda')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (201, 3, N'Mercedes-Benz')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (202, 3, N'MG')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (203, 3, N'MINI')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (204, 3, N'Mitsubishi')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (205, 3, N'Nissan')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (206, 3, N'Opel')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (207, 3, N'Peugeot')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (208, 3, N'Pontiac')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (209, 3, N'Porsche')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (210, 3, N'Renault')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (211, 3, N'Rolls-Royce')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (212, 3, N'Rover')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (213, 3, N'Saab')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (214, 3, N'Samand')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (215, 3, N'Samsung')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (216, 3, N'Seat')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (217, 3, N'Skoda')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (218, 3, N'Smart')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (219, 3, N'SsangYong')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (220, 3, N'Subaru')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (221, 3, N'Suzuki')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (222, 3, N'Tesla')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (223, 3, N'Toyota')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (224, 3, N'Volkswagen')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (225, 3, N'Volvo')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (226, 3, N'Богдан')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (227, 3, N'ВАЗ')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (228, 3, N'ГАЗ')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (229, 3, N'ЗАЗ')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (230, 3, N'Москвич / АЗЛК')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (231, 3, N'РАФ')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (232, 3, N'УАЗ')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (233, 3, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (234, 4, N'Спортбайк')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (235, 4, N'Мотоцикл')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (236, 4, N'Мопед')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (237, 4, N'Квадроцикл')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (238, 4, N'Скутер, мотороллер')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (239, 4, N'Мотовездеход')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (240, 4, N'Картинг')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (241, 4, N'Снегоход')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (242, 4, N'Мотоцикл с коляской')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (243, 4, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (244, 5, N'Автовоз')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (245, 5, N'Бортовой')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (246, 5, N'Вахтовый автобус / Кунг')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (247, 5, N'Грузовик')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (248, 5, N'Для перевозки животных')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (249, 5, N'Контейнеровоз')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (250, 5, N'Легковой фургон (до 1,5 т)')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (251, 5, N'Лесовоз / Сортиментовоз')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (252, 5, N'Мультилифт')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (253, 5, N'Мусоровоз')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (254, 5, N'Платформа')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (255, 5, N'Рефрижератор')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (256, 5, N'Самосвал')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (257, 5, N'Стекловоз')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (258, 5, N'Тентованый')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (259, 5, N'Тягач')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (260, 5, N'Фургон')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (261, 5, N'Цистерна')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (262, 5, N'Шасси')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (263, 5, N'Эвакуатор')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (264, 5, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (265, 6, N'Автобус')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (266, 6, N'Микроавтобус')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (267, 6, N'Пригородный')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (268, 6, N'Городской')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (269, 6, N'Междугородний')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (270, 6, N'Туристический')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (271, 6, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (272, 7, N'Катера')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (273, 7, N'Яхты')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (274, 7, N'Лодки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (275, 7, N'Скутеры, гидроциклы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (276, 7, N'Земснаряд')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (277, 7, N'Оборудование и аксессуары')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (278, 7, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (279, 8, N'Бронеавтомобиль')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (280, 8, N'Бульдозер / Трактор')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (281, 8, N'Вездеход')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (282, 8, N'Коммунальная техника')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (283, 8, N'Погрузчик')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (284, 8, N'Пожарная машина')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (285, 8, N'Самосвал')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (286, 8, N'Строительная техника')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (287, 8, N'Экскаватор')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (288, 8, N'Оборудование')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (289, 8, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (290, 9, N'Бороны')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (291, 9, N'Грабарки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (292, 9, N'Дизельная насосная станция')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (293, 9, N'Жатки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (294, 9, N'Зернометатели')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (295, 9, N'Измельчители')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (296, 9, N'Картофелекопалки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (297, 9, N'Комбайны')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (298, 9, N'Кормораздатчики')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (299, 9, N'Культиваторы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (300, 9, N'Мотоблоки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (301, 9, N'Мототрактора')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (302, 9, N'Навозоразбрасыватели')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (303, 9, N'Опрыскиватели')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (304, 9, N'Пленкоукладчики')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (305, 9, N'Плуги')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (306, 9, N'Погрузчики')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (307, 9, N'Сеялки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (308, 9, N'Трактора')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (309, 9, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (310, 10, N'Автовоз')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (311, 10, N'Бортовые прицепы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (312, 10, N'Лафеты')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (313, 10, N'Легковой прицеп')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (314, 10, N'Платформа')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (315, 10, N'Прицеп-дача')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (316, 10, N'Прицепы для велосипедов')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (317, 10, N'Прицепы для мототехники')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (318, 10, N'Прицепы для перевозки катеров и яхт')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (319, 10, N'Прицепы МЗСА')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (320, 10, N'Прицепы-рефрижераторы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (321, 10, N'Прицепы-самосвалы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (322, 10, N'Прицепы-цистерны')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (323, 10, N'Прицепы-шасси')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (324, 10, N'Тентованные прицепы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (325, 10, N'Комплектующие для прицепов')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (326, 10, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (327, 11, N'Автошины')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (328, 11, N'Грузовые шины')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (329, 11, N'Мотошины')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (330, 11, N'Колесные диски')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (331, 11, N'Колпаки для дисков')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (332, 11, N'Цепи противоскольжения')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (333, 11, N'Аксессуары')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (334, 11, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (335, 12, N'Двигатель')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (336, 12, N'Система зажигания')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (337, 12, N'Кондиционирование')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (338, 12, N'Детали кузова')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (339, 12, N'Подвеска')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (340, 12, N'Ременной привод')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (341, 12, N'Рулевое упр-е')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (342, 12, N'Система сцепления')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (343, 12, N'Топливная система')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (344, 12, N'Тормозная система')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (345, 12, N'Трансмиссия')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (346, 12, N'Детали ходовой')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (347, 12, N'Охлаждение')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (348, 12, N'Прочие запчасти')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (349, 12, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (350, 13, N'GPS навигаторы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (351, 13, N'Автоакустика')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (352, 13, N'Бортовые компьютеры')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (353, 13, N'Видеорегистраторы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (354, 13, N'Парковочные системы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (355, 13, N'Подогрев сидений')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (356, 13, N'Противоугонные системы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (357, 13, N'Радар-детекторы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (358, 13, N'Аксессуары')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (359, 13, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (360, 14, N'Автоинструмент')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (361, 14, N'Автосвет')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (362, 14, N'Аккумуляторы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (363, 14, N'Газобалонное оборудование')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (364, 14, N'Дополнительное оборудование')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (365, 14, N'Очистка стекол')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (366, 14, N'Стекла, зеркала')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (367, 14, N'Электрооборудование')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (368, 14, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (369, 15, N'Автохимия')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (370, 15, N'Автомасла')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (371, 15, N'Автокосметика')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (372, 15, N'Ароматизаторы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (373, 15, N'Смазки и пасты')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (374, 15, N'Жидкости и присадки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (375, 15, N'Омыватели стекла')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (376, 15, N'Автомобильные фильтры')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (377, 15, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (378, 16, N'Тенты, накидки, чехлы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (379, 16, N'Багажники и крепления на крышу')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (380, 16, N'Для автотюнинга')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (381, 16, N'Для салона автомобиля')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (382, 16, N'Для кузова автомобиля')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (383, 16, N'Средства аварийной безопасности')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (384, 16, N'Дополнительное оборудование')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (385, 16, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (386, 18, N'PPC/CPA специалист')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (387, 18, N'QA engineer')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (388, 18, N'SEO-специалист')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (389, 18, N'SMM-специалист')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (390, 18, N'Администратор сайта')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (391, 18, N'Аналитик')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (392, 18, N'Веб программист')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (393, 18, N'Дизайнер')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (394, 18, N'Интернет-маркетолог')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (395, 18, N'Копирайтер')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (396, 18, N'Менеджер')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (397, 18, N'Оператор ПК')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (398, 18, N'Программист')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (399, 18, N'Продажник, промоутер')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (400, 18, N'Разработчик мобильных приложений')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (401, 18, N'Системный администратор')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (402, 18, N'Специалист по ремонту и обслуживанию')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (403, 18, N'Специалист по безопастности')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (404, 18, N'Специалист службы поддержки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (405, 18, N'Специалисты 1С')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (406, 18, N'Тестировщик')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (407, 18, N'Технический специалист')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (408, 18, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (409, 19, N'Аудитор')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (410, 19, N'Банковский работник')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (411, 19, N'Бухгалтер')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (412, 19, N'Кассир')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (413, 19, N'Налоговый работник')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (414, 19, N'Работник биржи')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (415, 19, N'Специалист 1С')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (416, 19, N'Финансовый аналитик')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (417, 19, N'Финансовый руководитель')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (418, 19, N'Экономист')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (419, 19, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (420, 20, N'Администратор')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (421, 20, N'Визажист')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (422, 20, N'Косметолог')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (423, 20, N'Массажист реабилитолог')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (424, 20, N'Мастер манинюра, педикюра')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (425, 20, N'Парикмахер')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (426, 20, N'Работник SPA')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (427, 20, N'Реабилитолог')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (428, 20, N'Реализатор косметики')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (429, 20, N'Стилист')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (430, 20, N'Тату-мастер')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (431, 20, N'Тренер')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (432, 20, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (433, 21, N'Администратор')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (434, 21, N'Актер')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (435, 21, N'Аниматор')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (436, 21, N'Видеоинженер')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (437, 21, N'Менеджер артиста')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (438, 21, N'Менеджер по проектам')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (439, 21, N'Модель')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (440, 21, N'Музыкант, певец, преподаватель музыки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (441, 21, N'Обслуживающий персонал')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (442, 21, N'Организатор, ивент-менеджер, ведущий')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (443, 21, N'Режиссер')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (444, 21, N'Руководитель творчества')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (445, 21, N'Скаут-менеджер')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (446, 21, N'Специалист по звуку')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (447, 21, N'Сценарист, автор')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (448, 21, N'Танцор, хореограф')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (449, 21, N'Фотограф')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (450, 21, N'Художник')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (451, 21, N'Шоумен')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (452, 21, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (453, 22, N'Менеджер по рекламе')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (454, 22, N'Маркетолог')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (455, 22, N'Бренд-менеджер')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (456, 22, N'PPC/PCA. SMM, SEO, youtube')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (457, 22, N'Руководящие должности')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (458, 22, N'Промоутер, менеджер по продажам')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (459, 22, N'Менеджер по развитию')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (460, 22, N'Продюссер, режиссер')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (461, 22, N'Переводчик текстов')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (462, 22, N'Дизайнер, макетчик по рекламе')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (463, 22, N'Медиа маркетолог')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (464, 22, N'Сценарист, редактор, копирайтер, рерайтер')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (465, 22, N'Журналист, репортер, корреспондент')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (466, 22, N'Оператор,  видео-монтажер')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (467, 22, N'Контент-менеджер')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (468, 22, N'Ведущие')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (469, 22, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (470, 23, N'Администратор клиники')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (471, 23, N'Ветеринарный врач')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (472, 23, N'Врач УЗД, рентген')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (473, 23, N'Инструктор ЛФК')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (474, 23, N'Массажист медик')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (475, 23, N'Мед представитель')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (476, 23, N'Медеждер по мед. товарам')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (477, 23, N'Медсестра, сиделка')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (478, 23, N'Провизор, фармацевт')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (479, 23, N'Работник аптеки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (480, 23, N'Работник лаборатории')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (481, 23, N'Семейный врач')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (482, 23, N'Специалист по ветеринарии, кинолог')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (483, 23, N'Техники по протезам и оптике')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (484, 23, N'Уборщица, санитарка')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (485, 23, N'Узкие специалисты')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (486, 23, N'Химик')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (487, 23, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (488, 24, N'Аварийный коммисар')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (489, 24, N'Врач-координатор')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (490, 24, N'Менеджер по продаже (страхование)')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (491, 24, N'Менеджер по недвижимости')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (492, 24, N'Риэлтор')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (493, 24, N'Руководитель')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (494, 24, N'Специалист по страхованию')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (495, 24, N'Страховой агент')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (496, 24, N'Консультант по страхованию')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (497, 24, N'Эксперт-оценщик')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (498, 24, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (499, 25, N'Бизнес тренер, коуч')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (500, 25, N'Воспитатель, няня, гувернантка')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (501, 25, N'Лаборант, помощник преподавателя')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (502, 25, N'Менеджер по продаже услуг в сфере образования')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (503, 25, N'Методист, администратор учебного заведения')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (504, 25, N'Переводчик')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (505, 25, N'Преподаватель искусств')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (506, 25, N'Преподаватель, учитель, репетитор')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (507, 25, N'Психолог, логопед')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (508, 25, N'Работник библиотеки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (509, 25, N'Тренер, инструктор')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (510, 25, N'Ученый, научный работник')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (511, 25, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (512, 26, N'Адвокат, помощник адвоката')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (513, 26, N'Военослужащий, полицейский')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (514, 26, N'Детектив, помощник детектива')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (515, 26, N'Инженер по безопасности и пожаробезопастности, монтажник')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (516, 26, N'Инкассатор')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (517, 26, N'Инспектор службы безопасности')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (518, 26, N'Контролер, ревизор, инспектор')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (519, 26, N'Нотариус, помощник нотариуса')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (520, 26, N'Оператор-диспетчер')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (521, 26, N'Охранник, водитель-охранник')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (522, 26, N'Продакт-менеджер, менеджер продажник охранных услуг')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (523, 26, N'Руководитель депортамента охраны, юр. департамента')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (524, 26, N'Специалист МЧС, пожарной и газо- безопастности')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (525, 26, N'Специалист по IT-безопасности')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (526, 26, N'Специалист софт коллекшн, хард коллекшн')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (527, 26, N'Юрисконсульт, помощник юрисконсульта')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (528, 26, N'Юрист, помощник юриста')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (529, 26, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (530, 27, N'Аппаратчик')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (531, 27, N'Грузчик, водитель погрузчика')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (532, 27, N'Инженер')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (533, 27, N'Конструктор')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (534, 27, N'Метролог, контролер')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (535, 27, N'Монтажник')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (536, 27, N'Работник легкой промышленности')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (537, 27, N'Рабочий')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (538, 27, N'Руководитель')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (539, 27, N'Сборщик')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (540, 27, N'Сварщик, газорезчик')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (541, 27, N'Слесарь')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (542, 27, N'Сотрудник лаборатории')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (543, 27, N'Столяр, плотник')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (544, 27, N'Технолог')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (545, 27, N'Электрик')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (546, 27, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (547, 28, N'HR-manager, специалист отдела кадров')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (548, 28, N'Администратор')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (549, 28, N'Заведующий хозяйством')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (550, 28, N'Оператор контакт-центра, менеджер телефонных продаж')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (551, 28, N'Офис менеджер, оператор ПК, секретарь')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (552, 28, N'Помощник руководителя')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (553, 28, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (554, 29, N'Архитектор, конструктор')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (555, 29, N'Инженер строитель')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (556, 29, N'Машинист, водитель строительной техники')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (557, 29, N'Менеджер по продажам')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (558, 29, N'Монтажник')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (559, 29, N'Начальник, прораб, мастер')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (560, 29, N'Сантехник')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (561, 29, N'Специалист по вентиляциям и кондиционированию')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (562, 29, N'Специалист по внешней отделке')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (563, 29, N'Специалист по внутренней отделке')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (564, 29, N'Специалист по землеустройству')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (565, 29, N'Строитель')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (566, 29, N'Электрик')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (567, 29, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (568, 30, N'Руководство агропредприятия')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (569, 30, N'Менеджеры по сельхозпродукции и технике')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (570, 30, N'Работники агропредприятия')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (571, 30, N'Автотранспортное хозяйство')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (572, 30, N'Агрономия')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (573, 30, N'Животноводство')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (574, 30, N'Рыбное, лесное хозяйство')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (575, 30, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (576, 31, N'Грузчик')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (577, 31, N'Кассир')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (578, 31, N'Менеджер по закупкам')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (579, 31, N'Менеджер по продажам')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (580, 31, N'Менеджер телефонных продаж')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (581, 31, N'Представитель компании, промоутер, курьер')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (582, 31, N'Продавец, консультант')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (583, 31, N'Руководитель продаж')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (584, 31, N'Сортировщик, фасовщик, упаковщик')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (585, 31, N'Специалист по качеству и контролю товаров')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (586, 31, N'Начальник склада, кладовщик, приемщик')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (587, 31, N'Торговый представитель, мерчендайзер, дистрибьютор')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (588, 31, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (589, 32, N'Дизайнеры, оформители')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (590, 32, N'Домашний персонал')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (591, 32, N'Работники банно-прачечных учреждений')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (592, 32, N'Сантехники')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (593, 32, N'Специалисты мебельного производства')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (594, 32, N'Специалисты обувного производства')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (595, 32, N'Специалисты по ремонту бытовой техники')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (596, 32, N'Специалисты по ремонту и обслуживанию')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (597, 32, N'Специалисты узкого профиля')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (598, 32, N'Специалисты швейного производства')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (599, 32, N'Уход за детьми')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (600, 32, N'Уход за престарелыми')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (601, 32, N'Хозяйственные работники')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (602, 32, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (603, 33, N'Автомойщик')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (604, 33, N'Автослесарь, механик, авторэлектрик, ходовик')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (605, 33, N'Водитель, таксист')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (606, 33, N'Дальнобойщик')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (607, 33, N'Диспетчер, оператор')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (608, 33, N'Инструктор по вождению')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (609, 33, N'Кладовщик, работник склада')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (610, 33, N'Курьер')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (611, 33, N'Машинист, водитель спецтехники')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (612, 33, N'Менеджер, снабженец')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (613, 33, N'Моряк')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (614, 33, N'Проводник, стюардесса')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (615, 33, N'Руководитель')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (616, 33, N'Служащий таможни')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (617, 33, N'Шиномонтажник')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (618, 33, N'Экспедитор, логист')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (619, 33, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (620, 34, N'Администратор')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (621, 34, N'Гид, экскурсовод')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (622, 34, N'Менеджер заведений отдыха')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (623, 34, N'Менеджер по тур. услугам')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (624, 34, N'Хостесс, ресепшионист, швейцар')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (625, 34, N'Обслуживающий персонал')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (626, 34, N'Бармен, бариста, сомелье')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (627, 34, N'Повар, кондитер, сушист, пиццайоло')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (628, 34, N'Грильщик, мангальщик')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (629, 34, N'Официанты, буфетчики, метрдотели')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (630, 34, N'Кухонные работники')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (631, 34, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (632, 36, N'Долгосрочная аренда')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (633, 36, N'Посуточная аренда')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (634, 36, N'Без посредников')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (635, 37, N'Долгосрочная аренда')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (636, 37, N'Посуточная аренда')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (637, 37, N'В общежитии')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (638, 37, N'Койкоместо')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (639, 37, N'С хозяйкой')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (640, 38, N'Долгосрочная аренда')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (641, 38, N'Посуточная аренда')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (642, 38, N'Без посредников')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (643, 39, N'Под индивидуальное строительство')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (644, 39, N'Под сад / огород')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (645, 39, N'Сельско-хозяйственного назначения')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (646, 39, N'Промышленного назначения')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (647, 40, N'Долгосрочная аренда')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (648, 40, N'Посуточная аренда')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (649, 40, N'Без посредников')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (650, 41, N'Новый дом')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (651, 41, N'Вторичка')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (652, 42, N'В общежитии')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (653, 42, N'В квартире')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (654, 42, N'В доме')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (655, 43, N'Дача')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (656, 43, N'Дом')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (657, 43, N'Коттедж')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (658, 44, N'Под индивидуальное строительство')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (659, 44, N'Под сад / огород')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (660, 44, N'Сельско-хозяйственного назначения')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (661, 44, N'Промышленного назначения')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (662, 45, N'Бокс в гаражном комплексе')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (663, 45, N'Место на стоянке')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (664, 45, N'Место в гаражном кооперативе')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (665, 45, N'Подземный паркинг')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (666, 45, N'Отдельно стоящий гараж')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (667, 45, N'Крытое место для стоянки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (668, 46, N'Долгосрочная аренда')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (669, 46, N'Посуточная аренда')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (670, 46, N'Без посредников')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (671, 47, N'База отдыха, пансионат')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (672, 47, N'Кафе, бар, ресторан')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (673, 47, N'Объекты сферы услуг')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (674, 47, N'Отдельно стоящие здания')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (675, 47, N'Отель, гостиница')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (676, 47, N'Офисные помещения')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (677, 47, N'Помещения свободного назначения')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (678, 47, N'Производственные помещения')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (679, 47, N'Складские помещения')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (680, 47, N'Торговые площади')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (681, 47, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (682, 35, N'Обмен недвижимости')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (683, 35, N'Ищу компаньона')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (684, 49, N'Настольные компьютеры')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (685, 49, N'Ноутбуки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (686, 49, N'Планшеты')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (687, 49, N'Электронные книги')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (688, 49, N'Мониторы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (689, 49, N'Серверы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (690, 49, N'Комплектующие')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (691, 49, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (692, 50, N'Мобильные телефоны')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (693, 50, N'Смартфоны')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (694, 50, N'Bluetooth гарнитура')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (695, 50, N'Стационарные телефоны')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (696, 50, N'Умные часы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (697, 50, N'Фитнес браслеты')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (698, 50, N'Аксессуары')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (699, 50, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (700, 51, N'Приставки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (701, 51, N'Игры')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (702, 51, N'Игровые манипуляторы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (703, 51, N'Аксессуары')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (704, 51, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (705, 52, N'Фотоаппараты')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (706, 52, N'Объективы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (707, 52, N'Фотовспышки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (708, 52, N'Видоискатель')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (709, 52, N'Светофильтры')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (710, 52, N'Штативы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (711, 52, N'Средства по уходу')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (712, 52, N'Студийное оборудование')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (713, 52, N'Сумки и чехлы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (714, 52, N'Аксессуары, комплектующие')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (715, 52, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (716, 53, N'CD, MP3 плееры')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (717, 53, N'Акустические системы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (718, 53, N'Аудиокабели')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (719, 53, N'Диктофоны, рекордеры')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (720, 53, N'Микрофоны')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (721, 53, N'Музыкальные центры')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (722, 53, N'Наушники')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (723, 53, N'Проигрыватель виниловых дисков')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (724, 53, N'Радиоприемники')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (725, 53, N'Усилители, ресиверы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (726, 53, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (727, 54, N'Телевизоры')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (728, 54, N'Видеокамеры')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (729, 54, N'Экшн-камеры')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (730, 54, N'HD/DVD Медиаплееры')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (731, 54, N'Проекторы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (732, 54, N'Проекционные экраны')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (733, 54, N'Спутниковое оборудование')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (734, 54, N'Видеокабели')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (735, 54, N'Аксессуары')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (736, 54, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (737, 55, N'Принтеры, МФУ')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (738, 55, N'Сканеры')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (739, 55, N'Копиры')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (740, 55, N'Факсы, мини-АТС')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (741, 55, N'Калькуляторы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (742, 55, N'Ламинаторы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (743, 55, N'Биндеры (брошюровщики)')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (744, 55, N'Шредеры')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (745, 55, N'Расходные материалы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (746, 55, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (747, 56, N'Сетевые хранилища (NAS)')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (748, 56, N'Беспроводные точки доступа')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (749, 56, N'Коммутаторы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (750, 56, N'Сетевые адаптеры')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (751, 56, N'Маршрутизаторы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (752, 56, N'Антенны и кабели')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (753, 56, N'IP-камеры')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (754, 56, N'IP телефония')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (755, 56, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (756, 57, N'Антивирусы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (757, 57, N'Операционные системы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (758, 57, N'Серверное ПО')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (759, 57, N'САПР')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (760, 57, N'СУБД')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (761, 57, N'Бухгалтерия')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (762, 57, N'Переводчики и словари')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (763, 57, N'Офисные приложения')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (764, 57, N'Системные утилиты')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (765, 57, N'Мультимедиа')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (766, 57, N'ПО для КПК')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (767, 57, N'Распознавание текста')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (768, 57, N'Навигационное ПО')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (769, 57, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (770, 58, N'Сим-карты')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (771, 58, N'Карты памяти')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (772, 58, N'Usb Flash')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (773, 58, N'Жесткие диски')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (774, 58, N'DVD, BD и CD диски')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (775, 58, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (776, 59, N'Акустические системы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (777, 59, N'Клавиатуры')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (778, 59, N'Мыши')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (779, 59, N'Веб камеры')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (780, 59, N'ИБП')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (781, 59, N'Кабели и переходники')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (782, 59, N'Сетевые фильтры и удлинители')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (783, 59, N'Стабилизаторы напряжения')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (784, 59, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (785, 60, N'Аккумуляторы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (786, 60, N'Блоки питания')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (787, 60, N'Сумки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (788, 60, N'Подставки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (789, 60, N'Чистящие средства')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (790, 60, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (791, 61, N'Защитные пленки и стекла')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (792, 61, N'Кабели и зарядки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (793, 61, N'Модули памяти')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (794, 61, N'Чехлы и клавиатуры')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (795, 61, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (796, 63, N'Холодильники')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (797, 63, N'Морозильные камеры')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (798, 63, N'Плиты')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (799, 63, N'Духовые шкафы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (800, 63, N'Варочные поверхности')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (801, 63, N'Вытяжки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (802, 63, N'Посудомоечные машины')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (803, 63, N'Стиральные машины')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (804, 63, N'Сушильные автоматы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (805, 63, N'Аксессуары')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (806, 63, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (807, 64, N'Аэрогрили')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (808, 64, N'Блендеры')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (809, 64, N'Для выпечки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (810, 64, N'Весы кухонные')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (811, 64, N'Коптильни')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (812, 64, N'Кофеварки и кофемашины')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (813, 64, N'Кофемолки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (814, 64, N'Кухонные комбайны')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (815, 64, N'Ломтерезки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (816, 64, N'Микроволновые печи')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (817, 64, N'Миксеры')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (818, 64, N'Мультиварки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (819, 64, N'Мясорубки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (820, 64, N'Пароварки и скороварки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (821, 64, N'Соковыжималки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (822, 64, N'Сушилки для овощей и фруктов')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (823, 64, N'Тостеры')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (824, 64, N'Фритюрницы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (825, 64, N'Хлебопечи')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (826, 64, N'Электропечи, электродуховки настольные')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (827, 64, N'Электрочайники')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (828, 64, N'Электрошашлычницы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (829, 64, N'Прочая мелкая техника')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (830, 64, N'Аксессуары')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (831, 64, N'Измельчители пищевых отходов')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (832, 64, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (833, 65, N'Кондиционеры')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (834, 65, N'Микроклимат')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (835, 65, N'Обогрев воздуха')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (836, 65, N'Охлаждение')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (837, 65, N'Подогрев воды')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (838, 65, N'Аксессуары')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (839, 65, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (840, 66, N'Машинки для стрижки катышков')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (841, 66, N'Мойки и подметальные машины')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (842, 66, N'Пароочистители')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (843, 66, N'Приспособления для ручной уборки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (844, 66, N'Пылесосы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (845, 66, N'Утюги и гладильные системы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (846, 66, N'Швейная техника')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (847, 66, N'Техника для бытовых нужд')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (848, 66, N'Аксессуары')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (849, 66, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (850, 67, N'Для укладки волос')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (851, 67, N'Косметические приборы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (852, 67, N'Машинка для стрижки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (853, 67, N'Фены для волос')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (854, 67, N'Электробритва')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (855, 67, N'Эпиляторы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (856, 67, N'Весы напольные')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (857, 67, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (858, 69, N'Кирпич')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (859, 69, N'Стеновые блоки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (860, 69, N'Лес, брус, доска')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (861, 69, N'Листовые материалы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (862, 69, N'Гидроизоляция')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (863, 69, N'Звукоизоляционные материалы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (864, 69, N'Огнезащитные материалы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (865, 69, N'Теплоизоляция')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (866, 69, N'Искусственный камень')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (867, 69, N'Природный камень')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (868, 69, N'Сыпучие материалы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (869, 69, N'Дорожные материалы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (870, 69, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (871, 70, N'Черепица')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (872, 70, N'Профнастил')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (873, 70, N'Фальцевая кровля')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (874, 70, N'Сланцевая кровля')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (875, 70, N'Камышовые материалы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (876, 70, N'Панели кровельные')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (877, 70, N'Шифер, ондулин')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (878, 70, N'Поликарбонаты')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (879, 70, N'Комплектующие для кровли')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (880, 70, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (881, 71, N'Краски, лаки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (882, 71, N'Напольные покрытия')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (883, 71, N'Настенные покрытия и материалы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (884, 71, N'Плитка, мозаика')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (885, 71, N'Потолки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (886, 71, N'Стекло и крепление к нему')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (887, 71, N'Строительные смеси')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (888, 71, N'Фасадная облицовка')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (889, 71, N'Доп. материалы и комплектующие')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (890, 71, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (891, 72, N'Металлоизделия')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (892, 72, N'Плоский прокат')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (893, 72, N'Сортовой и фасонный прокат')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (894, 72, N'Трубы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (895, 72, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (896, 73, N'Анкера')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (897, 73, N'Гвозди')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (898, 73, N'Дюбели')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (899, 73, N'Заклепки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (900, 73, N'Кронштейны')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (901, 73, N'Метрический крепеж')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (902, 73, N'Монтажные патроны')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (903, 73, N'Перфорированный крепеж')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (904, 73, N'Скобы для степлеров')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (905, 73, N'Такелаж')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (906, 73, N'Хомуты, зажимы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (907, 73, N'Шплинты')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (908, 73, N'Штифты крепежные')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (909, 73, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (910, 74, N'Бани')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (911, 74, N'Бассейны')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (912, 74, N'Ворота, ограждения')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (913, 74, N'Дома, деревянные конструкции')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (914, 74, N'Козырьки и навесы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (915, 74, N'Лестницы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (916, 74, N'Металлоконструкции')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (917, 74, N'Окна, двери')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (918, 74, N'Системы водоотвода')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (919, 74, N'Художественная ковка')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (920, 74, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (921, 75, N'Вентиляторы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (922, 75, N'Вентиляционное оборудование')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (923, 75, N'Воздухораспределители')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (924, 75, N'Калориферы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (925, 75, N'Оборудование для дымоудаления')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (926, 75, N'Приточно-вытяжные установки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (927, 75, N'Проветриватели')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (928, 75, N'Комплектующие')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (929, 75, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (930, 76, N'Водяные конвекторы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (931, 76, N'Коллекторы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (932, 76, N'Котлы отопления')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (933, 76, N'Локальные теплонакопители')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (934, 76, N'Нагревательные кабели')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (935, 76, N'Печи, топки, камины')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (936, 76, N'Расширительные баки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (937, 76, N'Системы антиобледенения')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (938, 76, N'Теплый пол')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (939, 76, N'Тепловые насосы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (940, 76, N'Комплектующие для отопления')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (941, 76, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (942, 77, N'Ванны')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (943, 77, N'Душевые кабины и панели')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (944, 77, N'Краны, смесители')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (945, 77, N'Кухонные мойки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (946, 77, N'Умывальники')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (947, 77, N'Унитазы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (948, 77, N'Полотенцесушители')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (949, 77, N'Дополнительное оборудование')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (950, 77, N'Комплектующие')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (951, 77, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (952, 78, N'Освещение жилых помещений')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (953, 78, N'Офисно-торговое освещение')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (954, 78, N'Праздничное освещение')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (955, 78, N'Промышленное освещение')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (956, 78, N'Уличное освещение')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (957, 78, N'Солнечные батареи, фотомодули')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (958, 78, N'Комплектующие для освещения')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (959, 78, N'Принадлежности, аксессуары')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (960, 78, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (961, 79, N'Ручной инструмент')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (962, 79, N'Электроинструмент')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (963, 79, N'Бензоинструмент')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (964, 79, N'Гидравлический инструмент')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (965, 79, N'Пневматический инструмент')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (966, 79, N'Измерительный инструмент')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (967, 79, N'Малярно-штукатурный инструмент')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (968, 79, N'Масла, смазки для инструмента')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (969, 79, N'Наборы инструментов')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (970, 79, N'Расходный материал и принадлежности')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (971, 79, N'Аксессуары')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (972, 79, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (973, 68, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (974, 81, N'Масло')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (975, 81, N'Молочная продукция')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (976, 81, N'Мясо')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (977, 81, N'Напитки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (978, 81, N'Овощи, орехи, фрукты, ягоды')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (979, 81, N'Продукты пчеловодства')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (980, 81, N'Рыба, морепродукты')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (981, 81, N'Сладости')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (982, 81, N'Специи и приправы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (983, 81, N'Сыпучие (крупы, мука и пр.)')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (984, 81, N'Яйца')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (985, 81, N'Сырье и материалы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (986, 81, N'Товары пищевого назначения')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (987, 81, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (988, 82, N'Бескаркасная, плетеная мебель')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (989, 82, N'Вешалки, ширмы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (990, 82, N'Диваны')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (991, 82, N'Кресла')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (992, 82, N'Кровати')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (993, 82, N'Кухни')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (994, 82, N'Кухонные уголки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (995, 82, N'Полки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (996, 82, N'Пуфики')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (997, 82, N'Спальни')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (998, 82, N'Стенки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (999, 82, N'Столы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1000, 82, N'Стулья')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1001, 82, N'Табуреты')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1002, 82, N'Тумбы, комоды')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1003, 82, N'Шкафы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1004, 82, N'Фурнитура, аксессуары')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1005, 82, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1006, 83, N'Занавески')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1007, 83, N'Коврики')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1008, 83, N'Кухонный текстиль')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1009, 83, N'Матрасы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1010, 83, N'Наматрасники')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1011, 83, N'Одеяла')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1012, 83, N'Пледы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1013, 83, N'Подматрасники')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1014, 83, N'Подушки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1015, 83, N'Покрывала')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1016, 83, N'Полотенца')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1017, 83, N'Постельное белье')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1018, 83, N'Текстиль для сауны и душа')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1019, 83, N'Халаты и одежда для дома')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1020, 83, N'Шторы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1021, 83, N'Ткани, пряжа и др. материалы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1022, 83, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1023, 84, N'Детские наборы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1024, 84, N'Наборы посуды')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1025, 84, N'Тарелки, салатницы, блюда')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1026, 84, N'Сервизы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1027, 84, N'Столовые приборы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1028, 84, N'Ножи и принадлежности')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1029, 84, N'Миски и ковши')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1030, 84, N'Чайники, турки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1031, 84, N'Кастрюли')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1032, 84, N'Сковороды, сотейники')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1033, 84, N'Пароварки и скороварки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1034, 84, N'Гусятницы и казаны')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1035, 84, N'Мармиты, фондюшницы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1036, 84, N'Чашки, стаканы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1037, 84, N'Бокалы, фужеры, рюмки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1038, 84, N'Кувшины, графины')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1039, 84, N'Вазы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1040, 84, N'Для духовок и микроволновок')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1041, 84, N'Посуда для виноделия')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1042, 84, N'Посуда для хранения')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1043, 84, N'Термосы и фляги')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1044, 84, N'Формы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1045, 84, N'Кухонные аксессуары и принадлежности')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1046, 84, N'Кухонный инвентарь')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1047, 84, N'Упаковка и тара')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1048, 84, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1049, 85, N'Алое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1050, 85, N'Фиалки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1051, 85, N'Бегония')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1052, 85, N'Фикус')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1053, 85, N'Герань')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1054, 85, N'Кактусы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1055, 85, N'Орхидея')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1056, 85, N'Гибискус')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1057, 85, N'Традесканция')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1058, 85, N'Другое (растения)')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1059, 86, N'Садовые растения')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1060, 86, N'Семена')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1061, 86, N'Удобрения')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1062, 86, N'Ядо-химикаты')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1063, 86, N'Грунты')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1064, 86, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1065, 87, N'Все для полива')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1066, 87, N'Ландшафтные строения')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1067, 87, N'Садовая мебель')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1068, 87, N'Садовая техника')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1069, 87, N'Садовое оборудование')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1070, 87, N'Садовые светильники')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1071, 87, N'Садовый инвентарь')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1072, 87, N'Уличное освещение')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1073, 87, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1074, 88, N'Вешалки, плечики для одежды')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1075, 88, N'Декоративная посуда')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1076, 88, N'Зеркала')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1077, 88, N'Интерьерные наклейки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1078, 88, N'Картины и рамочки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1079, 88, N'Ковры')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1080, 88, N'Москитная сетка')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1081, 88, N'Настольные, настенные и напольные часы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1082, 88, N'Новогодние товары')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1083, 88, N'Покрывала из меха, шкуры, чучела')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1084, 88, N'Свечи, подсвечники')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1085, 88, N'Статуэтки, фигурки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1086, 88, N'Чехлы для одежды')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1087, 88, N'Шторы, карнизы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1088, 88, N'Другое (интерьер)')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1089, 89, N'Защитные средства')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1090, 89, N'Моющие средства')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1091, 89, N'Освежители воздуха')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1092, 89, N'Средства для бытовой техники')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1093, 89, N'Средства для стирки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1094, 89, N'Чистящие средства')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1095, 89, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1096, 91, N'Балетки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1097, 91, N'Босоножки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1098, 91, N'Ботильоны')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1099, 91, N'Ботинки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1100, 91, N'Вьетнамки, сланцы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1101, 91, N'Домашние тапочки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1102, 91, N'Кеды')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1103, 91, N'Кроксы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1104, 91, N'Кроссовки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1105, 91, N'Мокасины')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1106, 91, N'Мыльницы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1107, 91, N'Мюли')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1108, 91, N'Ортопедическая обувь')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1109, 91, N'Полуботинки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1110, 91, N'Полусапоги')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1111, 91, N'Резиновые сапоги')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1112, 91, N'Сабо/Клоги')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1113, 91, N'Сандалеты')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1114, 91, N'Сандалии')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1115, 91, N'Сапоги')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1116, 91, N'Слипоны')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1117, 91, N'Таби')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1118, 91, N'Топ-сайдеры')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1119, 91, N'Туфли')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1120, 91, N'Угги')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1121, 91, N'Шлепанцы и акваобувь')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1122, 91, N'Эспадрильи')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1123, 91, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1124, 92, N'Балетки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1125, 92, N'Ботинки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1126, 92, N'Бутсы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1127, 92, N'Вьетнамки, сланцы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1128, 92, N'Кеды')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1129, 92, N'Кроссовки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1130, 92, N'Мокасины и эспадрильи')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1131, 92, N'Ортопедическая обувь')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1132, 92, N'Резиновые сапоги')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1133, 92, N'Сабо')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1134, 92, N'Сандалии')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1135, 92, N'Сапоги')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1136, 92, N'Слипоны')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1137, 92, N'Тапочки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1138, 92, N'Топсайдеры')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1139, 92, N'Туфли')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1140, 92, N'Угги')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1141, 92, N'Шлепанцы и сланцы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1142, 92, N'Другая')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1143, 93, N'Верхняя одежда')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1144, 93, N'Костюмы, пиджаки, жакеты')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1145, 93, N'Джинсы, брюки, комбинезоны')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1146, 93, N'Юбки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1147, 93, N'Платья и сарафаны')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1148, 93, N'Блузы и рубашки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1149, 93, N'Джемперы и кардиганы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1150, 93, N'Спортивная  одежда')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1151, 93, N'Слингоодежда  для беременных')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1152, 93, N'Жилеты и безрукавки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1153, 93, N'Для сна и дома')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1154, 93, N'Нижнее белье, купальники')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1155, 93, N'Носки, чулки и колготки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1156, 93, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1157, 94, N'Брюки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1158, 94, N'Верхняя одежда')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1159, 94, N'Джемперы и кардиганы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1160, 94, N'Жилеты и безрукавки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1161, 94, N'Костюмы и смокинги')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1162, 94, N'Пиджаки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1163, 94, N'Рубашки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1164, 94, N'Для сна и дома')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1165, 94, N'Нижнее белье и плавки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1166, 94, N'Носки и гетры')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1167, 94, N'Спортивная одежда')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1168, 94, N'Футболки и майки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1169, 94, N'Шорты')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1170, 94, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1171, 95, N'Наряды для невесты')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1172, 95, N'Свадебные головные уборы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1173, 95, N'Наряды для жениха')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1174, 95, N'Обручальные кольца')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1175, 95, N'Обувь для жениха')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1176, 95, N'Обувь для невесты')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1177, 95, N'Аксессуары')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1178, 95, N'Свадебные декорации')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1179, 95, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1180, 96, N'Академическая и судейская одежда')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1181, 96, N'Водонепроницаемая одежда')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1182, 96, N'Военное обмундирование')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1183, 96, N'Защитная спецодежда')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1184, 96, N'Маскировочная одежда')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1185, 96, N'Медицинская одежда')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1186, 96, N'Одежда для пчеловодства')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1187, 96, N'Одежда рабочая')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1188, 96, N'Одежда сферы услуг')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1189, 96, N'Сигнальная одежда')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1190, 96, N'Белье нательное')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1191, 96, N'Специальная обувь')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1192, 96, N'Средства индивидуальной защиты')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1193, 96, N'Одноразовая одежда и обувь')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1194, 96, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1195, 97, N'Галстуки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1196, 97, N'Головные уборы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1197, 97, N'Зонты')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1198, 97, N'Косметички')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1199, 97, N'Очки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1200, 97, N'Перчатки и варежки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1201, 97, N'Портмоне и кошельки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1202, 97, N'Ремни и пряжки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1203, 97, N'Рюкзаки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1204, 97, N'Сумки и чехлы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1205, 97, N'Бизнес-аксессуары и подарки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1206, 97, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1207, 98, N'Мужские')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1208, 98, N'Женские')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1209, 98, N'Детские')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1210, 99, N'Браслеты')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1211, 99, N'Броши')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1212, 99, N'Запонки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1213, 99, N'Колье и ожерелья')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1214, 99, N'Кольца')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1215, 99, N'Пирсинг')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1216, 99, N'Подвески')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1217, 99, N'Серьги')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1218, 99, N'Для волос')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1219, 99, N'Шармы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1220, 99, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1221, 101, N'Одежда для мальчиков')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1222, 101, N'Одежда для девочек')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1223, 101, N'Одежда для малышей')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1224, 101, N'Детское термобелье')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1225, 101, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1226, 102, N'Обувь для девочек')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1227, 102, N'Обувь для мальчиков')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1228, 102, N'Обувь для малышей')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1229, 102, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1230, 103, N'Люлька (для новорожденных)')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1231, 103, N'Классические')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1232, 103, N'Прогулочные')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1233, 103, N'Коляски-трости')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1234, 103, N'Универсальные 2 в 1')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1235, 103, N'Универсальные 3 в 1')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1236, 103, N'Коляски для двойни')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1237, 103, N'Сумки-кенгуру')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1238, 103, N'Аксессуары для колясок')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1239, 103, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1240, 104, N'0+  (0-13 кг)')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1241, 104, N'0+/1  (0-18 кг)')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1242, 104, N'1  (9-18 кг)')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1243, 104, N'1 - 2  (9-25 кг)')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1244, 104, N'1 - 2 - 3  (9-36 кг)')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1245, 104, N'2 - 3  (15-36 кг)')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1246, 104, N'3  (22-36 кг)')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1247, 104, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1248, 105, N'Детские велосипеды')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1249, 105, N'Детские роликовые коньки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1250, 105, N'Детские самокаты')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1251, 105, N'Детские скейты')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1252, 105, N'Детские электромобили')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1253, 105, N'Чудомобили, ходунки, качалки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1254, 105, N'Аксессуары')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1255, 105, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1256, 106, N'Детские качалки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1257, 106, N'Детские кровати')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1258, 106, N'Детские стулья')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1259, 106, N'Детские шкафы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1260, 106, N'Комоды и пеленаторы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1261, 106, N'Манеж')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1262, 106, N'Парты и мольберты')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1263, 106, N'Стульчики для кормления')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1264, 106, N'Аксессуары')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1265, 106, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1266, 107, N'Детские железные дороги, автотреки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1267, 107, N'Детские конструкторы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1268, 107, N'Для самых маленьких')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1269, 107, N'Игрушечное оружие')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1270, 107, N'Интерактивные игрушки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1271, 107, N'Коляски для кукол и игрушки-каталки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1272, 107, N'Машинки и радиоуправляемые модели')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1273, 107, N'Мягкие игрушки, фигурки, куклы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1274, 107, N'Развивающие игры')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1275, 107, N'Сборные модели и трансформер')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1276, 107, N'Тематические игровые наборы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1277, 107, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1278, 108, N'Книги и контурные карты')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1279, 108, N'Товары для детского творчества')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1280, 108, N'Рюкзаки, портфели, сумки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1281, 108, N'Школьные наборы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1282, 108, N'Школьные принадлежности')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1283, 108, N'Оптика, приборы для исследований')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1284, 108, N'Аксессуары')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1285, 108, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1286, 109, N'Детские смеси')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1287, 109, N'Детское пюре')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1288, 109, N'Детские каши')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1289, 109, N'Детские макароны')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1290, 109, N'Детские соки и напитки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1291, 109, N'Детское печенье')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1292, 109, N'Йогурт')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1293, 109, N'Посуда для кормления')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1294, 109, N'Аксессуары')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1295, 109, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1296, 110, N'Детский крем, молочко, масло')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1297, 110, N'Детские шампуни')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1298, 110, N'Детская зубная паста')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1299, 110, N'Детское мыло')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1300, 110, N'Гели и пенки для купания')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1301, 110, N'Присыпка детская')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1302, 110, N'Солнцезащитная косметика')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1303, 110, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1304, 100, N'Другие детские товары')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1305, 112, N'Аренда бытовой техники')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1306, 112, N'Аренда специального оборудования')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1307, 112, N'Доставка товаров')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1308, 112, N'Дом,сад - клининговые услуги')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1309, 112, N'Изготовление и ремонт')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1310, 112, N'Отопительные системы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1311, 112, N'Пошив и ремонт изделий')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1312, 112, N'Ремонт бытовой техники')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1313, 112, N'Ритуальные услуги')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1314, 112, N'Услуги брачных агентств')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1315, 112, N'Ювелирные услуги')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1316, 112, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1317, 113, N'SPA процедуры')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1318, 113, N'Боди-арт, тату')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1319, 113, N'Восстановление и реабилитация')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1320, 113, N'Косметологические услуги')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1321, 113, N'Макияж, Визаж')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1322, 113, N'Маникюр, педикюр')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1323, 113, N'Массаж')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1324, 113, N'Медицинские услуги')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1325, 113, N'Парикмахерские услуги')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1326, 113, N'Стоматологические услуги')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1327, 113, N'Услуги диетолога')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1328, 113, N'Услуги психолога')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1329, 113, N'Услуги спортивных учреждений')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1330, 113, N'Услуги стилиста-имиджмейкера')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1331, 113, N'Эпиляция, депиляция')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1332, 113, N'Техобслуживание')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1333, 113, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1334, 114, N'Няня для ребенка')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1335, 114, N'Няня на каникулы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1336, 114, N'Присмотр за стариками')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1337, 114, N'Уход за лежачими больными')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1338, 114, N'Уход за послеоперационными больными')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1339, 114, N'Домработница')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1340, 114, N'Садовник')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1341, 114, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1342, 115, N'Аварийные и экстренные службы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1343, 115, N'Информационная безопасность')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1344, 115, N'Обеспечение безопасности')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1345, 115, N'Системы безопасности')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1346, 115, N'Системы контроля доступа')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1347, 115, N'Системы пожарной безопасности')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1348, 115, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1349, 116, N'Набор текстов')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1350, 116, N'Для консульств и посольств')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1351, 116, N'Медицинский перевод')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1352, 116, N'Нотариальный перевод')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1353, 116, N'Перевод, легализация и апостиль')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1354, 116, N'Перевод научной литературы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1355, 116, N'Перевод художественных текстов')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1356, 116, N'Рефераты, дипломы, курсовые')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1357, 116, N'Технический перевод')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1358, 116, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1359, 117, N'Аренда автомобилей')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1360, 117, N'Автовыкуп')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1361, 117, N'Автозаправка')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1362, 117, N'Автоперевозки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1363, 117, N'Дорожная и карьерная спецтехника')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1364, 117, N'Сельхозтехника, спецтехника')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1365, 117, N'Ремонт автотранспорта')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1366, 117, N'Ремонт мото-вело транспорта')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1367, 117, N'Мойка, чистка автомобилей')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1368, 117, N'Техосмотр')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1369, 117, N'Шиномонтаж')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1370, 117, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1371, 118, N'Детские праздники')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1372, 118, N'Кино- и видеосъемка')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1373, 118, N'Фотосъемка')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1374, 118, N'Сценарии для праздников')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1375, 118, N'Организация свадеб и банкетов')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1376, 118, N'Организация шоу')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1377, 118, N'Полезные услуги')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1378, 118, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1379, 119, N'Гидроабразивная резка')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1380, 119, N'Гравировальные работы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1381, 119, N'Защита окружающей среды')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1382, 119, N'Лесозаготовка и деревообработка')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1383, 119, N'Металлообработка')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1384, 119, N'Обработка пластмасс')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1385, 119, N'Обработка стекла')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1386, 119, N'Пескоструйная обработка поверхностей')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1387, 119, N'Покраска и нанесение покрытий')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1388, 119, N'Проектно-конструкторские и технологические работы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1389, 119, N'Разработка и изготовление электроники')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1390, 119, N'Ремонт офисной техники')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1391, 119, N'Ремонт промышленного оборудования')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1392, 119, N'Услуги лабораторий')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1393, 119, N'Емкости, поддоны, контейнеры, тара')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1394, 119, N'Оборудование')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1395, 119, N'Сырье и промышленные материалы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1396, 119, N'Вторсырье, макулатура, металлолом')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1397, 119, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1398, 120, N'PR услуги, промореклама')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1399, 120, N'Нанесение изображений')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1400, 120, N'Дизайн')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1401, 120, N'Консалтинг в сфере IT')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1402, 120, N'Полиграфия')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1403, 120, N'Реклама и продвижение сайтов')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1404, 120, N'Типографские, издательские услуги')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1405, 120, N'Фриланс')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1406, 120, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1407, 121, N'Буровые работы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1408, 121, N'Гидротехнические услуги')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1409, 121, N'Дизайн интерьеров и экстерьеров')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1410, 121, N'Ландшафтный дизайн, благоустройство')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1411, 121, N'Инвестиционные проекты в строительстве')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1412, 121, N'Инженерно-экологические изыскания')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1413, 121, N'Проектно-строительные услуги')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1414, 121, N'Ремонт квартир, домов и помещений')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1415, 121, N'Строительные услуги')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1416, 121, N'Строительство дорог, мостов и тоннелей')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1417, 121, N'Структурные кабельные сети (скс)')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1418, 121, N'Тепло-, звуко-, гидроизоляция')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1419, 121, N'Аренда техники и оборудования')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1420, 121, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1421, 122, N'Курсы и кружки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1422, 122, N'Семинары')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1423, 122, N'Тренинги')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1424, 122, N'Услуги образовательных учреждений')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1425, 122, N'Услуги репетитора, коуча')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1426, 122, N'Учебно-информационные услуги')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1427, 122, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1428, 123, N'Аренда')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1429, 123, N'Консультирование')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1430, 123, N'Сопровождение')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1431, 123, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1432, 124, N'Ветеринары')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1433, 124, N'Выгул животных')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1434, 124, N'Вязка животных')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1435, 124, N'Гостиницы для животных')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1436, 124, N'Дрессировка и воспитание животных')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1437, 124, N'Зоопсихолог-коррекция поведения')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1438, 124, N'Изготовление оборудования')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1439, 124, N'Подготовка и показ на выставках')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1440, 124, N'Помощь в уходе за собакой')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1441, 124, N'Стрижка животных')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1442, 124, N'Такси для животных')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1443, 124, N'Чистка аквариумов')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1444, 124, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1445, 124, N'Изготовление и обслуживание аквариумов')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1446, 125, N'Абонентское бухгалтерское обслуживание')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1447, 125, N'Аудиторские услуги')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1448, 125, N'Аутсорсинг в финансовой сфере')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1449, 125, N'Банковские услуги')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1450, 125, N'Бухгалтерские услуги')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1451, 125, N'Бизнес и финансовые услуги')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1452, 125, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1453, 126, N'Авторское право')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1454, 126, N'Адвокатские услуги')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1455, 126, N'Детективные услуги')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1456, 126, N'Лицензирование, допуски и сертификация')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1457, 126, N'Нотариальные услуги')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1458, 126, N'Правовой и юридический аутсорсинг')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1459, 126, N'Правовые и юридические услуги')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1460, 126, N'Таможенное оформление')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1461, 126, N'Услуги в сфере миграции')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1462, 126, N'Юридические услуги по земельным вопросам')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1463, 126, N'Юридический консалтинг')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1464, 126, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1465, 111, N'Другие услуги')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1466, 128, N'Женская')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1467, 128, N'Мужская')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1468, 128, N'Унисекс')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1469, 128, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1470, 129, N'Для глаз')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1471, 129, N'Для бровей')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1472, 129, N'Для губ')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1473, 129, N'Для лица')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1474, 129, N'Для ногтей')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1475, 129, N'Для тела')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1476, 129, N'Аксессуары')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1477, 129, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1478, 130, N'Антивозрастные средства')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1479, 130, N'Косметическая глина')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1480, 130, N'Крем')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1481, 130, N'Лосьоны и бальзамы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1482, 130, N'Маски для лица')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1483, 130, N'Масло')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1484, 130, N'Наборы косметики')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1485, 130, N'Приборы для ухода')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1486, 130, N'Спреи для кожи')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1487, 130, N'Средства для демакияжа')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1488, 130, N'Средства для пилинга')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1489, 130, N'Средства для умывания')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1490, 130, N'Тонизирующие средства')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1491, 130, N'Уход за кожей вокруг глаз')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1492, 130, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1493, 131, N'Антицеллюлитные средства')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1494, 131, N'Дезодоранты')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1495, 131, N'Для депиляции')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1496, 131, N'Для ванны и душа')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1497, 131, N'Загар и защита от солнца')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1498, 131, N'Маски и обертывания')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1499, 131, N'Масла')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1500, 131, N'Массажные средства')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1501, 131, N'Для пилинга тела')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1502, 131, N'Уход за грудью')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1503, 131, N'Уход за кожей ног')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1504, 131, N'Уход за кожей рук')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1505, 131, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1506, 132, N'Аксессуары')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1507, 132, N'Бальзамы для волос')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1508, 132, N'Для выравнивания волос')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1509, 132, N'Кондиционеры для волос')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1510, 132, N'Лосьоны для волос')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1511, 132, N'Маски для волос')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1512, 132, N'Мелки для волос')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1513, 132, N'Солнцезащитные средства')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1514, 132, N'Спрей для волос')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1515, 132, N'Средства для лечения')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1516, 132, N'Средства для окрашивания')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1517, 132, N'Средства для удаления краски')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1518, 132, N'Средства для укладки волос')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1519, 132, N'Шампуни для волос')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1520, 132, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1521, 133, N'Косметика для бритья')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1522, 133, N'Уход за кожей лица')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1523, 133, N'Уход за волосами')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1524, 133, N'Ухаживающая косметика')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1525, 133, N'Аксессуары для бритья')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1526, 133, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1527, 134, N'Для душа и ванны')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1528, 134, N'Для гигиены полости рта')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1529, 134, N'Антисептические средства')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1530, 134, N'Памперсы, подгузники')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1531, 134, N'Бумажно-гигиеническая продукция')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1532, 134, N'Средства женской гигиены')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1533, 134, N'Ватно-гигиеническая продукция')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1534, 134, N'Товары для общей гигиены')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1535, 134, N'Полезные аксессуары')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1536, 134, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1537, 135, N'Домашняя медицинская техника')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1538, 135, N'Для Массажа')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1539, 135, N'Косметологическое оборудование')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1540, 135, N'Препараты для здоровья')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1541, 135, N'Оздоровительные товары с турмалином и шунгитом')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1542, 135, N'Оптика для зрения')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1543, 135, N'Ортопедические товары')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1544, 135, N'Слуховые аппараты')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1545, 135, N'Спортивное питание и биодобавки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1546, 135, N'Пищевая продукция для оздоровления')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1547, 135, N'Товары для беременных и кормящих')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1548, 135, N'Товары для инвалидов')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1549, 135, N'Товары для похудения')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1550, 135, N'Электронные сигареты, вапорайзеры и аксессуары')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1551, 135, N'Аксессуары')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1552, 135, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1553, 137, N'Активный отдых')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1554, 137, N'Туры автобусные')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1555, 137, N'Экскурсии, поездки выходного дня')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1556, 137, N'Отдых для детей')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1557, 137, N'Отдых для семьи')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1558, 137, N'Отдых за рубежом')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1559, 137, N'Представление для детей')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1560, 137, N'Билеты в театр')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1561, 137, N'Билеты в цирк')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1562, 137, N'Билеты на концерты')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1563, 137, N'Билеты на шоу и мероприятия')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1564, 137, N'Билеты на футбол')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1565, 137, N'Авиабилеты')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1566, 137, N'Автобусные билеты')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1567, 137, N'Ж/д билеты')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1568, 137, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1569, 138, N'Велосипеды')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1570, 138, N'Велозапчасти')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1571, 138, N'Велоаксессуары')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1572, 138, N'Велоэкипировка')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1573, 138, N'Подвесы, стойки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1574, 138, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1575, 139, N'Коньки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1576, 139, N'Лыжи и сноуборды')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1577, 139, N'Санки и снегокаты')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1578, 139, N'Одежда для спорта')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1579, 139, N'Снаряжение для спорта')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1580, 139, N'Аксессуары')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1581, 139, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1582, 140, N'Товары для рыбалки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1583, 140, N'Эхолоты и камеры')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1584, 140, N'Рыболовные сети')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1585, 140, N'Лодки надувные')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1586, 140, N'Корма и прикормки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1587, 140, N'Шнуры и лески')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1588, 140, N'Рыболовные ящики и сумки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1589, 140, N'Катушки для спиннинга')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1590, 140, N'Удочки и спиннинги')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1591, 140, N'Товары для охоты')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1592, 140, N'Охотничье оружие')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1593, 140, N'Фонари ручные и налобные')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1594, 140, N'Бинокли')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1595, 140, N'Товары для подводной охоты')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1596, 140, N'Подводное оружие')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1597, 140, N'Экипировка')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1598, 140, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1599, 141, N'Детские спортивные комплексы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1600, 141, N'Для водных видов спорта')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1601, 141, N'Для единоборства')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1602, 141, N'Для игровых видов спорта')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1603, 141, N'Для походов и увлечений')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1604, 141, N'Для тяжелой атлетики')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1605, 141, N'Для фитнесса и аэробики')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1606, 141, N'Оборудование для спортзалов и др.')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1607, 141, N'Тренажеры')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1608, 141, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1609, 142, N'Газовое оборудование')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1610, 142, N'Надувная мебель')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1611, 142, N'Палатки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1612, 142, N'Рюкзаки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1613, 142, N'Складная мебель')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1614, 142, N'Спальные мешки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1615, 142, N'Туристическая посуда')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1616, 142, N'Снаряжение')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1617, 142, N'Аксессуары')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1618, 142, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1619, 143, N'Альпинизм')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1620, 143, N'Байдарки, рафты, катамараны')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1621, 143, N'Вейкбординг')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1622, 143, N'Виндсерфинг')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1623, 143, N'Дайвинг')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1624, 143, N'Дельтапланы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1625, 143, N'Джамперы, пого стики')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1626, 143, N'Кайтсерфинг')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1627, 143, N'Парапланы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1628, 143, N'Роликовые коньки и лыжероллеры')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1629, 143, N'Самокаты')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1630, 143, N'Сигвеи и гироскутеры')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1631, 143, N'Скейтбординг')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1632, 143, N'Спортивная защита')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1633, 143, N'Аксессуары и экипировка')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1634, 143, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1635, 144, N'Антикварная мебель')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1636, 144, N'Антикварная посуда')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1637, 144, N'Антикварные предметы обихода')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1638, 144, N'Антикварные часы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1639, 144, N'Букинистика (издание до 1917 г.)')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1640, 144, N'Виниловые пластинки, диски')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1641, 144, N'Живопись')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1642, 144, N'Знаки отличия. Награды')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1643, 144, N'Изделия под старину')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1644, 144, N'Иконы, киоты')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1645, 144, N'Коллекционное оружие')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1646, 144, N'Масштабные модели')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1647, 144, N'Нумизматика (монеты)')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1648, 144, N'Филателия (марки)')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1649, 144, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1650, 145, N'Деловая литература')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1651, 145, N'Детская литература')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1652, 145, N'Документальная литература')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1653, 145, N'Естесвенные и технические науки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1654, 145, N'Журналы, газеты')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1655, 145, N'Изучение иностранных языков')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1656, 145, N'Календари и плакаты')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1657, 145, N'Карты, атласы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1658, 145, N'Пособия для родителей')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1659, 145, N'Религия и духовность')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1660, 145, N'Справочная литература')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1661, 145, N'Учебная литература')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1662, 145, N'Художественная литература')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1663, 145, N'Принадлежности для книг')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1664, 145, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1665, 146, N'Гитары и струнные инструменты')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1666, 146, N'Духовые инструменты')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1667, 146, N'Ударные музыкальные инструменты')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1668, 146, N'Клавишные инструменты')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1669, 146, N'Смычковые инструменты')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1670, 146, N'Этнические инструменты')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1671, 146, N'Оборудование')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1672, 146, N'Аксессуары')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1673, 146, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1674, 147, N'Игры')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1675, 147, N'Курительные принадлежности')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1676, 147, N'Оригинальные подарки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1677, 147, N'Подарки для дома')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1678, 147, N'Праздничные украшения и фейерверки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1679, 147, N'Рукоделие')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1680, 147, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1681, 148, N'Турпоездка')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1682, 148, N'Автостоп')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1683, 148, N'Бизнес-тур')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1684, 148, N'Попутка легковая')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1685, 148, N'Деловая поездка')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1686, 148, N'Спецрейсы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1687, 148, N'Для занятий спортом')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1688, 148, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1689, 136, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1690, 150, N'Абиссинская')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1691, 150, N'Американский керл')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1692, 150, N'Анатолийская кошка')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1693, 150, N'Ашера')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1694, 150, N'Балинезийская кошка')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1695, 150, N'Бенгальская')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1696, 150, N'Бирманская кошка')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1697, 150, N'Бразильская короткошерстная')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1698, 150, N'Британская длинношерстная')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1699, 150, N'Британская короткошерстная')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1700, 150, N'Гавана браун')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1701, 150, N'Гималайская кошка')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1702, 150, N'Девон-рекс')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1703, 150, N'Донской сфинкс')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1704, 150, N'Европейская короткошерстная')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1705, 150, N'Йоркская шоколадная')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1706, 150, N'Калифорнийская сияющая')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1707, 150, N'Канаани')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1708, 150, N'Канадский сфинкс')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1709, 150, N'Кимрик')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1710, 150, N'Корниш-рекс')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1711, 150, N'Курильский бобтейл')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1712, 150, N'Ла-Перм')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1713, 150, N'Манчкин')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1714, 150, N'Мейн-кун')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1715, 150, N'Меконгский бобтейл')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1716, 150, N'Невская маскарадная')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1717, 150, N'Нибелунг')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1718, 150, N'Норвежская лесная')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1719, 150, N'Ориентальная')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1720, 150, N'Охос Азулес')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1721, 150, N'Персидская')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1722, 150, N'Петерболд')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1723, 150, N'Рагамаффин')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1724, 150, N'Русская голубая')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1725, 150, N'Рэгдолл')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1726, 150, N'Священная бирманская')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1727, 150, N'Сейшельская')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1728, 150, N'Селкирк-рекс')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1729, 150, N'Серенгети')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1730, 150, N'Сиамская')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1731, 150, N'Сибирская')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1732, 150, N'Сингапурская')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1733, 150, N'Скоттиш страйт')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1734, 150, N'Скоттиш фолд')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1735, 150, N'Сококе')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1736, 150, N'Сомалийская')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1737, 150, N'Турецкая ангора')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1738, 150, N'Турецкий ван')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1739, 150, N'Форинвайт')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1740, 150, N'Цейлонская кошка')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1741, 150, N'Чаузи')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1742, 150, N'Шантильи-Тиффани')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1743, 150, N'Шиншилла ДШ')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1744, 150, N'Шотландская вислоухая (Хайленд фолд)')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1745, 150, N'Шотландская длинношерстная (Хайленд-страйт)')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1746, 150, N'Эгейская кошка')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1747, 150, N'Экзотическая короткошерстная')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1748, 150, N'Яванез (Яванская кошка)')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1749, 150, N'Японский бобтейл')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1750, 150, N'Другая')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1751, 151, N'Австралийская овчарка')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1752, 151, N'Австралийская пастушья собака')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1753, 151, N'Австралийский келпи')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1754, 151, N'Аляскинский маламут')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1755, 151, N'Американский бульдог')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1756, 151, N'Американский стаффордширский терьер')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1757, 151, N'Английский бульдог')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1758, 151, N'Бассет')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1759, 151, N'Бельгийская овчарка')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1760, 151, N'Бернский зенненхунд')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1761, 151, N'Бигль')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1762, 151, N'Бишон фризе')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1763, 151, N'Боксер')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1764, 151, N'Болонка')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1765, 151, N'Бордоский дог')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1766, 151, N'Бульмастиф')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1767, 151, N'Бультерьер')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1768, 151, N'Бурбуль')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1769, 151, N'Вест хайленд уайт терьер')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1770, 151, N'Восточно-европейская овчарка')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1771, 151, N'Гриффон')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1772, 151, N'Далматин')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1773, 151, N'Джек Рассел')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1774, 151, N'Доберман')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1775, 151, N'Золотистый ретривер')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1776, 151, N'Ирландский сеттер')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1777, 151, N'Ирландский терьер')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1778, 151, N'Йоркширский терьер')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1779, 151, N'Кавказская овчарка')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1780, 151, N'Кане корсо')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1781, 151, N'Карликовый пинчер')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1782, 151, N'Керри-блю терьер')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1783, 151, N'Китайская хохлатая')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1784, 151, N'Колли')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1785, 151, N'Лабрадор ретривер')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1786, 151, N'Лайка')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1787, 151, N'Мальтийская болонка')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1788, 151, N'Мастиф')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1789, 151, N'Мексиканская голая собака')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1790, 151, N'Миттельшнауцер')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1791, 151, N'Мопс')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1792, 151, N'Московская сторожевая')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1793, 151, N'Немецкая овчарка')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1794, 151, N'Немецкий дог')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1795, 151, N'Папийон')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1796, 151, N'Пекинес')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1797, 151, N'Пит-бультерьер')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1798, 151, N'Померанский шпиц')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1799, 151, N'Пудель')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1800, 151, N'Ризеншнауцер')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1801, 151, N'Родезийский риджбек')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1802, 151, N'Ротвейлер')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1803, 151, N'Русская борзая')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1804, 151, N'Русский черный терьер')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1805, 151, N'Самоедская собака')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1806, 151, N'Сенбернар')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1807, 151, N'Сибирский хаски')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1808, 151, N'Скай-терьер')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1809, 151, N'Скотч-терьер')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1810, 151, N'Спаниель')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1811, 151, N'Среднеазиатская овчарка')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1812, 151, N'Стаффордширский бультерьер')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1813, 151, N'Стаффордширский терьер')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1814, 151, N'Такса')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1815, 151, N'Той-терьер')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1816, 151, N'Фокстерьер')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1817, 151, N'Французский бульдог')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1818, 151, N'Цвергпинчер')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1819, 151, N'Цвергшнауцер')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1820, 151, N'Чау-чау')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1821, 151, N'Чихуахуа')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1822, 151, N'Шарпей')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1823, 151, N'Шелти')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1824, 151, N'Ши-тцу')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1825, 151, N'Шпиц')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1826, 151, N'Другой')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1827, 152, N'Атериновые')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1828, 152, N'Карповидные')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1829, 152, N'Карпозубые')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1830, 152, N'Окуневидные')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1831, 152, N'Пецилиевые')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1832, 152, N'Пресноводные')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1833, 152, N'Сомовидные')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1834, 152, N'Харациновидные')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1835, 152, N'Хоботнорылые')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1836, 152, N'Креветки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1837, 152, N'Улитки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1838, 152, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1839, 153, N'Амадины')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1840, 153, N'Врановые')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1841, 153, N'Вьюрки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1842, 153, N'Голуби')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1843, 153, N'Дятловые')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1844, 153, N'Канарейки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1845, 153, N'Курообразные')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1846, 153, N'Павлины')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1847, 153, N'Певчие')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1848, 153, N'Пирруры')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1849, 153, N'Попугаи')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1850, 153, N'Соколы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1851, 153, N'Фазаны')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1852, 153, N'Цесарки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1853, 153, N'Щеглы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1854, 153, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1855, 154, N'Беличьи')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1856, 154, N'Дегу')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1857, 154, N'Ежовые')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1858, 154, N'Крысы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1859, 154, N'Морские свинки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1860, 154, N'Мыши')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1861, 154, N'Песчанки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1862, 154, N'Хомяки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1863, 154, N'Шиншиллы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1864, 155, N'Аллигаторы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1865, 155, N'Амфибии')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1866, 155, N'Вараны')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1867, 155, N'Веретеницы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1868, 155, N'Гекконы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1869, 155, N'Змеи')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1870, 155, N'Игуаны')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1871, 155, N'Кайманы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1872, 155, N'Крокодилы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1873, 155, N'Хамелеоны')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1874, 155, N'Черепахи')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1875, 155, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1876, 156, N'Гуси')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1877, 156, N'Индюки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1878, 156, N'Козы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1879, 156, N'Коровы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1880, 156, N'Кролики')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1881, 156, N'Куры')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1882, 156, N'Лошади')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1883, 156, N'Овцы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1884, 156, N'Свиньи')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1885, 156, N'Утки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1886, 156, N'Нутрии')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1887, 156, N'Пчелы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1888, 156, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1889, 157, N'Аквариумы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1890, 157, N'Террариумы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1891, 157, N'Домики и когтеточки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1892, 157, N'Клетки и вольеры')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1893, 157, N'Корма')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1894, 157, N'Одежда для животных')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1895, 157, N'Поводки, намордники')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1896, 157, N'Посуда для животных')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1897, 157, N'Шампуни, средства по уходу')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1898, 157, N'Сумки переноски')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1899, 157, N'Туалеты')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1900, 157, N'Наполнители для туалета')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1901, 157, N'Сельхозпринадлежности')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1902, 157, N'Аксессуары и декор')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1903, 157, N'Другое')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1904, 158, N'Кошки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1905, 158, N'Собаки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1906, 158, N'Рыбки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1907, 158, N'Птицы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1908, 158, N'Рептилии')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1909, 158, N'Грызуны')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1910, 158, N'Сельхозживотные')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1911, 158, N'Другие животные')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1912, 159, N'Кошки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1913, 159, N'Собаки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1914, 159, N'Рыбки')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1915, 159, N'Птицы')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1916, 159, N'Рептилии')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1917, 159, N'Грызуны')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1918, 159, N'Сельхозживотные')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1919, 159, N'Другие животные')
GO
INSERT [dbo].[Categories] ([Id], [ParentId], [Name]) VALUES (1920, 149, N'Другие животные')
GO
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
