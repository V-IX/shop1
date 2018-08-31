-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 31 2018 г., 16:01
-- Версия сервера: 5.5.53
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `vix_shop_tpl_1`
--

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE `articles` (
  `idItem` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `brief` varchar(255) DEFAULT NULL,
  `text` text,
  `img` text,
  `num` int(11) DEFAULT '1',
  `visibility` int(11) DEFAULT '1',
  `mTitle` varchar(255) NOT NULL,
  `mKeywords` varchar(255) DEFAULT NULL,
  `mDescription` text,
  `addDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AVG_ROW_LENGTH=3276 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`idItem`, `title`, `alias`, `brief`, `text`, `img`, `num`, `visibility`, `mTitle`, `mKeywords`, `mDescription`, `addDate`) VALUES
(20, 'В России начались продажи Audi A4 Allroad Quattro', 'v-rossii-nachalis-prodazhi-audi-a4-allroad-quattro', 'Начальная цена автомобиль составляет 2 545 000 рублей, что на 420 тысяч дороже модели предыдущей версии.', '<p>Audi объявила рублевые цены на A4 Allroad Quattro нового поколения. Сейчас начался прием заказов на автомобиль, поставки начнутся позднее.</p>\r\n\r\n<p>В России Audi A4 Allroad Quattro предлагается с бензиновым турбомотором 2.0 TFSI мощностью 249 л.с. с 6-ступенчатой &laquo;механикой&raquo; или 7-диапазонным &laquo;роботом&raquo; S-tronic с двойным сцеплением.</p>\r\n\r\n<p>Начальная цена автомобиль составляет 2 545 000 рублей, что на 420 тысяч дороже модели предыдущей версии.</p>\r\n\r\n<p>Audi A4 Allroad Quattro отличается от стандартного A4 Avant &laquo;внедорожным&raquo; обвесом, повышенным клиренсом, иной настройкой ездовой электроники.</p>', '7eddf292ccfb36f1f4fe7fbc313316c0.jpg', 1, 1, 'В России начались продажи Audi A4 Allroad Quattro', 'В России начались продажи Audi A4 Allroad Quattro', 'В России начались продажи Audi A4 Allroad Quattro', '2016-07-13 18:50:31'),
(21, 'Компания Audi представила новое поколение купе A5', 'kompaniya-audi-predstavila-novoe-pokolenie-kupe-a5', 'В Европе A5 можно будет заказать с одним из пяти двигателей объемом от 2,0 до 3,0 литра — предусмотрено два бензиновых мотора и три дизельных. Их отдача варьируется от 187 до 268 л.с.', '<p>Компания Audi представила полностью новое купе A5. Визуально автомобиль получился очень похожим на предшественника, но с технической точки зрения машина действительно новая.</p>\r\n\r\n<p>Купе построено на базе семейства A4 &mdash; в основе конструкции находится модульная платформа MLB. Машина стала на 60 кг легче, но прибавила в длине кузова около 4,5 см и стала просторнее внутри.</p>\r\n\r\n<p>В Европе A5 можно будет заказать с одним из пяти двигателей объемом от 2,0 до 3,0 литра &mdash; предусмотрено два бензиновых мотора и три дизельных. Их отдача варьируется от 187 до 268 л.с. Специальная модификация S5 получила наддувный бензиновый V6 объемом 3,0 литра, развивающий 350 л.с.</p>\r\n\r\n<p>Большая часть моторов предлагается в паре с 6-ступенчатой &laquo;механикой&raquo; или 7-диапазонным &laquo;роботом&raquo;, но самые производительные версии с дизелем 3,0 V6 мощностью 268 л.с. и 350-сильный S5 получат 8-скоростной &laquo;автомат&raquo;. В качестве опции на этих двух модификациях можно заказать спортивный задний дифференциал.</p>\r\n\r\n<p>Добавим, что A5 также получит систему полного привода quattro нового поколения, в которой используется муфта вместо дифференциала Torsen. В список оборудования также войдут полностью цифровая приборная панель Virtual Cockpit, возможность интеграции устройств на платформах от Apple и Google и продвинутый комплекс систем активной безопасности.</p>', '78b8842c50d4d037babee3f6135998cc.jpg', 1, 1, 'Компания Audi представила новое поколение купе A5', 'Компания Audi представила новое поколение купе A5', 'Компания Audi представила новое поколение купе A5', '2016-07-13 19:17:21'),
(22, 'Компания BMW разработала дизель с четырьмя турбокомпрессорами', 'kompaniya-bmw-razrabotala-dizel-s-chetyrmya-turbokompressorami', 'У дизеля два компрессора высокого давления и два — низкого. Отдача двигателя составляет 394 л.с. мощности и 760 Нм крутящего момента в диапазоне от 2000 до 3000 об/мин.', '<p>Компания BMW разработала новый дизельный двигатель объемом 3,0 литра. Мотор получил сразу четыре турбокомпрессора и пришел на смену аналогичному агрегату с тремя нагнетателями.</p>\r\n\r\n<p>У дизеля два компрессора высокого давления и два &mdash; низкого. Отдача двигателя составляет 394 л.с. мощности и 760 Нм крутящего момента в диапазоне от 2000 до 3000 об/мин. Сообщается, что предельная тяга ограничена возможностями 8-ступенчатого &laquo;автомата&raquo;, в паре с которым работает мотор &mdash; с другой трансмиссией показатели крутящего момента были бы еще выше.</p>\r\n\r\n<p>Для сравнения, прежний дизель с тремя турбинами развивал 381 л.с. мощности и 740 Нм тяги.</p>\r\n\r\n<p>Ожидается, что новый двигатель начнут ставить на флагманскую версию седана 750d xDrive. По предварительной информации, мотор сможет разогнать автомобиль до &laquo;сотни&raquo; уже за 4,5 секунды, а максимальная скорость составит 250 км/ч.</p>\r\n\r\n<p>Вероятнее всего, позже двигатель появится на моделях X5 и X6 с индексом M50d, а также на 550d.</p>', '1841c5387a8dec12fd176b5fbe5fd100.jpg', 1, 1, 'Компания BMW разработала дизель с четырьмя турбокомпрессорами', 'Компания BMW разработала дизель с четырьмя турбокомпрессорами', 'Компания BMW разработала дизель с четырьмя турбокомпрессорами', '2016-07-13 19:42:56'),
(23, 'BMW представила М-«семерку», М-«двойку» и новое имя для гибридов', 'bmw-predstavila-m-semerku-m-dvojku-i-novoe-imya-dlya-gibridov', 'О новом поколении флагманской модели BMW 7-серии Drom.ru рассказал еще осенью прошедшего года. А нынче баварцы представили наиболее мощную версию своего топ-седана — BMW M 760 Li xDrive.', '<p>Главная изюминка новой модификации &mdash; 6,6-литровый 12-цилиндровый V-образный бензиновый мотор M Performance TwinPower Turbo, с магической для нашего слуха мощностью 600 л.с. Баварский &laquo;шестисотый&raquo;, не находите? С этим двигателем огромный (длина кузова превышает 5,2 метра) и массивный (снаряженная масса составляет 2255 кг) седан премиум-класса способен разгоняться до первой &laquo;сотни&raquo; всего за 3,9 секунды при максимальной скорости в 250 км/ч (при опциональном пакете M Driver&#39;s Package &mdash; до 305 км/ч).</p>\r\n\r\n<p>Новое купе BMW M2 столь же широкого интереса к себе вряд ли бы вызвало, если б не представленная с ним линейка аксессуаров M Performance. С помощью фирменных деталей можно не только индивидуализировать внешность своего автомобиля (один из подобных вариантов демонстрировало белое купе), но и улучшить его и без того неординарные динамические характеристики &mdash; от аэродинамики до отдачи мотора и характеристик шасси.</p>\r\n\r\n<p>Помимо этого баварцы презентовали новый бренд BMW iPerformance, под которым будут продаваться все гибридные (в том числе и Plug-in) модели марки &mdash; от BMW 2-series до флагманской 7-series. Для узнаваемости все модели этой линейки получат особые логотипы на передних крыльях и задней стойке кузова, а также специальные синие элементы оформления радиаторной решетки и ступиц колесных дисков.</p>', 'b5437031acdda4cd8a11efdfa2eab89c.jpg', 1, 1, 'BMW представила М-«семерку», М-«двойку» и новое имя для гибридов', 'BMW представила М-«семерку», М-«двойку» и новое имя для гибридов', 'BMW представила М-«семерку», М-«двойку» и новое имя для гибридов', '2016-07-13 19:47:40'),
(24, 'Volkswagen Polo-седан получил спортивную версию со 125-сильным мотором', 'volkswagen-polo-sedan-poluchil-sportivnuyu-versiyu-so-125-silnym-motorom', 'Новая версия оснащена 1,4-литровым двигателем мощностью 125 л.с., ранее известным по модели Skoda Rapid. Мотор агрегатирован с 7-ступенчатой роботизированной коробкой передач DSG или 6-ступенчатой МКП.', '<p>Volkswagen представил седан Polo GT &mdash; эта спортивная модификация создана специально для России.</p>\r\n\r\n<p>Новая версия оснащена 1,4-литровым двигателем мощностью 125 л.с., ранее известным по модели Skoda Rapid. Мотор агрегатирован с 7-ступенчатой роботизированной коробкой передач DSG или 6-ступенчатой МКП.</p>\r\n\r\n<p>Новинка также отличается от стандартного Polo-седан стилистическими особенностями экстерьера и интерьера. В частности, у нее окрашеные в черный глянец корпуса зеркал, спортивные бамперы, расширители порогов, решетка радиатора и воздухозаборники с сотовой структурой, двойная выхлопная труба, 16-дюймовые легкосплавные диски Portago, затемненные задние фонари и задний спойлер.</p>\r\n\r\n<p>Внутри &mdash; кожаный спортивный руль, новая спортивная обивка сидений, накладки на пороги с логотипом GT, алюминиевые накладки на педали, что подчеркивает динамичный стиль Polo GT.</p>\r\n\r\n<p>Polo GT уже в базовой комплектации имеет электростеклоподъемники для всех дверей, центральный замок с ДУ, климат-контроль, наружные зеркала с электрорегулировкой и обогревом, электроподогрев передних сидений с раздельной регулировкой, галогеновые фары H7, аудиосистему RCD 230, радио/СD/MP3/Aux-In/USB/SD.</p>\r\n\r\n<p>Что касается устройств безопасности, в базовое оборудование Polo GT входят система ESP для версии с АКП, фронтальные подушки, передние и задние дисковые тормозные механизмы.</p>\r\n\r\n<p>Продажи Volkswagen Polo-седан GT начнутся осенью. Покупатели первых 300 белых или серебристых Polo GT получат автомобиль с черной крышей и эксклюзивной спортивной оклейкой в виде черных и красных полос на капоте и багажнике.</p>', '065db6989fb6874b6f36e4f683f1037b.jpg', 1, 1, 'Volkswagen Polo-седан получил спортивную версию со 125-сильным мотором', 'Volkswagen Polo-седан получил спортивную версию со 125-сильным мотором', 'Volkswagen Polo-седан получил спортивную версию со 125-сильным мотором', '2016-07-13 19:50:56'),
(25, 'Volkswagen показал салон обновленного пикапа Amarok', 'volkswagen-pokazal-salon-obnovlennogo-pikapa-amarok', 'Обновленный Amarok оснащается дизелями V6 объемом 3,0 литра, доступными с одним из трех вариантов отдачи: 163, 204 или 224 л.с.', '<p>Компания Volkswagen опубликовала фотографии внутреннего убранства пикапа Amarok. Изображения внешности обновленной машины появились несколько недель назад, но салон удалось рассмотреть только сейчас.</p>\r\n\r\n<p>В интерьере появятся кресла ergoComfort с настройками в 14 положениях, тачскрин высокого разрешения, а также мультимедийная система с широкими возможностями интеграции других устройств и функцией распознавания голоса. Кроме того, в отделке теперь применяются материалы более высокого качества, чем прежде.</p>\r\n\r\n<p>Помимо прочего, у пикапа будет мультифункциональный руль, несколько новых полостей для хранения мелких вещей, а также опциональные подрулевые &laquo;лепестки&raquo; переключения передач и дисплей на приборной панели. Также предусмотрен парковочный ассистент Park Pilot, опирающийся на работу датчиков и камеры заднего вида.</p>\r\n\r\n<p>Напомним, обновленный Amarok оснащается дизелями V6 объемом 3,0 литра, доступными с одним из трех вариантов отдачи: 163, 204 или 224 л.с. Моторы можно укомплектовать &laquo;механикой&raquo; или 8-ступенчатым &laquo;автоматом&raquo;.</p>', 'ab263c91b4c1ffe77bebc5c47f2f8c60.jpg', 1, 1, 'Volkswagen показал салон обновленного пикапа Amarok', 'Volkswagen показал салон обновленного пикапа Amarok', 'Volkswagen показал салон обновленного пикапа Amarok', '2016-07-13 19:56:05');

-- --------------------------------------------------------

--
-- Структура таблицы `banners`
--

CREATE TABLE `banners` (
  `idItem` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `alt` varchar(255) DEFAULT NULL,
  `img` text,
  `visibility` int(11) DEFAULT '1',
  `size_x` int(11) DEFAULT NULL,
  `size_y` int(11) DEFAULT NULL,
  `link` text,
  `target` varchar(255) DEFAULT '_self',
  `num` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `banners`
--

INSERT INTO `banners` (`idItem`, `title`, `alias`, `alt`, `img`, `visibility`, `size_x`, `size_y`, `link`, `target`, `num`) VALUES
(1, 'Баннер на главной', 'home', 'Акция на все товары', '65509201e436251c9e3bdb10e500d202.png', 1, 300, 350, '/catalog', '_self', 100),
(2, 'Баннер в каталоге слева', 'catalog_left', 'Акция на все товары', '79c7845ef8aaffb801c1be1b6f62b030.png', 1, 230, 300, '/catalog', '_self', 99),
(3, 'Баннер в каталоге вверху', 'catalog_top', 'Акция на все товары', 'ee31cb6f90dfec16742210e4a013e9a2.png', 1, 730, 200, '/catalog', '_self', 98),
(4, 'Баннер в каталоге внизу', 'catalog_bottom', 'Акция на все товары', 'cf4ee9749ba1004ee85f2de21d9bce31.png', 1, 730, 200, '/catalog', '_self', 97);

-- --------------------------------------------------------

--
-- Структура таблицы `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB AVG_ROW_LENGTH=842 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('2dd7789e7ede7d8fa02c7c538bc16e84b795e42b', '127.0.0.1', 1535720418, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533353732303136343b69647c733a313a2231223b6c6f67696e7c733a353a2261646d696e223b6163636573737c733a353a2261646d696e223b),
('5b621c45afed079ff6eca1fe58f06726a5b41dc5', '127.0.0.1', 1535718467, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533353731383436333b),
('d6a97f38643ff596a8cf93f0dadbba350f2b125e', '127.0.0.1', 1535719801, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533353731393737393b69647c733a313a2231223b6c6f67696e7c733a353a2261646d696e223b6163636573737c733a353a2261646d696e223b),
('f8beb8ba2c4dc7995d1fe25767bcad85ce2b10c4', '127.0.0.1', 1535719272, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533353731393139393b69647c733a313a2231223b6c6f67696e7c733a353a2261646d696e223b6163636573737c733a353a2261646d696e223b);

-- --------------------------------------------------------

--
-- Структура таблицы `faq`
--

CREATE TABLE `faq` (
  `idItem` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `title` text,
  `text` text,
  `img` text,
  `isRead` int(11) DEFAULT '0',
  `num` int(11) DEFAULT '1',
  `visibility` int(11) DEFAULT '0',
  `addDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AVG_ROW_LENGTH=8192 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `faq`
--

INSERT INTO `faq` (`idItem`, `name`, `email`, `phone`, `title`, `text`, `img`, `isRead`, `num`, `visibility`, `addDate`) VALUES
(11, NULL, NULL, NULL, 'Почему небо голубое?', '<p>Phasellus id mi vel leo placerat elementum. Etiam efficitur sagittis commodo. Quisque eu sem aliquam, molestie felis quis, rutrum est. Integer gravida gravida turpis, eget finibus odio interdum sit amet. Etiam maximus est vitae lobortis dignissim. Quisque eget justo posuere, egestas felis ac, interdum velit. In hac habitasse platea dictumst. Fusce vehicula aliquet risus elementum finibus. In vitae fringilla diam.</p>\r\n\r\n<p>Nam eleifend tortor risus, eleifend scelerisque nisi mattis non. Integer feugiat magna sed ipsum bibendum, eget finibus sapien pharetra. Sed lectus metus, sollicitudin vel fermentum laoreet, suscipit in sapien. Proin et scelerisque mi, at elementum tortor. Donec non ultricies leo, non semper erat. Vivamus mollis sollicitudin massa, vel lacinia risus tincidunt quis.</p>', NULL, 1, 1, 1, '2016-03-09 12:07:45'),
(13, 'Владислав Запорожец', 'zaporozhets-vlad@rambler.ru', '+375 (11) 111-11-11', 'Как получить свой товар, если почта сломалась?', NULL, NULL, 0, 1, 0, '2016-07-19 23:49:45');

-- --------------------------------------------------------

--
-- Структура таблицы `feedback`
--

CREATE TABLE `feedback` (
  `idItem` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `text` text,
  `addDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `isRead` int(11) DEFAULT '0'
) ENGINE=InnoDB AVG_ROW_LENGTH=1489 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `feedback`
--

INSERT INTO `feedback` (`idItem`, `title`, `name`, `phone`, `email`, `text`, `addDate`, `isRead`) VALUES
(2, '112', '123', '1233', NULL, NULL, '2016-05-24 08:07:17', 1),
(3, 'Узнать стоимость: Test BMW 320i E90', 'Владислав Запорожец', '+375 (11) 111-11-11', NULL, NULL, '2016-07-19 21:31:54', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `feedback_orders`
--

CREATE TABLE `feedback_orders` (
  `idItem` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `text` text,
  `addDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `isRead` int(11) DEFAULT '0'
) ENGINE=InnoDB AVG_ROW_LENGTH=1489 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `feedback_orders`
--

INSERT INTO `feedback_orders` (`idItem`, `title`, `name`, `phone`, `email`, `text`, `addDate`, `isRead`) VALUES
(4, 'Заказ товара: Test BMW 320i E90', NULL, '+375 (11) 111-11-11', NULL, NULL, '2016-07-19 21:44:51', 0),
(5, 'Купить в один клик: Test BMW 320i E90', 'Владислав Запорожец', '+375 (11) 111-11-11', NULL, NULL, '2016-07-19 21:46:02', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `navigation`
--

CREATE TABLE `navigation` (
  `idItem` int(11) NOT NULL,
  `idParent` int(11) DEFAULT '0',
  `position` varchar(255) DEFAULT 'top',
  `title` varchar(255) DEFAULT NULL,
  `link` text,
  `visibility` int(11) DEFAULT '1',
  `num` int(11) DEFAULT '0',
  `target` varchar(255) DEFAULT '_self',
  `addDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AVG_ROW_LENGTH=1638 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `navigation`
--

INSERT INTO `navigation` (`idItem`, `idParent`, `position`, `title`, `link`, `visibility`, `num`, `target`, `addDate`) VALUES
(29, 0, 'footer', 'Популярные категории', '', 1, 10, '_self', '2016-02-07 00:28:14'),
(31, 29, 'footer', 'Автомобили', '/catalog/auto', 1, 10, '_self', '2016-02-07 00:28:50'),
(32, 29, 'footer', 'Audi', '/catalog/audi', 1, 9, '_self', '2016-02-07 00:29:10'),
(33, 29, 'footer', 'BMW', '/catalog/bmw', 1, 8, '_self', '2016-02-07 00:29:22'),
(37, 0, 'footer', 'Покупателям', '', 1, 9, '_self', '2016-02-07 22:06:42'),
(38, 37, 'footer', 'Установка оборудования', '/pages/about', 1, 10, '_self', '2016-02-07 22:06:42'),
(39, 37, 'footer', 'Доставка и оплата', '/pages/about', 1, 9, '_self', '2016-02-07 22:06:42'),
(40, 37, 'footer', 'Гарантийные обязательства', '/pages/about', 1, 8, '_self', '2016-02-07 22:06:42'),
(41, 0, 'footer', 'Компания', '', 1, 7, '_self', '2016-07-12 11:16:04'),
(42, 29, 'footer', 'Volkswagen', '/catalog/vw', 1, 6, '_self', '2016-07-12 11:17:47'),
(43, 37, 'footer', 'Подрядчикам и оптовикам', '/pages/about', 1, 6, '_self', '2016-07-12 11:19:19'),
(44, 41, 'footer', 'Наши контакты', '/contacts', 1, 10, '_self', '2016-07-12 11:19:43'),
(45, 41, 'footer', 'Подрядчикам и оптовикам', '/pages/about', 1, 10, '_self', '2016-07-12 11:20:11'),
(46, 41, 'footer', 'О компании', '/pages/about', 1, 10, '_self', '2016-07-12 11:20:34'),
(47, 0, 'top', 'Главная', '/', 1, 10, '_self', '2016-09-12 12:03:00'),
(48, 0, 'top', 'О компании', '/pages/about', 1, 9, '_self', '2016-09-12 12:04:27'),
(49, 0, 'top', 'Новости', '/news', 1, 8, '_self', '2016-09-12 12:04:47'),
(50, 0, 'top', 'Статьи', '/articles', 1, 7, '_self', '2016-09-12 12:04:49'),
(51, 0, 'top', 'Отзывы', '/reviews', 1, 6, '_self', '2016-09-12 12:05:00'),
(52, 0, 'top', 'Вопрос-ответ', '/faq', 1, 5, '_self', '2016-09-12 12:05:03'),
(53, 0, 'top', 'Доставка и оплата', '/pages/delivery', 1, 4, '_self', '2016-09-12 12:05:13'),
(54, 0, 'top', 'Контакты', 'contacts', 1, 3, '_self', '2016-09-12 12:05:16'),
(55, 48, 'top', 'Первый пункт', '/pages/about', 1, 10, '_self', '2016-09-12 12:38:17'),
(56, 48, 'top', 'Пункт номер два', '/pages/about', 1, 9, '_self', '2016-09-12 12:38:35'),
(57, 48, 'top', 'Третий пункт самый длинный', '/pages/about', 1, 8, '_self', '2016-09-12 12:38:52');

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `idItem` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `brief` varchar(255) DEFAULT NULL,
  `text` text,
  `img` text,
  `num` int(11) DEFAULT '1',
  `visibility` int(11) DEFAULT '1',
  `mTitle` varchar(255) NOT NULL,
  `mKeywords` varchar(255) DEFAULT NULL,
  `mDescription` text,
  `addDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AVG_ROW_LENGTH=3276 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`idItem`, `title`, `alias`, `brief`, `text`, `img`, `num`, `visibility`, `mTitle`, `mKeywords`, `mDescription`, `addDate`) VALUES
(17, 'Что такое продвижение сайта и зачем оно нужно?', 'chto-takoe-prodvizhenie-sajta-i-zachem-ono-nuzhno', 'В интернет-пространстве миллиардное количество сайтов. Чтобы найти информацию или услуги, сейчас пользуются специальными поисковыми машинами (Яндекс, Гугл и др.).', '<p>Вводя вопрос в поисковик, Вы запускаете очень сложный процесс подбора источников, которые, по мнению машины, должны наиболее точно ответить на Ваш вопрос. После этого машина выдает Вам список ресурсов.&nbsp;</p>\r\n\r\n<p>Многие исследования показывают, что обычный пользователь просматривает 2&ndash;4 первых сайта в листе поиска, реже &ndash; до 10 штук. Поэтому под продвижением ресурса понимают попадание сайта, по определенным запросам, в первые 10 строк поиска.&nbsp;</p>\r\n\r\n<p>Что нужно понимать при заказе продвижения сайта?&nbsp;</p>\r\n\r\n<p>Прежде всего, Вы должны сами для себя понять, что Вы хотите. Невозможно продвинуть сайт, можно продвинуть страницы Вашего ресурса с определенной информацией.&nbsp;</p>\r\n\r\n<p>Когда-то давно, продвижение делалось очень просто: на белом фоне, белым цветом писалось много-много раз нужное слово, и Вы становились первыми.&nbsp;</p>\r\n\r\n<p>Такие времена ушли безвозвратно. Все поисковики борются с таким или похожим продвижением.&nbsp;</p>\r\n\r\n<p>Основная идея, которую они продвигают сегодня, такова &ndash; Вы будете первыми, если на ресурсе, который сделан так, чтобы человеку было удобно, есть нужная человеку информация. Причем написанная человеком, правильным языком и без SEOшных заморочек.&nbsp;</p>\r\n\r\n<p>Это конечно замечательно, но мы должны понимать, что все люди, которые занимаются сайто-строительством, далеко не дураки, и поэтому война сайтов велась и будет вестись пока существует Интернет.&nbsp;</p>\r\n\r\n<p>Что должен предложить Вам SEO-специалист?</p>\r\n\r\n<ol>\r\n	<li>Прежде всего, конечно, Вам предложат аудит Вашего сайта. После него Вам придется многое переделать в своем сайте, чтобы оптимизировать его под запросы и внутренние ссылки.&nbsp;</li>\r\n	<li>Вы должны объяснить, в общих чертах, что Вы хотите продвинуть, а специалист должен предложить Вам семантическое ядро сайта, на основе которого он будет предлагать Вам список запросов, по которому будут продвигаться страницы Вашего ресурса.&nbsp;</li>\r\n	<li>Предложить дописать или переработать страницы ресурса, сделав их &laquo;приземляющими&raquo;, под выбранные запросы.&nbsp;</li>\r\n	<li>Подготовить ссылочную базу, чтобы улучшить видимость сайта в Интернете.&nbsp;</li>\r\n	<li>Предложить стратегию по проведению директ-рекламы Вашего сайта.</li>\r\n</ol>', '8e20d25cf28479adfef979d3bf7db586.jpg', 1, 1, 'Что такое продвижение сайта и зачем оно нужно?', 'Что такое продвижение сайта и зачем оно нужно?', 'Что такое продвижение сайта и зачем оно нужно?', '2016-02-07 00:06:22'),
(18, 'Умение находить общий язык с конкурентами – залог прочных позиций на рынке', 'umenie-nahodit-obshij-yazyk-s-konkurentami-zalog-prochnyh-pozicij-na-rynke', 'Начиная свой бизнес или продвигая компанию работодателя, важно заручиться не только надежными партнерами, но и грамотно выстроить отношения с конкурентами.', '<p>Кто-то может сказать, что занимаясь делом, не стоит вообще на кого-либо обращать внимание. Вы выбрали эту стратегию, а Ваш конкурент другую. Вы любите большие скидки и распродажи, а он делает упор на качество и сопутствующие услуги. Разногласий с конкурентами может возникнуть множество. Еще бы! Вы же подвинули их и уменьшили их долю рынка. Как поступить? Развязать войну, отвоевывая себе место, или вести мирные переговоры?</p>\r\n\r\n<p>Недаром говорят, лучше самой тихой войны худой мир. Подумайте сами, сколько сил, средств и времени может отнять эта никому не нужная война. Демпинговать ценами, рассказывать везде и всюду, какие они плохие, указывать потенциальным потребителям на недостатки конкурентов? Но ведь все это может обернуться против Вас.</p>\r\n\r\n<p>Лучше подумать над тем, чем вы можете быть друг другу полезны. Возможно, заключив соглашение о приблизительно равных ценах и регламентировании ассортимента, Вы только больше выиграете, сделав ставку на качество обслуживание, оформление интерьера торгового зала, внедрение дополнительных услуг, которых нет у Вашего конкурента. Выгодное сотрудничество – хороший способ противостоять более сильным и матерым коммерсантам. Периодически кризис реализации проявляется во всех отраслях – сезонность, политические и экономические коллизии дают себя знать регулярно. Грамотное поведение и дружба с конкурентами может помочь выжить в не простых экономических условиях, а потом, это лучший способ знать о положении их дел, свободно посещая офис, торговый зал, производство и т.д. Выискивать и вынюхивать Вас никто не заставляет, а поддержание приятельских отношений значительно облегчит ваше существование на рынке.</p>\r\n\r\n<p>Хороший способ заручиться дружбой конкурента – приобретать у него на постоянной основе, какую-нибудь мелочевку. Такое положение выведет Вас из ранга конкурентов. Не будет же Ваш поставщик строить козни против своего постоянного покупателя! А Вам это даст возможность ориентироваться в размере наценок, отношении к покупателям, уровне сервиса Вашего конкурента. Правильно сделанные выводы помогут избежать многих ошибок, модернизировать Ваш бизнес, внести что-то новое и ликвидировать не рентабельные направления. Насколько это выгодно Вашему конкуренту? А, собственно, какая Вам разница, выгодно ему это или нет?</p>\r\n\r\n<p>Не найдете компромисс во взаимоотношениях с конкурентами – они Вас просто выживут с рынка. Закон джунглей превратился в самый действенный стимул поведения на рынке. Превратить конкурента в коллегу – Ваша прямая задача!</p>', '1e28c609f797643f55950ef391abc5bc.jpg', 1, 1, 'Умение находить общий язык с конкурентами – залог прочных позиций на рынке', 'Умение находить общий язык с конкурентами – залог прочных позиций на рынке', 'Умение находить общий язык с конкурентами – залог прочных позиций на рынке', '2016-02-07 00:09:29'),
(19, 'Брендинг – заставь имя работать на себя!', 'brending-zastav-imya-rabotat-na-sebya', 'Брендинг являет собой высшую ступень развития маркетинговой деятельности. Брендинг – гарантия пожизненного успеха компании, ее обладателей и сотрудников.', '<p>Именно бренд заставляет людей купить продукт или услугу. Однако для того чтобы стать профи в данном деле, чтобы действительно заставить имя работать на компанию, необходимо приложить немалые усилия, провести колоссальные объемы работ и исследований. Начать, пожалуй, стоит непосредственно с понятия.</p>\r\n\r\n<p>Бренд &ndash; уникальное, неповторимое, единственное и продающее имя фирмы, компании, предприятия, которое укоренилось в сознании людей, имеет отличную репутацию и заставляет покупателя выбирать именно данный продукт. Наличие бренда гарантирует продавцу, производителю, что товар, даже обладая примерно равными или даже более низкими показателями в сравнении с конкурентами, будет куплен в несколько раз чаще конкурентов.</p>\r\n\r\n<p>Брендинг сегодня &ndash; не просто способ продвижения товара, но философия, которая создает и распространяет, укрепляет и сохраняет определенный образ в сознании потребителей. В настоящее время брендинг в Беларуси еще не до конца изучен, применяется только в качестве креативного, ультрасовременного метода в маркетинге.</p>\r\n\r\n<p>Проблема брендинга в Беларуси заключается в том, что, во-первых, компании редко существуют более десяти лет, во-вторых, не каждый маркетолог с точки зрения своего экономического образования способен творчески подойти к вопросу о рекламе, продвижении, формировании образа товара. PR-службы компаний же, в свою очередь, неадекватно понимают суть брендинга.</p>\r\n\r\n<p>Главными отличиями западного процесса брендинга от белорусского являются средства, выделяемые на эти процессы, а также время, отведенное на реализацию проекта. С уверенностью можно говорить о том, что именно специфика белорусского рынка должна стать первоочередным фактором, учитывающимся при создании бренда. Бездумное, бездушное перенимание западного опыта не приведет к успеху.</p>\r\n\r\n<p>Все возможные и известные методы маркетинга, авторские разработки и креативное мышление &ndash; вот что должно стать помощником в создании бренда. Для брендинга характерно взаимодействие специалистов разного уровня и направлений, это необходимо учитывать.</p>\r\n\r\n<p>Наличие полной, четкой, хорошо разработанной концепции, которая определяет частные и общие черты программы по созданию брендинга, является необходимым условием и залогом успеха на всех этапах. Качественный брендинг значительно повысит эффективность деятельности.</p>', '3eece628af05b585635bcf5e9093e76c.jpg', 1, 1, 'Брендинг – заставь имя работать на себя!', 'Брендинг – заставь имя работать на себя!', 'Брендинг – заставь имя работать на себя!', '2016-02-07 00:10:33');

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE `pages` (
  `idItem` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `text` text,
  `visibility` int(11) DEFAULT '1',
  `mTitle` varchar(255) NOT NULL,
  `mKeywords` varchar(255) DEFAULT NULL,
  `mDescription` text,
  `addDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `system` int(11) DEFAULT '0'
) ENGINE=InnoDB AVG_ROW_LENGTH=3276 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `pages`
--

INSERT INTO `pages` (`idItem`, `title`, `alias`, `text`, `visibility`, `mTitle`, `mKeywords`, `mDescription`, `addDate`, `system`) VALUES
(10, 'Политика конфиденциальности', 'confidence', '<p>Политика конфиденциальности</p>', 1, 'Политика конфиденциальности', 'Политика конфиденциальности', 'Политика конфиденциальности', '2015-12-08 14:32:38', 1),
(11, 'О компании', 'about', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae erat quis nunc lacinia cursus sed sit amet ligula. Pellentesque dictum, mi vitae mattis dictum, eros ex aliquet lorem, lacinia euismod sem arcu id massa. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed leo ante, ullamcorper vel diam quis, finibus egestas velit. Sed efficitur dignissim bibendum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus suscipit ut mauris quis tempor. Donec dignissim neque quis turpis finibus mollis. Nunc posuere egestas dolor in fermentum. Nam feugiat, nisl non tempus tincidunt, augue ex ullamcorper quam, ac ultrices enim purus rutrum lectus. Aenean cursus ex est, quis fermentum orci viverra at. Curabitur dictum erat at lorem venenatis, ac elementum nulla congue. Donec et porttitor dolor, ac gravida libero. Aenean ac rhoncus velit. Ut felis metus, molestie quis condimentum sit amet, accumsan tincidunt odio. Etiam hendrerit mauris id orci ornare feugiat.</p>\r\n\r\n<p>Proin rhoncus ullamcorper interdum. Cras felis dolor, imperdiet non nulla quis, pharetra efficitur arcu. Vestibulum feugiat feugiat dolor nec cursus. Sed scelerisque a risus at molestie. Etiam vel pharetra ex. Suspendisse placerat nunc condimentum, sagittis enim quis, convallis neque. Aenean volutpat maximus tortor quis euismod. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Ut eleifend non felis a suscipit. Duis at auctor massa. Nulla nulla mi, commodo non bibendum nec, fringilla vitae diam. Donec ac sagittis est. Etiam auctor leo neque, et elementum odio viverra non.</p>\r\n\r\n<p>Praesent pharetra fringilla condimentum. Donec in dapibus sem, ut efficitur orci. Sed et arcu dolor. Proin aliquet sed felis porttitor gravida. Duis eget tellus ut nibh fermentum malesuada. Nam nec semper arcu. Ut neque tellus, auctor sit amet aliquet at, sodales non lectus. In vitae arcu at nisl maximus dapibus quis eget metus. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p>', 1, 'О компании', 'О компании', 'О компании', '2016-02-07 01:21:03', 1),
(12, 'Доставка и оплата', 'delivery', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae erat quis nunc lacinia cursus sed sit amet ligula. Pellentesque dictum, mi vitae mattis dictum, eros ex aliquet lorem, lacinia euismod sem arcu id massa. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed leo ante, ullamcorper vel diam quis, finibus egestas velit. Sed efficitur dignissim bibendum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus suscipit ut mauris quis tempor. Donec dignissim neque quis turpis finibus mollis. Nunc posuere egestas dolor in fermentum. Nam feugiat, nisl non tempus tincidunt, augue ex ullamcorper quam, ac ultrices enim purus rutrum lectus. Aenean cursus ex est, quis fermentum orci viverra at. Curabitur dictum erat at lorem venenatis, ac elementum nulla congue. Donec et porttitor dolor, ac gravida libero. Aenean ac rhoncus velit. Ut felis metus, molestie quis condimentum sit amet, accumsan tincidunt odio. Etiam hendrerit mauris id orci ornare feugiat.</p>\r\n\r\n<p>Proin rhoncus ullamcorper interdum. Cras felis dolor, imperdiet non nulla quis, pharetra efficitur arcu. Vestibulum feugiat feugiat dolor nec cursus. Sed scelerisque a risus at molestie. Etiam vel pharetra ex. Suspendisse placerat nunc condimentum, sagittis enim quis, convallis neque. Aenean volutpat maximus tortor quis euismod. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Ut eleifend non felis a suscipit. Duis at auctor massa. Nulla nulla mi, commodo non bibendum nec, fringilla vitae diam. Donec ac sagittis est. Etiam auctor leo neque, et elementum odio viverra non.</p>\r\n\r\n<p>Praesent pharetra fringilla condimentum. Donec in dapibus sem, ut efficitur orci. Sed et arcu dolor. Proin aliquet sed felis porttitor gravida. Duis eget tellus ut nibh fermentum malesuada. Nam nec semper arcu. Ut neque tellus, auctor sit amet aliquet at, sodales non lectus. In vitae arcu at nisl maximus dapibus quis eget metus. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p>', 1, 'Доставка и оплата', 'Доставка и оплата', 'Доставка и оплата', '2016-07-20 07:30:14', 0),
(13, 'Оплата через ЕРИП', 'erip', '<p>Оплатить услуги/товары &nbsp;ИП/Организация Вы можете через систему &rdquo;Расчет&ldquo; (ЕРИП), в любом удобном для Вас месте, в удобное для Вас время, в удобном для Вас пункте банковского обслуживания &ndash; интернет-банке, с помощью мобильного банкинга, инфокиоске, кассе банков, банкомате и т.д.</p>\r\n\r\n<p>Совершить оплату можно с использованием наличных денежных средств, электронных денег и банковских платежных карточек в пунктах банковского обслуживания &nbsp;банков, которые оказывают услуги по приему платежей, а также посредством инструментов дистанционного банковского обслуживания.</p>\r\n\r\n<p><strong>ДЛЯ ПРОВЕДЕНИЯ ПЛАТЕЖА НЕОБХОДИМО:</strong></p>\r\n\r\n<p>&nbsp;&nbsp; &nbsp;1. Выбрать последовательно пункты:<br />\r\n&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;- Система &quot;Расчет&quot; (ЕРИП)<br />\r\n&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; - Интернет-магазины/сервисы<br />\r\n&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;- S<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- shop1.narisuemvse.by<br />\r\n&nbsp;&nbsp; &nbsp;2. Для оплаты &laquo;Товара&raquo; ввести Номер заказа.<br />\r\n&nbsp;&nbsp; &nbsp;3. Ввести сумму платежа (если не указана).<br />\r\n&nbsp;&nbsp; &nbsp;4. Проверить корректность информации<br />\r\n&nbsp;&nbsp; &nbsp;5. Совершить платеж.</p>\r\n\r\n<p>Если Вы осуществляете платеж в кассе банка, пожалуйста, сообщите кассиру о необходимости проведения платежа через систему &rdquo;Расчет&ldquo; (ЕРИП).</p>', 1, 'Оплата через ЕРИП', 'Оплата через ЕРИП', 'Оплата через ЕРИП', '2016-09-12 14:21:24', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `pages_admin`
--

CREATE TABLE `pages_admin` (
  `idItem` int(11) NOT NULL,
  `idParent` int(11) DEFAULT NULL,
  `upline` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `text` text,
  `link` text,
  `icon` varchar(255) DEFAULT 'link',
  `num` int(11) DEFAULT '1',
  `access` int(11) DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `pages_admin`
--

INSERT INTO `pages_admin` (`idItem`, `idParent`, `upline`, `alias`, `name`, `title`, `text`, `link`, `icon`, `num`, `access`) VALUES
(1, 0, '0.1', 'home', 'Главная', 'Домашняя страница', NULL, 'home', 'home', 1, 2),
(3, 1, '0.1.3', 'slider', 'Слайдер', 'Слайдер', NULL, 'slider', 'clone', 1, 2),
(4, 1, '0.1.4', 'footer', 'Футер', 'Ссылки в футере', NULL, 'footer', 'link', 5, 2),
(5, 0, '0.5', '//sector', 'Обратная связь', 'Обратная связь', NULL, NULL, 'bell', 3, 2),
(7, 5, '0.5.7', 'feedback', 'Обратная связь', 'Обратная связь', NULL, 'feedback', 'envelope-o', 1, 2),
(8, 0, '0.8', '//sector', 'Контент', 'Контент', NULL, NULL, 'bars', 4, 2),
(9, 8, '0.8.9', 'news', 'Новости и акции', 'Новости и акции', NULL, 'news', 'bullhorn', 1, 2),
(10, 8, '0.8.10', 'pages', 'Страницы', 'Информационные страницы', NULL, 'pages', 'files-o', 10, 2),
(11, 0, '0.11', '//sector', 'Управление сайтом', 'Управление сайтом', NULL, NULL, 'cogs', 10, 2),
(12, 11, '0.11.12', 'users', 'Пользователи', 'Пользователи', NULL, 'users', 'users', 1, 2),
(13, 11, '0.11.13', 'pageinfo', 'Страницы', 'Управление страницами сайта', NULL, 'pageinfo', 'desktop', 2, 2),
(14, 11, '0.11.14', 'settings', 'Настройки', 'Настройки сайта', NULL, 'settings', 'cog', 3, 2),
(15, 0, '0.15', 'files', 'Менеджер файлов', 'Менеджер файлов', NULL, 'files', 'folder-open', 9, 2),
(16, 11, '0.11.16', 'panel', 'Админ-панель', 'Настройки админ-панели', NULL, 'panel', 'compass', 4, 2),
(17, 8, '0.8.17', 'articles', 'Полезная информация', 'Полезная информация', NULL, 'articles', 'info-circle', 2, 2),
(18, 5, '0.5.19', 'reviews', 'Отзывы', 'Отзывы', NULL, 'reviews', 'comment-o', 2, 2),
(19, 5, '0.5.20', 'faq', 'Вопрос-ответ', 'Вопрос-ответ', NULL, 'faq', 'comments-o', 3, 2),
(20, 0, '0.20', '//sector', 'Магазин', 'Магазин', NULL, NULL, 'shopping-cart', 4, 2),
(21, 20, '0.20.21', 'catalog', 'Каталог', 'Каталог', NULL, 'catalog', 'folder-open-o', 1, 2),
(22, 20, '0.20.22', 'mfrs', 'Производители', 'Производители', NULL, 'mfrs', 'industry', 1, 2),
(23, 0, '0.23', '//sector', 'Настройки магазина', 'Настройки магазина', NULL, NULL, 'cogs', 9, 2),
(24, 23, '0.23.24', 'unit_currency', 'Валюты', 'Валюты', NULL, 'unit_currency', 'usd', 1, 2),
(25, 23, '0.23.25', 'unit_length', 'Единицы длины', 'Единицы длины', NULL, 'unit_length', 'arrows', 2, 2),
(26, 23, '0.23.26', 'unit_weight', 'Единицы веса', 'Единицы веса', NULL, 'unit_weight', 'balance-scale', 3, 2),
(27, 23, '0.23.27', 'shop_settings', 'Настройки магазина', 'Настройки магазина', NULL, 'shop_settings', 'cogs', 10, 2),
(28, 20, '0.20.28', 'products', 'Товары', 'Товары', NULL, 'products', 'star-o', 3, 2),
(29, 20, '0.20.29', 'fields', 'Настраиваемые поля', 'Настраиваемые поля', NULL, 'fields', 'filter', 4, 2),
(30, 23, '0.23.30', 'delivery', 'Доставка', 'Доставка', NULL, 'delivery', 'truck', 5, 2),
(31, 23, '0.23.31', 'pay', 'Оплата', 'Оплата', NULL, 'pay', 'credit-card', 6, 2),
(32, 0, '0.32', '//sector', 'Заказы', 'Заказы', NULL, NULL, 'cart-arrow-down', 2, 2),
(33, 32, '0.32.33', 'orders', 'Заказы', 'Заказы', NULL, 'orders', 'cart-arrow-down', 1, 2),
(34, 32, '0.32.34', 'feedback_orders', 'Быстрые заказы', 'Быстрые заказы', NULL, 'feedback_orders', 'cart-plus', 2, 2),
(35, 32, '0.32.35', 'comments', 'Отзывы к товарам', 'Отзывы к товарам', NULL, 'comments', 'comment-o', 3, 2),
(36, 1, '0.1.36', 'banners', 'Баннеры', 'Баннеры', NULL, 'banners', 'paint-brush', 2, 2),
(37, 1, '0.1.4', 'navigation', 'Навигация', 'Навигация в шапке', NULL, 'navigation', 'sitemap', 4, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `pages_site`
--

CREATE TABLE `pages_site` (
  `idItem` int(11) NOT NULL,
  `alias` varchar(255) DEFAULT NULL COMMENT 'может быть какой угодно, не как в Pages_admin',
  `name` varchar(255) DEFAULT NULL COMMENT 'название страницы - хлебные крошки',
  `title` varchar(255) DEFAULT NULL COMMENT 'заголовок страницы',
  `brief` text,
  `text` text,
  `mTitle` varchar(255) DEFAULT NULL,
  `mKeywords` varchar(255) DEFAULT NULL,
  `mDescription` text,
  `thumb_enable` int(11) DEFAULT '0',
  `thumb_x` int(11) DEFAULT '0',
  `thumb_y` int(11) DEFAULT '0'
) ENGINE=InnoDB AVG_ROW_LENGTH=1489 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `pages_site`
--

INSERT INTO `pages_site` (`idItem`, `alias`, `name`, `title`, `brief`, `text`, `mTitle`, `mKeywords`, `mDescription`, `thumb_enable`, `thumb_x`, `thumb_y`) VALUES
(24, 'home', 'Главная', 'Интернет магазин бытовые и промышленные кондиционеры', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', '<p>На каком основании мы предлагаем кондиционеры? Все просто! Установка подобного устройства позволит Вам избежать негативного воздействия на Ваш организм загазованного воздуха с улицы, а также избавится от противного шума при открытии окна для проветривания. Купить кондиционер &ndash; еще не все, важно правильно его установить. Мы можем произвести монтаж так, что Вы практически не будете его замечать.</p>\r\n\r\n<p>Благодаря систематическому развитию технологий и путей их реализации покупать кондиционеры в Минске становится все проще. Наш плюс состоит в том, что у нас Вы купите оригинальный товар ведущих производителей климатических установок по очень приятным ценам с установкой. Нет нужды искать монтажника &ndash; все услуги заказывайте в одном месте в &quot;Телеком Маркет&quot;. Позвоните нам и убедитесь в этом! Имея широкий модельный ряд, мы практически уверены, что Вы сможете купить товар, который будет подходить под все Ваши параметры. Мы проконсультируем по любым установкам Mitsubishi, Midea, Gree, Daikin, Panasonic, Sumsung, Airwell.</p>\r\n\r\n<p>Не можете определиться с параметрами? Звоните нам &ndash; мы подскажем какие кондиционеры Вам могут подойти.</p>', 'Главная', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', 0, 0, 0),
(25, 'news', 'Новости и акции', 'Новости и акции', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', '<h2>Mauris ut risus tempus, finibus diam et, egestas ante.</h2>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus lorem diam, aliquam eget velit sit amet, molestie tempor purus. Nullam auctor sem et nulla egestas, dapibus facilisis massa porttitor. Suspendisse non ultrices arcu. Mauris ut risus tempus, finibus diam et, egestas ante. Maecenas lobortis malesuada erat ac tristique. Quisque id sollicitudin sapien. Curabitur porta ante quis arcu commodo, non tincidunt augue viverra.</p>\r\n\r\n<p>Nulla molestie, lacus quis egestas vulputate, dolor libero molestie dui, vel faucibus sem lorem non dolor. Aliquam id risus turpis. Etiam non egestas augue, eget maximus tortor. In turpis nisi, cursus non velit eu, pretium pellentesque dolor. Nam egestas porta dui et consequat. In finibus in nulla non imperdiet. Sed non massa eros. Donec a lacus massa. Praesent aliquam nulla quam, vitae vestibulum neque dapibus quis. Cras placerat rhoncus dui quis ultricies.</p>\r\n\r\n<h3>Duis ut ipsum imperdiet, euismod sapien vel, maximus ligula.</h3>\r\n\r\n<p>Nunc fringilla luctus erat, eu sollicitudin dolor tincidunt eu. Nullam eget sem eros. Curabitur non augue pellentesque, elementum purus eu, convallis orci. Donec at maximus odio. Donec mauris nibh, tempor ac metus eu, faucibus bibendum nibh. Sed dui nisl, cursus quis porta ac, feugiat eget risus. Sed felis orci, pulvinar nec iaculis a, auctor ut urna. Suspendisse volutpat malesuada risus, commodo rutrum magna gravida et.</p>\r\n\r\n<h3>Etiam ac fermentum enim, ut tempor mauris.</h3>\r\n\r\n<p>Aenean vel lectus interdum, placerat nibh non, gravida risus. Duis sed lacus nec purus tincidunt consequat pellentesque at eros. Nam convallis non risus non maximus. Praesent dignissim massa justo, et sodales lacus mattis efficitur. Fusce vel erat mauris. Suspendisse ac dictum enim. Vestibulum sed efficitur lorem. Nunc ut ornare erat. Nam gravida tincidunt lacus a pulvinar. Nulla in lacus at sem fermentum iaculis sed a dolor. Maecenas bibendum tortor risus, rhoncus consectetur nunc laoreet id. Proin varius risus ut neque semper, quis dictum metus cursus.</p>\r\n\r\n<h3>Sed dictum risus sed mi interdum ullamcorper.</h3>\r\n\r\n<p>Nullam tortor mi, aliquet in neque eget, mollis malesuada diam. Fusce mattis rhoncus magna, nec facilisis tortor pharetra vel. Vivamus convallis eget nisl ac commodo. Curabitur mi sem, sagittis id sagittis et, vestibulum a neque. Maecenas ut nulla elementum, fringilla eros sit amet, maximus elit. Duis vel turpis feugiat, ultrices dolor id, porttitor sem. Proin pulvinar quis quam non finibus. Nam felis risus, condimentum ut mi eu, vehicula pulvinar nisi. Sed dolor ligula, euismod ut nisi sit amet, ornare ultrices metus. Phasellus tortor purus, lacinia non ullamcorper auctor, faucibus et lectus. Integer id finibus orci, ac dignissim risus. Donec eget lobortis leo. Ut pellentesque, massa et laoreet aliquam, magna ligula auctor turpis, sed blandit enim diam eget libero. Nulla nisi turpis, auctor at maximus vitae, scelerisque id nulla.</p>', 'Публикации', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', 1, 320, 180),
(26, 'articles', 'Полезная информация', 'Полезная информация', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', '<h2>Mauris ut risus tempus, finibus diam et, egestas ante.</h2>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus lorem diam, aliquam eget velit sit amet, molestie tempor purus. Nullam auctor sem et nulla egestas, dapibus facilisis massa porttitor. Suspendisse non ultrices arcu. Mauris ut risus tempus, finibus diam et, egestas ante. Maecenas lobortis malesuada erat ac tristique. Quisque id sollicitudin sapien. Curabitur porta ante quis arcu commodo, non tincidunt augue viverra.</p>\r\n\r\n<p>Nulla molestie, lacus quis egestas vulputate, dolor libero molestie dui, vel faucibus sem lorem non dolor. Aliquam id risus turpis. Etiam non egestas augue, eget maximus tortor. In turpis nisi, cursus non velit eu, pretium pellentesque dolor. Nam egestas porta dui et consequat. In finibus in nulla non imperdiet. Sed non massa eros. Donec a lacus massa. Praesent aliquam nulla quam, vitae vestibulum neque dapibus quis. Cras placerat rhoncus dui quis ultricies.</p>\r\n\r\n<h3>Duis ut ipsum imperdiet, euismod sapien vel, maximus ligula.</h3>\r\n\r\n<p>Nunc fringilla luctus erat, eu sollicitudin dolor tincidunt eu. Nullam eget sem eros. Curabitur non augue pellentesque, elementum purus eu, convallis orci. Donec at maximus odio. Donec mauris nibh, tempor ac metus eu, faucibus bibendum nibh. Sed dui nisl, cursus quis porta ac, feugiat eget risus. Sed felis orci, pulvinar nec iaculis a, auctor ut urna. Suspendisse volutpat malesuada risus, commodo rutrum magna gravida et.</p>\r\n\r\n<h3>Etiam ac fermentum enim, ut tempor mauris.</h3>\r\n\r\n<p>Aenean vel lectus interdum, placerat nibh non, gravida risus. Duis sed lacus nec purus tincidunt consequat pellentesque at eros. Nam convallis non risus non maximus. Praesent dignissim massa justo, et sodales lacus mattis efficitur. Fusce vel erat mauris. Suspendisse ac dictum enim. Vestibulum sed efficitur lorem. Nunc ut ornare erat. Nam gravida tincidunt lacus a pulvinar. Nulla in lacus at sem fermentum iaculis sed a dolor. Maecenas bibendum tortor risus, rhoncus consectetur nunc laoreet id. Proin varius risus ut neque semper, quis dictum metus cursus.</p>\r\n\r\n<h3>Sed dictum risus sed mi interdum ullamcorper.</h3>\r\n\r\n<p>Nullam tortor mi, aliquet in neque eget, mollis malesuada diam. Fusce mattis rhoncus magna, nec facilisis tortor pharetra vel. Vivamus convallis eget nisl ac commodo. Curabitur mi sem, sagittis id sagittis et, vestibulum a neque. Maecenas ut nulla elementum, fringilla eros sit amet, maximus elit. Duis vel turpis feugiat, ultrices dolor id, porttitor sem. Proin pulvinar quis quam non finibus. Nam felis risus, condimentum ut mi eu, vehicula pulvinar nisi. Sed dolor ligula, euismod ut nisi sit amet, ornare ultrices metus. Phasellus tortor purus, lacinia non ullamcorper auctor, faucibus et lectus. Integer id finibus orci, ac dignissim risus. Donec eget lobortis leo. Ut pellentesque, massa et laoreet aliquam, magna ligula auctor turpis, sed blandit enim diam eget libero. Nulla nisi turpis, auctor at maximus vitae, scelerisque id nulla.</p>', 'Полезная информация', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', 1, 320, 180),
(27, 'reviews', 'Отзывы', 'Отзывы', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', '<h2>Mauris ut risus tempus, finibus diam et, egestas ante.</h2>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus lorem diam, aliquam eget velit sit amet, molestie tempor purus. Nullam auctor sem et nulla egestas, dapibus facilisis massa porttitor. Suspendisse non ultrices arcu. Mauris ut risus tempus, finibus diam et, egestas ante. Maecenas lobortis malesuada erat ac tristique. Quisque id sollicitudin sapien. Curabitur porta ante quis arcu commodo, non tincidunt augue viverra.</p>\r\n\r\n<p>Nulla molestie, lacus quis egestas vulputate, dolor libero molestie dui, vel faucibus sem lorem non dolor. Aliquam id risus turpis. Etiam non egestas augue, eget maximus tortor. In turpis nisi, cursus non velit eu, pretium pellentesque dolor. Nam egestas porta dui et consequat. In finibus in nulla non imperdiet. Sed non massa eros. Donec a lacus massa. Praesent aliquam nulla quam, vitae vestibulum neque dapibus quis. Cras placerat rhoncus dui quis ultricies.</p>\r\n\r\n<h3>Duis ut ipsum imperdiet, euismod sapien vel, maximus ligula.</h3>\r\n\r\n<p>Nunc fringilla luctus erat, eu sollicitudin dolor tincidunt eu. Nullam eget sem eros. Curabitur non augue pellentesque, elementum purus eu, convallis orci. Donec at maximus odio. Donec mauris nibh, tempor ac metus eu, faucibus bibendum nibh. Sed dui nisl, cursus quis porta ac, feugiat eget risus. Sed felis orci, pulvinar nec iaculis a, auctor ut urna. Suspendisse volutpat malesuada risus, commodo rutrum magna gravida et.</p>\r\n\r\n<h3>Etiam ac fermentum enim, ut tempor mauris.</h3>\r\n\r\n<p>Aenean vel lectus interdum, placerat nibh non, gravida risus. Duis sed lacus nec purus tincidunt consequat pellentesque at eros. Nam convallis non risus non maximus. Praesent dignissim massa justo, et sodales lacus mattis efficitur. Fusce vel erat mauris. Suspendisse ac dictum enim. Vestibulum sed efficitur lorem. Nunc ut ornare erat. Nam gravida tincidunt lacus a pulvinar. Nulla in lacus at sem fermentum iaculis sed a dolor. Maecenas bibendum tortor risus, rhoncus consectetur nunc laoreet id. Proin varius risus ut neque semper, quis dictum metus cursus.</p>\r\n\r\n<h3>Sed dictum risus sed mi interdum ullamcorper.</h3>\r\n\r\n<p>Nullam tortor mi, aliquet in neque eget, mollis malesuada diam. Fusce mattis rhoncus magna, nec facilisis tortor pharetra vel. Vivamus convallis eget nisl ac commodo. Curabitur mi sem, sagittis id sagittis et, vestibulum a neque. Maecenas ut nulla elementum, fringilla eros sit amet, maximus elit. Duis vel turpis feugiat, ultrices dolor id, porttitor sem. Proin pulvinar quis quam non finibus. Nam felis risus, condimentum ut mi eu, vehicula pulvinar nisi. Sed dolor ligula, euismod ut nisi sit amet, ornare ultrices metus. Phasellus tortor purus, lacinia non ullamcorper auctor, faucibus et lectus. Integer id finibus orci, ac dignissim risus. Donec eget lobortis leo. Ut pellentesque, massa et laoreet aliquam, magna ligula auctor turpis, sed blandit enim diam eget libero. Nulla nisi turpis, auctor at maximus vitae, scelerisque id nulla.</p>', 'Отзывы', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', 1, 150, 150),
(28, 'faq', 'Вопрос-ответ', 'Вопрос-ответ', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', '<h2>Mauris ut risus tempus, finibus diam et, egestas ante.</h2>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus lorem diam, aliquam eget velit sit amet, molestie tempor purus. Nullam auctor sem et nulla egestas, dapibus facilisis massa porttitor. Suspendisse non ultrices arcu. Mauris ut risus tempus, finibus diam et, egestas ante. Maecenas lobortis malesuada erat ac tristique. Quisque id sollicitudin sapien. Curabitur porta ante quis arcu commodo, non tincidunt augue viverra.</p>\r\n\r\n<p>Nulla molestie, lacus quis egestas vulputate, dolor libero molestie dui, vel faucibus sem lorem non dolor. Aliquam id risus turpis. Etiam non egestas augue, eget maximus tortor. In turpis nisi, cursus non velit eu, pretium pellentesque dolor. Nam egestas porta dui et consequat. In finibus in nulla non imperdiet. Sed non massa eros. Donec a lacus massa. Praesent aliquam nulla quam, vitae vestibulum neque dapibus quis. Cras placerat rhoncus dui quis ultricies.</p>\r\n\r\n<h3>Duis ut ipsum imperdiet, euismod sapien vel, maximus ligula.</h3>\r\n\r\n<p>Nunc fringilla luctus erat, eu sollicitudin dolor tincidunt eu. Nullam eget sem eros. Curabitur non augue pellentesque, elementum purus eu, convallis orci. Donec at maximus odio. Donec mauris nibh, tempor ac metus eu, faucibus bibendum nibh. Sed dui nisl, cursus quis porta ac, feugiat eget risus. Sed felis orci, pulvinar nec iaculis a, auctor ut urna. Suspendisse volutpat malesuada risus, commodo rutrum magna gravida et.</p>\r\n\r\n<h3>Etiam ac fermentum enim, ut tempor mauris.</h3>\r\n\r\n<p>Aenean vel lectus interdum, placerat nibh non, gravida risus. Duis sed lacus nec purus tincidunt consequat pellentesque at eros. Nam convallis non risus non maximus. Praesent dignissim massa justo, et sodales lacus mattis efficitur. Fusce vel erat mauris. Suspendisse ac dictum enim. Vestibulum sed efficitur lorem. Nunc ut ornare erat. Nam gravida tincidunt lacus a pulvinar. Nulla in lacus at sem fermentum iaculis sed a dolor. Maecenas bibendum tortor risus, rhoncus consectetur nunc laoreet id. Proin varius risus ut neque semper, quis dictum metus cursus.</p>\r\n\r\n<h3>Sed dictum risus sed mi interdum ullamcorper.</h3>\r\n\r\n<p>Nullam tortor mi, aliquet in neque eget, mollis malesuada diam. Fusce mattis rhoncus magna, nec facilisis tortor pharetra vel. Vivamus convallis eget nisl ac commodo. Curabitur mi sem, sagittis id sagittis et, vestibulum a neque. Maecenas ut nulla elementum, fringilla eros sit amet, maximus elit. Duis vel turpis feugiat, ultrices dolor id, porttitor sem. Proin pulvinar quis quam non finibus. Nam felis risus, condimentum ut mi eu, vehicula pulvinar nisi. Sed dolor ligula, euismod ut nisi sit amet, ornare ultrices metus. Phasellus tortor purus, lacinia non ullamcorper auctor, faucibus et lectus. Integer id finibus orci, ac dignissim risus. Donec eget lobortis leo. Ut pellentesque, massa et laoreet aliquam, magna ligula auctor turpis, sed blandit enim diam eget libero. Nulla nisi turpis, auctor at maximus vitae, scelerisque id nulla.</p>', 'Вопрос-ответ', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', 0, 0, 0),
(29, 'catalog', 'Каталог', 'Каталог', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', '<h2>Mauris ut risus tempus, finibus diam et, egestas ante.</h2>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus lorem diam, aliquam eget velit sit amet, molestie tempor purus. Nullam auctor sem et nulla egestas, dapibus facilisis massa porttitor. Suspendisse non ultrices arcu. Mauris ut risus tempus, finibus diam et, egestas ante. Maecenas lobortis malesuada erat ac tristique. Quisque id sollicitudin sapien. Curabitur porta ante quis arcu commodo, non tincidunt augue viverra.</p>\r\n\r\n<p>Nulla molestie, lacus quis egestas vulputate, dolor libero molestie dui, vel faucibus sem lorem non dolor. Aliquam id risus turpis. Etiam non egestas augue, eget maximus tortor. In turpis nisi, cursus non velit eu, pretium pellentesque dolor. Nam egestas porta dui et consequat. In finibus in nulla non imperdiet. Sed non massa eros. Donec a lacus massa. Praesent aliquam nulla quam, vitae vestibulum neque dapibus quis. Cras placerat rhoncus dui quis ultricies.</p>\r\n\r\n<h3>Duis ut ipsum imperdiet, euismod sapien vel, maximus ligula.</h3>\r\n\r\n<p>Nunc fringilla luctus erat, eu sollicitudin dolor tincidunt eu. Nullam eget sem eros. Curabitur non augue pellentesque, elementum purus eu, convallis orci. Donec at maximus odio. Donec mauris nibh, tempor ac metus eu, faucibus bibendum nibh. Sed dui nisl, cursus quis porta ac, feugiat eget risus. Sed felis orci, pulvinar nec iaculis a, auctor ut urna. Suspendisse volutpat malesuada risus, commodo rutrum magna gravida et.</p>\r\n\r\n<h3>Etiam ac fermentum enim, ut tempor mauris.</h3>\r\n\r\n<p>Aenean vel lectus interdum, placerat nibh non, gravida risus. Duis sed lacus nec purus tincidunt consequat pellentesque at eros. Nam convallis non risus non maximus. Praesent dignissim massa justo, et sodales lacus mattis efficitur. Fusce vel erat mauris. Suspendisse ac dictum enim. Vestibulum sed efficitur lorem. Nunc ut ornare erat. Nam gravida tincidunt lacus a pulvinar. Nulla in lacus at sem fermentum iaculis sed a dolor. Maecenas bibendum tortor risus, rhoncus consectetur nunc laoreet id. Proin varius risus ut neque semper, quis dictum metus cursus.</p>\r\n\r\n<h3>Sed dictum risus sed mi interdum ullamcorper.</h3>\r\n\r\n<p>Nullam tortor mi, aliquet in neque eget, mollis malesuada diam. Fusce mattis rhoncus magna, nec facilisis tortor pharetra vel. Vivamus convallis eget nisl ac commodo. Curabitur mi sem, sagittis id sagittis et, vestibulum a neque. Maecenas ut nulla elementum, fringilla eros sit amet, maximus elit. Duis vel turpis feugiat, ultrices dolor id, porttitor sem. Proin pulvinar quis quam non finibus. Nam felis risus, condimentum ut mi eu, vehicula pulvinar nisi. Sed dolor ligula, euismod ut nisi sit amet, ornare ultrices metus. Phasellus tortor purus, lacinia non ullamcorper auctor, faucibus et lectus. Integer id finibus orci, ac dignissim risus. Donec eget lobortis leo. Ut pellentesque, massa et laoreet aliquam, magna ligula auctor turpis, sed blandit enim diam eget libero. Nulla nisi turpis, auctor at maximus vitae, scelerisque id nulla.</p>', 'Каталог', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', 1, 300, 200),
(30, 'mfrs', 'Производители', 'Производители', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', '<h2>Mauris ut risus tempus, finibus diam et, egestas ante.</h2>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus lorem diam, aliquam eget velit sit amet, molestie tempor purus. Nullam auctor sem et nulla egestas, dapibus facilisis massa porttitor. Suspendisse non ultrices arcu. Mauris ut risus tempus, finibus diam et, egestas ante. Maecenas lobortis malesuada erat ac tristique. Quisque id sollicitudin sapien. Curabitur porta ante quis arcu commodo, non tincidunt augue viverra.</p>\r\n\r\n<p>Nulla molestie, lacus quis egestas vulputate, dolor libero molestie dui, vel faucibus sem lorem non dolor. Aliquam id risus turpis. Etiam non egestas augue, eget maximus tortor. In turpis nisi, cursus non velit eu, pretium pellentesque dolor. Nam egestas porta dui et consequat. In finibus in nulla non imperdiet. Sed non massa eros. Donec a lacus massa. Praesent aliquam nulla quam, vitae vestibulum neque dapibus quis. Cras placerat rhoncus dui quis ultricies.</p>\r\n\r\n<h3>Duis ut ipsum imperdiet, euismod sapien vel, maximus ligula.</h3>\r\n\r\n<p>Nunc fringilla luctus erat, eu sollicitudin dolor tincidunt eu. Nullam eget sem eros. Curabitur non augue pellentesque, elementum purus eu, convallis orci. Donec at maximus odio. Donec mauris nibh, tempor ac metus eu, faucibus bibendum nibh. Sed dui nisl, cursus quis porta ac, feugiat eget risus. Sed felis orci, pulvinar nec iaculis a, auctor ut urna. Suspendisse volutpat malesuada risus, commodo rutrum magna gravida et.</p>\r\n\r\n<h3>Etiam ac fermentum enim, ut tempor mauris.</h3>\r\n\r\n<p>Aenean vel lectus interdum, placerat nibh non, gravida risus. Duis sed lacus nec purus tincidunt consequat pellentesque at eros. Nam convallis non risus non maximus. Praesent dignissim massa justo, et sodales lacus mattis efficitur. Fusce vel erat mauris. Suspendisse ac dictum enim. Vestibulum sed efficitur lorem. Nunc ut ornare erat. Nam gravida tincidunt lacus a pulvinar. Nulla in lacus at sem fermentum iaculis sed a dolor. Maecenas bibendum tortor risus, rhoncus consectetur nunc laoreet id. Proin varius risus ut neque semper, quis dictum metus cursus.</p>\r\n\r\n<h3>Sed dictum risus sed mi interdum ullamcorper.</h3>\r\n\r\n<p>Nullam tortor mi, aliquet in neque eget, mollis malesuada diam. Fusce mattis rhoncus magna, nec facilisis tortor pharetra vel. Vivamus convallis eget nisl ac commodo. Curabitur mi sem, sagittis id sagittis et, vestibulum a neque. Maecenas ut nulla elementum, fringilla eros sit amet, maximus elit. Duis vel turpis feugiat, ultrices dolor id, porttitor sem. Proin pulvinar quis quam non finibus. Nam felis risus, condimentum ut mi eu, vehicula pulvinar nisi. Sed dolor ligula, euismod ut nisi sit amet, ornare ultrices metus. Phasellus tortor purus, lacinia non ullamcorper auctor, faucibus et lectus. Integer id finibus orci, ac dignissim risus. Donec eget lobortis leo. Ut pellentesque, massa et laoreet aliquam, magna ligula auctor turpis, sed blandit enim diam eget libero. Nulla nisi turpis, auctor at maximus vitae, scelerisque id nulla.</p>', 'Производители', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', 1, 320, 180),
(31, 'products', 'Товары', 'Товары', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', '<h2>Mauris ut risus tempus, finibus diam et, egestas ante.</h2>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus lorem diam, aliquam eget velit sit amet, molestie tempor purus. Nullam auctor sem et nulla egestas, dapibus facilisis massa porttitor. Suspendisse non ultrices arcu. Mauris ut risus tempus, finibus diam et, egestas ante. Maecenas lobortis malesuada erat ac tristique. Quisque id sollicitudin sapien. Curabitur porta ante quis arcu commodo, non tincidunt augue viverra.</p>\r\n\r\n<p>Nulla molestie, lacus quis egestas vulputate, dolor libero molestie dui, vel faucibus sem lorem non dolor. Aliquam id risus turpis. Etiam non egestas augue, eget maximus tortor. In turpis nisi, cursus non velit eu, pretium pellentesque dolor. Nam egestas porta dui et consequat. In finibus in nulla non imperdiet. Sed non massa eros. Donec a lacus massa. Praesent aliquam nulla quam, vitae vestibulum neque dapibus quis. Cras placerat rhoncus dui quis ultricies.</p>\r\n\r\n<h3>Duis ut ipsum imperdiet, euismod sapien vel, maximus ligula.</h3>\r\n\r\n<p>Nunc fringilla luctus erat, eu sollicitudin dolor tincidunt eu. Nullam eget sem eros. Curabitur non augue pellentesque, elementum purus eu, convallis orci. Donec at maximus odio. Donec mauris nibh, tempor ac metus eu, faucibus bibendum nibh. Sed dui nisl, cursus quis porta ac, feugiat eget risus. Sed felis orci, pulvinar nec iaculis a, auctor ut urna. Suspendisse volutpat malesuada risus, commodo rutrum magna gravida et.</p>\r\n\r\n<h3>Etiam ac fermentum enim, ut tempor mauris.</h3>\r\n\r\n<p>Aenean vel lectus interdum, placerat nibh non, gravida risus. Duis sed lacus nec purus tincidunt consequat pellentesque at eros. Nam convallis non risus non maximus. Praesent dignissim massa justo, et sodales lacus mattis efficitur. Fusce vel erat mauris. Suspendisse ac dictum enim. Vestibulum sed efficitur lorem. Nunc ut ornare erat. Nam gravida tincidunt lacus a pulvinar. Nulla in lacus at sem fermentum iaculis sed a dolor. Maecenas bibendum tortor risus, rhoncus consectetur nunc laoreet id. Proin varius risus ut neque semper, quis dictum metus cursus.</p>\r\n\r\n<h3>Sed dictum risus sed mi interdum ullamcorper.</h3>\r\n\r\n<p>Nullam tortor mi, aliquet in neque eget, mollis malesuada diam. Fusce mattis rhoncus magna, nec facilisis tortor pharetra vel. Vivamus convallis eget nisl ac commodo. Curabitur mi sem, sagittis id sagittis et, vestibulum a neque. Maecenas ut nulla elementum, fringilla eros sit amet, maximus elit. Duis vel turpis feugiat, ultrices dolor id, porttitor sem. Proin pulvinar quis quam non finibus. Nam felis risus, condimentum ut mi eu, vehicula pulvinar nisi. Sed dolor ligula, euismod ut nisi sit amet, ornare ultrices metus. Phasellus tortor purus, lacinia non ullamcorper auctor, faucibus et lectus. Integer id finibus orci, ac dignissim risus. Donec eget lobortis leo. Ut pellentesque, massa et laoreet aliquam, magna ligula auctor turpis, sed blandit enim diam eget libero. Nulla nisi turpis, auctor at maximus vitae, scelerisque id nulla.</p>', 'Товары', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', 1, 400, 400),
(32, 'cart', 'Корзина', 'Корзина', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', '', 'Корзина', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', 0, 0, 0),
(33, 'contacts', 'Контакты', 'Контакты', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', '', 'Контакты', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', 0, 0, 0),
(34, 'confirm', 'Подтверждение заказа', 'Подтверждение заказа', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', '', 'Подтверждение заказа', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', 0, 0, 0),
(35, 'order', 'Просмотр заказа', 'Заказ', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', '', 'Просмотр заказа', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', 0, 0, 0),
(36, 'errors', 'Ошибка 404', 'Страница не найдена', 'Возможно эта страница удалена либо допущена ошибка в адресе', '', 'Страница не найдена', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `reviews`
--

CREATE TABLE `reviews` (
  `idItem` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `link` text,
  `img` text,
  `text` text,
  `visibility` int(11) DEFAULT '0',
  `isRead` int(11) DEFAULT '0',
  `addDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AVG_ROW_LENGTH=4096 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `reviews`
--

INSERT INTO `reviews` (`idItem`, `name`, `phone`, `email`, `link`, `img`, `text`, `visibility`, `isRead`, `addDate`) VALUES
(5, 'Владислав Запорожец', NULL, NULL, 'https://vk.com/zaporozhets_vladislav', 'df4588420291b6a280303e3daeb6a0b6.jpg', 'Nulla tempor, felis ut molestie feugiat, sem ante sollicitudin leo, sed vestibulum magna nulla eget urna. Vivamus pharetra ligula ac eros venenatis porta. Aliquam egestas vel massa non lobortis. Sed sit amet suscipit lectus. Duis eget erat non quam blandit posuere sed at tellus. Vestibulum lacinia justo at quam interdum, ac ullamcorper augue suscipit. Vestibulum aliquet massa id ipsum aliquet elementum. Curabitur blandit in metus eget tempor. Pellentesque pharetra nibh nisi, quis bibendum velit tincidunt sed. Vestibulum quam diam, blandit et dolor quis, tincidunt rutrum diam. Cras pulvinar urna vel lacus dictum, eu mattis felis cursus.', 1, 1, '2016-03-09 09:50:27'),
(6, 'Руслан', NULL, NULL, 'http://narisuemvse.by', 'ce958b1c6f557ac40c79439423632e8a.jpg', 'Curabitur nibh augue, auctor vel porttitor et, lacinia sit amet metus. Integer non venenatis purus. Maecenas vehicula at ligula pulvinar fermentum. Phasellus nec finibus sem, eget mattis neque. Phasellus tortor eros, faucibus a sem vitae, egestas varius enim. Suspendisse potenti. Curabitur id feugiat justo.', 1, 1, '2016-03-09 09:53:34'),
(7, 'Владислав Запорожец', '+375 (11) 111-11-11', 'zaporozhets-vlad@rambler.ru', 'https://vk.com/zaporozhets_vladislav', NULL, 'Спасибо большое! Отличный магазин!', 0, 0, '2016-07-19 23:34:26');

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE `settings` (
  `idItem` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `img` text,
  `owner` text,
  `details` text,
  `phone` varchar(255) DEFAULT NULL,
  `phone2` varchar(255) DEFAULT NULL,
  `phoneCity` varchar(255) DEFAULT NULL,
  `phoneMask` varchar(255) DEFAULT NULL,
  `phone2Mask` varchar(255) DEFAULT NULL,
  `phoneCityMask` varchar(255) DEFAULT NULL,
  `adres` text,
  `map` text,
  `email` varchar(255) DEFAULT NULL,
  `email_sender` varchar(255) DEFAULT NULL,
  `skype` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `time_short` varchar(255) DEFAULT NULL,
  `mTitle` varchar(255) DEFAULT NULL,
  `mKeywords` text,
  `mDescription` text,
  `enable` int(11) DEFAULT '1',
  `capTitle` varchar(255) DEFAULT NULL,
  `capDescr` text,
  `currency` int(11) DEFAULT NULL,
  `length` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `reviews` int(11) DEFAULT NULL,
  `count_front` int(11) DEFAULT NULL,
  `count_admin` int(11) DEFAULT NULL,
  `shop` int(11) DEFAULT NULL
) ENGINE=InnoDB AVG_ROW_LENGTH=16384 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`idItem`, `title`, `descr`, `img`, `owner`, `details`, `phone`, `phone2`, `phoneCity`, `phoneMask`, `phone2Mask`, `phoneCityMask`, `adres`, `map`, `email`, `email_sender`, `skype`, `time`, `time_short`, `mTitle`, `mKeywords`, `mDescription`, `enable`, `capTitle`, `capDescr`, `currency`, `length`, `weight`, `reviews`, `count_front`, `count_admin`, `shop`) VALUES
(2, 'General', 'климатическая техника | вентиляционное оборудование', 'logo.png', 'ИП Иванов Иван Иванович (ООО “Радость”)', '220020, г. Новополоцк, ул. Юбилейная, 2а-207. \r\nРежим работы: ПН-ВС с 08.00 - 21.00\r\nСвидетельство №123456789 выдано 19.11.2013 Минским горисполкомом\r\nЗарегистрирован в Торговом реестре РБ №123456 от 30.01.2013 г.', '330000000', '290000000', '0214000000', '+375 (??) ???-??-??', '+375 (??) ???-??-??', '8 (????) ??-??-??', 'ул. Юбилейная, 2-А, офис 207', '&lt;iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2257.940191571565!2d28.646495916095194!3d55.53341101635838!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x46c485470fe797a1:0xa7008b17bd5f2a6b!2z0K7QsdC40LvQtdC50L3QsNGPINGD0LsuIDLQsCwg0J3QvtCy0L7Qv9C-0LvQvtGG0Lo!5e0!3m2!1sru!2sby!4v1468916277503\" width=\"100%\" height=\"300\" frameborder=\"0\" style=\"border:0\" allowfullscreen&gt;&lt;/iframe&gt;', 'narisuemvse.testmail@yandex.ru', 'narisuemvse.testmail@yandex.ru', 'skype_login', 'ежедневно с 08.00 до 20.00', 'Пн-Вс: 08.00 - 21.00', 'Климатическая техника, вентиляционное оборудование General', 'Климатическая техника, вентиляционное оборудование General', 'Климатическая техника, вентиляционное оборудование General', 1, 'Сайт временно закрыт', 'Приносим свои извинения и гарантируем в скором времени наладить работу', 5, 1, 1, 1, 9, 10, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `shop_catalog`
--

CREATE TABLE `shop_catalog` (
  `idItem` int(11) NOT NULL,
  `idParent` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `brief` varchar(255) DEFAULT NULL,
  `text` text,
  `img` text,
  `num` int(11) DEFAULT '1',
  `visibility` int(11) DEFAULT '1',
  `tmenu` int(11) DEFAULT '0',
  `tmenu_num` int(11) DEFAULT '1',
  `home` int(11) DEFAULT '0',
  `home_num` int(11) DEFAULT '1',
  `mTitle` varchar(255) DEFAULT NULL,
  `mKeywords` varchar(255) DEFAULT NULL,
  `mDescription` text,
  `addDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fields` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `shop_catalog`
--

INSERT INTO `shop_catalog` (`idItem`, `idParent`, `title`, `alias`, `brief`, `text`, `img`, `num`, `visibility`, `tmenu`, `tmenu_num`, `home`, `home_num`, `mTitle`, `mKeywords`, `mDescription`, `addDate`, `fields`) VALUES
(1, 0, 'Автомобили', 'auto', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eget libero eu urna blandit rutrum eu in massa. Etiam in neque dignissim, mollis lectus vel, posuere purus.', '', 'a01693d7d6acd6faf541343ed0d9ef3c.jpg', 10, 1, 1, 10, 1, 10, 'Автомобили', '', '', '2016-06-16 08:13:03', '{\"1\":\"1\",\"6\":\"6\",\"7\":\"7\",\"8\":\"8\"}'),
(3, 0, 'Бытовая техника', 'bytovaya-tehnika', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eget libero eu urna blandit rutrum eu in massa. Etiam in neque dignissim, mollis lectus vel, posuere purus.', '', '2e1584dbc32fbcb18a69f8e603cbf7bb.jpg', 9, 1, 0, 1, 1, 1, 'Бытовая техника', '', '', '2016-06-16 08:13:06', NULL),
(4, 0, 'Товары для дома', 'home', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eget libero eu urna blandit rutrum eu in massa. Etiam in neque dignissim, mollis lectus vel, posuere purus.', '', '14476beaa7d6ed7f94a8011e15f0ded4.jpg', 8, 1, 0, 1, 1, 1, 'Товары для дома', '', '', '2016-06-16 08:13:09', NULL),
(5, 1, 'Audi', 'audi', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eget libero eu urna blandit rutrum eu in massa. Etiam in neque dignissim, mollis lectus vel, posuere purus.', '', 'bd674a315ec987cadfe26d9385ce5675.jpg', 10, 1, 1, 1, 1, 1, 'Audi', '', '', '2016-06-16 09:05:04', NULL),
(6, 1, 'BMW', 'bmw', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eget libero eu urna blandit rutrum eu in massa. Etiam in neque dignissim, mollis lectus vel, posuere purus.', '', '5c7cad222ff36138a90b94c3c131bee5.jpg', 9, 1, 1, 1, 1, 1, 'BMW', '', '', '2016-06-16 09:05:07', NULL),
(7, 1, 'Volkswagen', 'vw', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eget libero eu urna blandit rutrum eu in massa. Etiam in neque dignissim, mollis lectus vel, posuere purus.', '', 'c7f6ad73400f74a6cb665a72f68ca71a.jpg', 8, 1, 1, 1, 1, 1, 'Volkswagen', '', '', '2016-06-16 09:05:14', NULL),
(8, 5, 'A-series', 'a-series', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eget libero eu urna blandit rutrum eu in massa. Etiam in neque dignissim, mollis lectus vel, posuere purus.', NULL, NULL, 10, 1, 0, 1, 0, 1, 'A-series', NULL, NULL, '2016-06-16 09:27:56', NULL),
(9, 5, 'Q-series', 'q-series', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eget libero eu urna blandit rutrum eu in massa. Etiam in neque dignissim, mollis lectus vel, posuere purus.', NULL, NULL, 9, 1, 0, 1, 0, 1, 'Q-series', NULL, NULL, '2016-06-16 09:27:58', NULL),
(10, 8, 'A4', 'a4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eget libero eu urna blandit rutrum eu in massa. Etiam in neque dignissim, mollis lectus vel, posuere purus.', NULL, NULL, 10, 1, 0, 1, 0, 1, 'A4', NULL, NULL, '2016-06-16 09:28:02', NULL),
(11, 8, 'A6', 'a6', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eget libero eu urna blandit rutrum eu in massa. Etiam in neque dignissim, mollis lectus vel, posuere purus.', NULL, NULL, 9, 1, 0, 1, 0, 1, 'A6', NULL, NULL, '2016-06-16 12:39:44', NULL),
(12, 5, 'RS-series', 'rs-series', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eget libero eu urna blandit rutrum eu in massa. Etiam in neque dignissim, mollis lectus vel, posuere purus.', NULL, NULL, 8, 1, 0, 1, 0, 1, 'RS-series', NULL, NULL, '2016-06-16 13:48:48', NULL),
(13, 6, '3-series', '3-series', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eget libero eu urna blandit rutrum eu in massa. Etiam in neque dignissim, mollis lectus vel, posuere purus.', '', NULL, 1, 1, 0, 1, 0, 1, '3-series', '', '', '2016-06-16 15:02:25', NULL),
(14, 6, '5-series', '5-series', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eget libero eu urna blandit rutrum eu in massa. Etiam in neque dignissim, mollis lectus vel, posuere purus.', '', NULL, 1, 1, 0, 1, 0, 1, '5-series', '', '', '2016-06-16 15:02:48', NULL),
(15, 7, 'Passat', 'passat', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eget libero eu urna blandit rutrum eu in massa. Etiam in neque dignissim, mollis lectus vel, posuere purus.', '', NULL, 1, 1, 0, 1, 0, 1, 'Passat', '', '', '2016-07-13 10:53:42', NULL),
(16, 7, 'Golf', 'golf', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eget libero eu urna blandit rutrum eu in massa. Etiam in neque dignissim, mollis lectus vel, posuere purus.', '', NULL, 1, 1, 0, 1, 0, 1, 'Golf', '', '', '2016-07-13 10:54:00', NULL),
(17, 7, 'Polo', 'polo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eget libero eu urna blandit rutrum eu in massa. Etiam in neque dignissim, mollis lectus vel, posuere purus.', '', NULL, 1, 1, 0, 1, 0, 1, 'Polo', '', '', '2016-07-13 10:54:15', NULL),
(18, 7, 'Beetle', 'beetle', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eget libero eu urna blandit rutrum eu in massa. Etiam in neque dignissim, mollis lectus vel, posuere purus.', '', NULL, 1, 1, 0, 1, 0, 1, 'Beetle', '', '', '2016-07-13 10:55:20', NULL),
(19, 7, 'Amarok', 'amarok', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eget libero eu urna blandit rutrum eu in massa. Etiam in neque dignissim, mollis lectus vel, posuere purus.', '', NULL, 1, 1, 0, 1, 0, 1, 'Amarok', '', '', '2016-07-13 10:56:07', NULL),
(20, 7, 'Touareg', 'touareg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eget libero eu urna blandit rutrum eu in massa. Etiam in neque dignissim, mollis lectus vel, posuere purus.', '', NULL, 1, 1, 0, 1, 0, 1, 'Touareg', '', '', '2016-07-13 10:56:36', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `shop_catalog_products`
--

CREATE TABLE `shop_catalog_products` (
  `idItem` int(11) NOT NULL,
  `idParent` int(11) DEFAULT NULL,
  `idProduct` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `shop_catalog_products`
--

INSERT INTO `shop_catalog_products` (`idItem`, `idParent`, `idProduct`) VALUES
(59, 1, 7),
(60, 5, 7),
(61, 8, 7),
(62, 1, 5),
(63, 5, 5),
(64, 8, 5),
(65, 1, 6),
(66, 5, 6),
(67, 8, 6),
(68, 11, 6),
(69, 1, 3),
(70, 5, 3),
(71, 9, 3),
(72, 1, 4),
(73, 5, 4),
(74, 9, 4),
(75, 1, 1),
(76, 6, 1),
(77, 13, 1),
(78, 1, 8),
(79, 6, 8),
(80, 14, 8),
(81, 1, 2),
(82, 6, 2),
(83, 13, 2),
(84, 1, 11),
(85, 7, 11),
(86, 19, 11),
(87, 1, 10),
(88, 7, 10),
(89, 16, 10),
(90, 1, 12),
(91, 7, 12),
(92, 18, 12),
(93, 1, 9),
(94, 7, 9),
(95, 15, 9),
(96, 1, 16),
(97, 6, 16),
(98, 1, 17),
(99, 6, 17),
(100, 1, 18),
(101, 5, 18),
(102, 12, 18);

-- --------------------------------------------------------

--
-- Структура таблицы `shop_delivery`
--

CREATE TABLE `shop_delivery` (
  `idItem` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `price` decimal(19,2) DEFAULT NULL,
  `adres` int(11) DEFAULT '1',
  `visibility` int(11) DEFAULT '1',
  `num` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `shop_delivery`
--

INSERT INTO `shop_delivery` (`idItem`, `title`, `price`, `adres`, `visibility`, `num`) VALUES
(1, 'Самовывоз', '0.00', 0, 1, 10),
(2, 'Курьером по Минску', '0.00', 0, 1, 9),
(3, 'Наложенным платежом', '4.50', 1, 1, 8),
(4, 'Службой доставки по РБ', '15.00', 1, 1, 7);

-- --------------------------------------------------------

--
-- Структура таблицы `shop_fields`
--

CREATE TABLE `shop_fields` (
  `idItem` int(11) NOT NULL,
  `idParent` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `num` int(11) DEFAULT '1',
  `filter` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `shop_fields`
--

INSERT INTO `shop_fields` (`idItem`, `idParent`, `title`, `type`, `num`, `filter`) VALUES
(1, 1, 'Страна', 'text', 10, 0),
(6, 1, 'Количество дверей', 'number', 7, 0),
(7, 1, 'Модификация', 'select', 6, 0),
(8, 1, 'Безопасность', 'checkbox', 5, 0),
(9, 2, 'Модификации', 'text', 10, 0),
(10, 2, 'Объём двигателя, см3', 'number', 9, 0),
(11, 2, 'Мощность, кВт (л.с.)/об', 'number', 8, 0),
(12, 2, 'Цилиндры', 'text', 7, 0),
(13, 2, 'Крутящий момент, Нм/(об/мин)', 'text', 6, 0),
(14, 2, 'Тип топливной системы', 'text', 5, 0),
(15, 2, 'Тип топлива', 'text', 4, 0),
(16, 4, 'Тип передних тормозов', 'text', 10, 0),
(17, 4, 'Тип задних тормозов', 'text', 9, 0),
(18, 4, 'Усилитель руля', 'text', 8, 0),
(19, 3, 'Тип привода', 'text', 10, 0),
(20, 3, 'Тип трансмиссии (базовая)', 'text', 9, 0),
(21, 3, 'Тип трансмиссии (опционально)', 'text', 8, 0),
(22, 5, 'В городе, л/100 км', 'number', 10, 0),
(23, 5, 'По трассе, л/100 км', 'number', 9, 0),
(24, 5, 'Средний расход, л/100 км', 'number', 8, 0),
(25, 5, 'Выброс СО2, г/км', 'number', 7, 0),
(26, 5, 'Тип топлива', 'text', 6, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `shop_fields_groups`
--

CREATE TABLE `shop_fields_groups` (
  `idItem` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `num` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `shop_fields_groups`
--

INSERT INTO `shop_fields_groups` (`idItem`, `title`, `num`) VALUES
(1, 'Общая информация', 10),
(2, 'Двигатель', 9),
(3, 'Привод и трансмиссия', 8),
(4, 'Тормозная система и усилитель руля', 7),
(5, 'Расход топлива', 6);

-- --------------------------------------------------------

--
-- Структура таблицы `shop_fields_products`
--

CREATE TABLE `shop_fields_products` (
  `idItem` int(11) NOT NULL,
  `idParent` int(11) DEFAULT NULL,
  `idField` int(11) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `shop_fields_products`
--

INSERT INTO `shop_fields_products` (`idItem`, `idParent`, `idField`, `value`) VALUES
(2, 2, 19, ''),
(3, 2, 20, ''),
(4, 2, 21, ''),
(5, 2, 1, 'Германия'),
(6, 2, 6, '10'),
(7, 2, 7, '7'),
(8, 2, 8, '{\"10\":\"10\",\"11\":\"11\"}'),
(10, 2, 11, ''),
(11, 2, 12, ''),
(12, 2, 13, ''),
(13, 2, 14, ''),
(14, 2, 15, ''),
(15, 2, 16, ''),
(16, 2, 17, ''),
(17, 2, 18, ''),
(23, 2, 10, '2.0'),
(24, 1, 1, 'Германия'),
(25, 1, 6, '100'),
(26, 1, 7, '7'),
(27, 1, 8, '{\"9\":\"9\",\"10\":\"10\",\"12\":\"12\"}'),
(28, 8, 1, 'Германия'),
(29, 8, 6, '2'),
(30, 8, 7, '7'),
(31, 8, 8, '{\"9\":\"9\",\"10\":\"10\",\"11\":\"11\",\"12\":\"12\",\"13\":\"13\"}');

-- --------------------------------------------------------

--
-- Структура таблицы `shop_fields_values`
--

CREATE TABLE `shop_fields_values` (
  `idItem` int(11) NOT NULL,
  `idParent` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `shop_fields_values`
--

INSERT INTO `shop_fields_values` (`idItem`, `idParent`, `title`) VALUES
(1, 7, '1.6 AT'),
(2, 7, '1.6 MT'),
(5, 7, '1.8 AT'),
(6, 7, '1.8 MT'),
(7, 7, '2.0 AT'),
(8, 7, '2.0 MT'),
(9, 8, 'Антиблокировочная система (ABS)'),
(10, 8, 'Система курсовой устойчивости (ESP)'),
(11, 8, 'Подушки безопасности (Air-bag): фронтальные'),
(12, 8, 'Датчик дождя'),
(13, 8, 'Дополнительные стоп-сигнал');

-- --------------------------------------------------------

--
-- Структура таблицы `shop_mfrs`
--

CREATE TABLE `shop_mfrs` (
  `idItem` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `brief` varchar(255) DEFAULT NULL,
  `text` text,
  `img` text,
  `num` int(11) DEFAULT '1',
  `visibility` int(11) DEFAULT '1',
  `mTitle` varchar(255) NOT NULL,
  `mKeywords` varchar(255) DEFAULT NULL,
  `mDescription` text,
  `addDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `slider` int(11) DEFAULT '0',
  `slider_num` int(11) DEFAULT '1'
) ENGINE=InnoDB AVG_ROW_LENGTH=3276 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `shop_mfrs`
--

INSERT INTO `shop_mfrs` (`idItem`, `title`, `alias`, `brief`, `text`, `img`, `num`, `visibility`, `mTitle`, `mKeywords`, `mDescription`, `addDate`, `slider`, `slider_num`) VALUES
(20, 'Samsung', 'samsung', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eget libero eu urna blandit rutrum eu in massa. Etiam in neque dignissim, mollis lectus vel, posuere purus.', '<h2>Mauris ut risus tempus, finibus diam et, egestas ante.</h2>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus lorem diam, aliquam eget velit sit amet, molestie tempor purus. Nullam auctor sem et nulla egestas, dapibus facilisis massa porttitor. Suspendisse non ultrices arcu. Mauris ut risus tempus, finibus diam et, egestas ante. Maecenas lobortis malesuada erat ac tristique. Quisque id sollicitudin sapien. Curabitur porta ante quis arcu commodo, non tincidunt augue viverra.</p>\r\n\r\n<p>Nulla molestie, lacus quis egestas vulputate, dolor libero molestie dui, vel faucibus sem lorem non dolor. Aliquam id risus turpis. Etiam non egestas augue, eget maximus tortor. In turpis nisi, cursus non velit eu, pretium pellentesque dolor. Nam egestas porta dui et consequat. In finibus in nulla non imperdiet. Sed non massa eros. Donec a lacus massa. Praesent aliquam nulla quam, vitae vestibulum neque dapibus quis. Cras placerat rhoncus dui quis ultricies.</p>\r\n\r\n<h3>Duis ut ipsum imperdiet, euismod sapien vel, maximus ligula.</h3>\r\n\r\n<p>Nunc fringilla luctus erat, eu sollicitudin dolor tincidunt eu. Nullam eget sem eros. Curabitur non augue pellentesque, elementum purus eu, convallis orci. Donec at maximus odio. Donec mauris nibh, tempor ac metus eu, faucibus bibendum nibh. Sed dui nisl, cursus quis porta ac, feugiat eget risus. Sed felis orci, pulvinar nec iaculis a, auctor ut urna. Suspendisse volutpat malesuada risus, commodo rutrum magna gravida et.</p>\r\n\r\n<h3>Etiam ac fermentum enim, ut tempor mauris.</h3>\r\n\r\n<p>Aenean vel lectus interdum, placerat nibh non, gravida risus. Duis sed lacus nec purus tincidunt consequat pellentesque at eros. Nam convallis non risus non maximus. Praesent dignissim massa justo, et sodales lacus mattis efficitur. Fusce vel erat mauris. Suspendisse ac dictum enim. Vestibulum sed efficitur lorem. Nunc ut ornare erat. Nam gravida tincidunt lacus a pulvinar. Nulla in lacus at sem fermentum iaculis sed a dolor. Maecenas bibendum tortor risus, rhoncus consectetur nunc laoreet id. Proin varius risus ut neque semper, quis dictum metus cursus.</p>\r\n\r\n<h3>Sed dictum risus sed mi interdum ullamcorper.</h3>\r\n\r\n<p>Nullam tortor mi, aliquet in neque eget, mollis malesuada diam. Fusce mattis rhoncus magna, nec facilisis tortor pharetra vel. Vivamus convallis eget nisl ac commodo. Curabitur mi sem, sagittis id sagittis et, vestibulum a neque. Maecenas ut nulla elementum, fringilla eros sit amet, maximus elit. Duis vel turpis feugiat, ultrices dolor id, porttitor sem. Proin pulvinar quis quam non finibus. Nam felis risus, condimentum ut mi eu, vehicula pulvinar nisi. Sed dolor ligula, euismod ut nisi sit amet, ornare ultrices metus. Phasellus tortor purus, lacinia non ullamcorper auctor, faucibus et lectus. Integer id finibus orci, ac dignissim risus. Donec eget lobortis leo. Ut pellentesque, massa et laoreet aliquam, magna ligula auctor turpis, sed blandit enim diam eget libero. Nulla nisi turpis, auctor at maximus vitae, scelerisque id nulla.</p>', '03b38da1e991f2de6abba5e05c187279.jpg', 1, 1, 'Samsung', '', '', '2016-06-17 09:13:06', 1, 1),
(21, 'Audi', 'audi', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eget libero eu urna blandit rutrum eu in massa. Etiam in neque dignissim, mollis lectus vel, posuere purus.', '<p>AUDI AG &mdash; немецкая автомобилестроительная компания в составе концерна Volkswagen Group, специализирующаяся на выпуске автомобилей под маркой Audi. Штаб-квартира расположена в Ингольштадте (Германия). Председатель совета директоров &mdash; Маттиас Мюллер (Matthias M&uuml;ller). Объём производства в 2015 г. составил около 1 830 334 автомобилей. В 2012 г. немецкие специалисты по автомобилям сделали рейтинг лучших подержанных авто. Авто марки Audi признали лучшей среди подержанных авто.</p>\r\n\r\n<h2>Маркетинг</h2>\r\n\r\n<p>В 2009 г. компания Audi стала титульным спонсором Кубка чемпионов FIS по горнолыжному спорту, проходящему в Москве.<br />\r\nВ 2011 г. компания Audi стала спонсором футбольного клуба Зенит (Санкт-Петербург),&nbsp;а до 2008 г. являлись спонсором футбольного клуба Бавария (Мюнхен).[9]</p>\r\n\r\n<h2>Конкуренция</h2>\r\n\r\n<p>Всем известно, что главными конкурентами Audi на автомобильном рынке являются компании Mercedes-Benz и BMW, так называемая &quot;Немецкая Тройка&quot;. Многие думают, что рекламная война началась с плаката BMW в 2006 году, где компания BMW &laquo;мило&raquo; поздравляли Audi с победой в конкурсе &laquo;Машина года&raquo;-2006 в Южной Африке. Но нет, все началось еще в далеких 80-х годах, когда компания Audi выпустили рекламный ролик, где Audi 200 накручивает восьмерки вокруг Mercedes-Benz E-Klasse (W124) и BMW 5-серии (E28). Буквально через год компания BMW выпустила ответный ролик, продемонстрировав свою новую модель BMW 5-серии (E34). В рекламном ролике BMW присутствует три автомобиля, все автомобили накрыты тремя полотнами. Первый автомобиль оказался BMW 5-серии, а остальные два автомобиля резко растворились и полотна, которыми они были накрыты упали на землю, это был намек компаниям Audi и Mercedes-Benz. Компания Mercedes-Benz решила проигнорировать рекламы Audi и BMW, не отвечая им по сей день ничего. Рекламная война Audi и BMW продолжается до сих пор. Не так давно в рекламную войну вступил Lexus.</p>', '390928f86e8663ffe373005f16a9619d.jpg', 1, 1, 'Audi', '', '', '2016-06-17 09:16:36', 1, 1),
(22, 'Apple', 'apple', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eget libero eu urna blandit rutrum eu in massa. Etiam in neque dignissim, mollis lectus vel, posuere purus.', '<h2>Mauris ut risus tempus, finibus diam et, egestas ante.</h2>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus lorem diam, aliquam eget velit sit amet, molestie tempor purus. Nullam auctor sem et nulla egestas, dapibus facilisis massa porttitor. Suspendisse non ultrices arcu. Mauris ut risus tempus, finibus diam et, egestas ante. Maecenas lobortis malesuada erat ac tristique. Quisque id sollicitudin sapien. Curabitur porta ante quis arcu commodo, non tincidunt augue viverra.</p>\r\n\r\n<p>Nulla molestie, lacus quis egestas vulputate, dolor libero molestie dui, vel faucibus sem lorem non dolor. Aliquam id risus turpis. Etiam non egestas augue, eget maximus tortor. In turpis nisi, cursus non velit eu, pretium pellentesque dolor. Nam egestas porta dui et consequat. In finibus in nulla non imperdiet. Sed non massa eros. Donec a lacus massa. Praesent aliquam nulla quam, vitae vestibulum neque dapibus quis. Cras placerat rhoncus dui quis ultricies.</p>\r\n\r\n<h3>Duis ut ipsum imperdiet, euismod sapien vel, maximus ligula.</h3>\r\n\r\n<p>Nunc fringilla luctus erat, eu sollicitudin dolor tincidunt eu. Nullam eget sem eros. Curabitur non augue pellentesque, elementum purus eu, convallis orci. Donec at maximus odio. Donec mauris nibh, tempor ac metus eu, faucibus bibendum nibh. Sed dui nisl, cursus quis porta ac, feugiat eget risus. Sed felis orci, pulvinar nec iaculis a, auctor ut urna. Suspendisse volutpat malesuada risus, commodo rutrum magna gravida et.</p>\r\n\r\n<h3>Etiam ac fermentum enim, ut tempor mauris.</h3>\r\n\r\n<p>Aenean vel lectus interdum, placerat nibh non, gravida risus. Duis sed lacus nec purus tincidunt consequat pellentesque at eros. Nam convallis non risus non maximus. Praesent dignissim massa justo, et sodales lacus mattis efficitur. Fusce vel erat mauris. Suspendisse ac dictum enim. Vestibulum sed efficitur lorem. Nunc ut ornare erat. Nam gravida tincidunt lacus a pulvinar. Nulla in lacus at sem fermentum iaculis sed a dolor. Maecenas bibendum tortor risus, rhoncus consectetur nunc laoreet id. Proin varius risus ut neque semper, quis dictum metus cursus.</p>\r\n\r\n<h3>Sed dictum risus sed mi interdum ullamcorper.</h3>\r\n\r\n<p>Nullam tortor mi, aliquet in neque eget, mollis malesuada diam. Fusce mattis rhoncus magna, nec facilisis tortor pharetra vel. Vivamus convallis eget nisl ac commodo. Curabitur mi sem, sagittis id sagittis et, vestibulum a neque. Maecenas ut nulla elementum, fringilla eros sit amet, maximus elit. Duis vel turpis feugiat, ultrices dolor id, porttitor sem. Proin pulvinar quis quam non finibus. Nam felis risus, condimentum ut mi eu, vehicula pulvinar nisi. Sed dolor ligula, euismod ut nisi sit amet, ornare ultrices metus. Phasellus tortor purus, lacinia non ullamcorper auctor, faucibus et lectus. Integer id finibus orci, ac dignissim risus. Donec eget lobortis leo. Ut pellentesque, massa et laoreet aliquam, magna ligula auctor turpis, sed blandit enim diam eget libero. Nulla nisi turpis, auctor at maximus vitae, scelerisque id nulla.</p>', '6c5f266f770ba4d09edc523bdaba22ae.jpg', 1, 1, 'Apple', '', '', '2016-06-17 09:20:22', 1, 1),
(23, 'BMW', 'bmw', 'Немецкий производитель автомобилей, мотоциклов, двигателей, а также велосипедов. Девиз компании — «Freude am Fahren», с нем. — «С удовольствием за рулем».', '<h2>Mauris ut risus tempus, finibus diam et, egestas ante.</h2>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus lorem diam, aliquam eget velit sit amet, molestie tempor purus. Nullam auctor sem et nulla egestas, dapibus facilisis massa porttitor. Suspendisse non ultrices arcu. Mauris ut risus tempus, finibus diam et, egestas ante. Maecenas lobortis malesuada erat ac tristique. Quisque id sollicitudin sapien. Curabitur porta ante quis arcu commodo, non tincidunt augue viverra.</p>\r\n\r\n<p>Nulla molestie, lacus quis egestas vulputate, dolor libero molestie dui, vel faucibus sem lorem non dolor. Aliquam id risus turpis. Etiam non egestas augue, eget maximus tortor. In turpis nisi, cursus non velit eu, pretium pellentesque dolor. Nam egestas porta dui et consequat. In finibus in nulla non imperdiet. Sed non massa eros. Donec a lacus massa. Praesent aliquam nulla quam, vitae vestibulum neque dapibus quis. Cras placerat rhoncus dui quis ultricies.</p>\r\n\r\n<h3>Duis ut ipsum imperdiet, euismod sapien vel, maximus ligula.</h3>\r\n\r\n<p>Nunc fringilla luctus erat, eu sollicitudin dolor tincidunt eu. Nullam eget sem eros. Curabitur non augue pellentesque, elementum purus eu, convallis orci. Donec at maximus odio. Donec mauris nibh, tempor ac metus eu, faucibus bibendum nibh. Sed dui nisl, cursus quis porta ac, feugiat eget risus. Sed felis orci, pulvinar nec iaculis a, auctor ut urna. Suspendisse volutpat malesuada risus, commodo rutrum magna gravida et.</p>\r\n\r\n<h3>Etiam ac fermentum enim, ut tempor mauris.</h3>\r\n\r\n<p>Aenean vel lectus interdum, placerat nibh non, gravida risus. Duis sed lacus nec purus tincidunt consequat pellentesque at eros. Nam convallis non risus non maximus. Praesent dignissim massa justo, et sodales lacus mattis efficitur. Fusce vel erat mauris. Suspendisse ac dictum enim. Vestibulum sed efficitur lorem. Nunc ut ornare erat. Nam gravida tincidunt lacus a pulvinar. Nulla in lacus at sem fermentum iaculis sed a dolor. Maecenas bibendum tortor risus, rhoncus consectetur nunc laoreet id. Proin varius risus ut neque semper, quis dictum metus cursus.</p>\r\n\r\n<h3>Sed dictum risus sed mi interdum ullamcorper.</h3>\r\n\r\n<p>Nullam tortor mi, aliquet in neque eget, mollis malesuada diam. Fusce mattis rhoncus magna, nec facilisis tortor pharetra vel. Vivamus convallis eget nisl ac commodo. Curabitur mi sem, sagittis id sagittis et, vestibulum a neque. Maecenas ut nulla elementum, fringilla eros sit amet, maximus elit. Duis vel turpis feugiat, ultrices dolor id, porttitor sem. Proin pulvinar quis quam non finibus. Nam felis risus, condimentum ut mi eu, vehicula pulvinar nisi. Sed dolor ligula, euismod ut nisi sit amet, ornare ultrices metus. Phasellus tortor purus, lacinia non ullamcorper auctor, faucibus et lectus. Integer id finibus orci, ac dignissim risus. Donec eget lobortis leo. Ut pellentesque, massa et laoreet aliquam, magna ligula auctor turpis, sed blandit enim diam eget libero. Nulla nisi turpis, auctor at maximus vitae, scelerisque id nulla.</p>', '1c704646b6ca06ba4ee85d8f7a88ca17.jpg', 1, 1, 'BMW', '', '', '2016-06-21 14:00:50', 1, 1),
(24, 'Mitsubishi Electric', 'mitsubishi-electric', 'Японская компания по производству и продаже широкого спектра электрического и электротехнического оборудования', '<h2>Mauris ut risus tempus, finibus diam et, egestas ante.</h2>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus lorem diam, aliquam eget velit sit amet, molestie tempor purus. Nullam auctor sem et nulla egestas, dapibus facilisis massa porttitor. Suspendisse non ultrices arcu. Mauris ut risus tempus, finibus diam et, egestas ante. Maecenas lobortis malesuada erat ac tristique. Quisque id sollicitudin sapien. Curabitur porta ante quis arcu commodo, non tincidunt augue viverra.</p>\r\n\r\n<p>Nulla molestie, lacus quis egestas vulputate, dolor libero molestie dui, vel faucibus sem lorem non dolor. Aliquam id risus turpis. Etiam non egestas augue, eget maximus tortor. In turpis nisi, cursus non velit eu, pretium pellentesque dolor. Nam egestas porta dui et consequat. In finibus in nulla non imperdiet. Sed non massa eros. Donec a lacus massa. Praesent aliquam nulla quam, vitae vestibulum neque dapibus quis. Cras placerat rhoncus dui quis ultricies.</p>\r\n\r\n<h3>Duis ut ipsum imperdiet, euismod sapien vel, maximus ligula.</h3>\r\n\r\n<p>Nunc fringilla luctus erat, eu sollicitudin dolor tincidunt eu. Nullam eget sem eros. Curabitur non augue pellentesque, elementum purus eu, convallis orci. Donec at maximus odio. Donec mauris nibh, tempor ac metus eu, faucibus bibendum nibh. Sed dui nisl, cursus quis porta ac, feugiat eget risus. Sed felis orci, pulvinar nec iaculis a, auctor ut urna. Suspendisse volutpat malesuada risus, commodo rutrum magna gravida et.</p>\r\n\r\n<h3>Etiam ac fermentum enim, ut tempor mauris.</h3>\r\n\r\n<p>Aenean vel lectus interdum, placerat nibh non, gravida risus. Duis sed lacus nec purus tincidunt consequat pellentesque at eros. Nam convallis non risus non maximus. Praesent dignissim massa justo, et sodales lacus mattis efficitur. Fusce vel erat mauris. Suspendisse ac dictum enim. Vestibulum sed efficitur lorem. Nunc ut ornare erat. Nam gravida tincidunt lacus a pulvinar. Nulla in lacus at sem fermentum iaculis sed a dolor. Maecenas bibendum tortor risus, rhoncus consectetur nunc laoreet id. Proin varius risus ut neque semper, quis dictum metus cursus.</p>\r\n\r\n<h3>Sed dictum risus sed mi interdum ullamcorper.</h3>\r\n\r\n<p>Nullam tortor mi, aliquet in neque eget, mollis malesuada diam. Fusce mattis rhoncus magna, nec facilisis tortor pharetra vel. Vivamus convallis eget nisl ac commodo. Curabitur mi sem, sagittis id sagittis et, vestibulum a neque. Maecenas ut nulla elementum, fringilla eros sit amet, maximus elit. Duis vel turpis feugiat, ultrices dolor id, porttitor sem. Proin pulvinar quis quam non finibus. Nam felis risus, condimentum ut mi eu, vehicula pulvinar nisi. Sed dolor ligula, euismod ut nisi sit amet, ornare ultrices metus. Phasellus tortor purus, lacinia non ullamcorper auctor, faucibus et lectus. Integer id finibus orci, ac dignissim risus. Donec eget lobortis leo. Ut pellentesque, massa et laoreet aliquam, magna ligula auctor turpis, sed blandit enim diam eget libero. Nulla nisi turpis, auctor at maximus vitae, scelerisque id nulla.</p>', '5be79a402a7e75d5813fabfc404a4627.jpg', 1, 1, 'Mitsubishi Electric', '', '', '2016-07-12 15:15:08', 1, 10),
(25, 'Daikin', 'daikin', 'Японская компания, мировой лидер в производстве бытовых и промышленных кондиционеров воздуха, систем отопления и вентиляции помещений.', '<h2>Mauris ut risus tempus, finibus diam et, egestas ante.</h2>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus lorem diam, aliquam eget velit sit amet, molestie tempor purus. Nullam auctor sem et nulla egestas, dapibus facilisis massa porttitor. Suspendisse non ultrices arcu. Mauris ut risus tempus, finibus diam et, egestas ante. Maecenas lobortis malesuada erat ac tristique. Quisque id sollicitudin sapien. Curabitur porta ante quis arcu commodo, non tincidunt augue viverra.</p>\r\n\r\n<p>Nulla molestie, lacus quis egestas vulputate, dolor libero molestie dui, vel faucibus sem lorem non dolor. Aliquam id risus turpis. Etiam non egestas augue, eget maximus tortor. In turpis nisi, cursus non velit eu, pretium pellentesque dolor. Nam egestas porta dui et consequat. In finibus in nulla non imperdiet. Sed non massa eros. Donec a lacus massa. Praesent aliquam nulla quam, vitae vestibulum neque dapibus quis. Cras placerat rhoncus dui quis ultricies.</p>\r\n\r\n<h3>Duis ut ipsum imperdiet, euismod sapien vel, maximus ligula.</h3>\r\n\r\n<p>Nunc fringilla luctus erat, eu sollicitudin dolor tincidunt eu. Nullam eget sem eros. Curabitur non augue pellentesque, elementum purus eu, convallis orci. Donec at maximus odio. Donec mauris nibh, tempor ac metus eu, faucibus bibendum nibh. Sed dui nisl, cursus quis porta ac, feugiat eget risus. Sed felis orci, pulvinar nec iaculis a, auctor ut urna. Suspendisse volutpat malesuada risus, commodo rutrum magna gravida et.</p>\r\n\r\n<h3>Etiam ac fermentum enim, ut tempor mauris.</h3>\r\n\r\n<p>Aenean vel lectus interdum, placerat nibh non, gravida risus. Duis sed lacus nec purus tincidunt consequat pellentesque at eros. Nam convallis non risus non maximus. Praesent dignissim massa justo, et sodales lacus mattis efficitur. Fusce vel erat mauris. Suspendisse ac dictum enim. Vestibulum sed efficitur lorem. Nunc ut ornare erat. Nam gravida tincidunt lacus a pulvinar. Nulla in lacus at sem fermentum iaculis sed a dolor. Maecenas bibendum tortor risus, rhoncus consectetur nunc laoreet id. Proin varius risus ut neque semper, quis dictum metus cursus.</p>\r\n\r\n<h3>Sed dictum risus sed mi interdum ullamcorper.</h3>\r\n\r\n<p>Nullam tortor mi, aliquet in neque eget, mollis malesuada diam. Fusce mattis rhoncus magna, nec facilisis tortor pharetra vel. Vivamus convallis eget nisl ac commodo. Curabitur mi sem, sagittis id sagittis et, vestibulum a neque. Maecenas ut nulla elementum, fringilla eros sit amet, maximus elit. Duis vel turpis feugiat, ultrices dolor id, porttitor sem. Proin pulvinar quis quam non finibus. Nam felis risus, condimentum ut mi eu, vehicula pulvinar nisi. Sed dolor ligula, euismod ut nisi sit amet, ornare ultrices metus. Phasellus tortor purus, lacinia non ullamcorper auctor, faucibus et lectus. Integer id finibus orci, ac dignissim risus. Donec eget lobortis leo. Ut pellentesque, massa et laoreet aliquam, magna ligula auctor turpis, sed blandit enim diam eget libero. Nulla nisi turpis, auctor at maximus vitae, scelerisque id nulla.</p>', '02a2f228cf7059f57085eb6a139fd7b9.jpg', 1, 1, 'Daikin', '', '', '2016-07-12 15:32:06', 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `shop_orders`
--

CREATE TABLE `shop_orders` (
  `idItem` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `alias` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `adres` varchar(255) DEFAULT NULL,
  `text` text,
  `delivery` varchar(255) DEFAULT NULL,
  `pay` varchar(255) DEFAULT NULL,
  `price` decimal(19,2) DEFAULT '0.00',
  `count` int(11) DEFAULT '0',
  `delivery_price` decimal(19,2) DEFAULT '0.00',
  `total` decimal(19,2) DEFAULT '0.00',
  `isRead` int(11) DEFAULT '0',
  `addDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `preorder` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `shop_orders`
--

INSERT INTO `shop_orders` (`idItem`, `title`, `alias`, `name`, `phone`, `email`, `adres`, `text`, `delivery`, `pay`, `price`, `count`, `delivery_price`, `total`, `isRead`, `addDate`, `preorder`) VALUES
(4, NULL, 100004, 'Владислав Запорожец', '+375 (11) 111-11-11', 'zaporozhets-vlad@rambler.ru', 'ул. Юбилейная, 2а', 'Тестовый', 'Наложенным платежом', 'VISA/MASTERCARD/MAESTRO онлайн', '3675.00', 3, '4.50', '3679.50', 1, '2016-07-19 13:51:17', 0),
(5, NULL, 100005, 'Владислав Запорожец', '+375 (11) 111-11-11', 'zaporozhets-vlad@rambler.ru', 'ул. Юбилейная, 2а', 'Тестовый', 'Службой доставки по РБ', 'VISA/MASTERCARD/MAESTRO онлайн', '2310.00', 2, '15.00', '2325.00', 1, '2016-07-19 13:54:30', 0),
(6, NULL, 100006, 'Владислав Запорожец', '+375 (11) 111-11-11', 'zaporozhets-vlad@rambler.ru', 'ул. К. Либкнехта', '123', 'Наложенным платежом', 'VISA/MASTERCARD/MAESTRO онлайн', '1365.00', 2, '4.50', '1369.50', 0, '2016-07-19 20:38:16', 0),
(7, NULL, 100007, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', 0, '0.00', '0.00', 0, '2016-11-13 00:05:20', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `shop_orders_products`
--

CREATE TABLE `shop_orders_products` (
  `idItem` int(11) NOT NULL,
  `idParent` int(11) DEFAULT NULL,
  `articul` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `brief` varchar(255) DEFAULT NULL,
  `img` text,
  `count` int(11) DEFAULT '0',
  `price` decimal(19,2) DEFAULT '0.00',
  `total` decimal(19,2) DEFAULT '0.00',
  `modification` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `shop_orders_products`
--

INSERT INTO `shop_orders_products` (`idItem`, `idParent`, `articul`, `title`, `brief`, `img`, `count`, `price`, `total`, `modification`) VALUES
(10, 4, '320904', 'Джип', 'Тестовый товар в котором тестируется функционал.', 'ea99a8fe9184c4364eaa504e82cf1f22.jpg', 1, '1155.00', '1155.00', 1),
(11, 4, '22947', 'Audi A7', 'Audi A7 Sportback (код кузова — 4G) — пятидверный фастбэк класса Гран Туризмо, выпускаемый AUDI AG, на платформе А6, позиционируется в сегменте ниже Audi A8.', 'bf190ed8d66ad921f9511832f8e5fb44.jpg', 1, '2100.00', '2100.00', 0),
(12, 4, '52539', 'BMW 525 E39', 'Модификация кузова BMW «пятой» серии, который выпускался с 1995 по 2004 год включительно. Предшественником данного кузова был BMW E34, а ему на смену пришли BMW Е60 и BMW F10 в совершенно новом стиле BMW.', 'd624bb7615f1e8bcb29e85944b192d2a.jpg', 1, '420.00', '420.00', 0),
(13, 5, '32090', 'Test BMW 320i E90', 'Тестовый товар в котором тестируется функционал.', 'ea99a8fe9184c4364eaa504e82cf1f22.jpg', 1, '210.00', '210.00', 0),
(14, 5, '22947', 'Audi A7', 'Audi A7 Sportback (код кузова — 4G) — пятидверный фастбэк класса Гран Туризмо, выпускаемый AUDI AG, на платформе А6, позиционируется в сегменте ниже Audi A8.', 'bf190ed8d66ad921f9511832f8e5fb44.jpg', 1, '2100.00', '2100.00', 0),
(15, 6, '32090', 'Test BMW 320i E90', 'Тестовый товар в котором тестируется функционал.', 'ea99a8fe9184c4364eaa504e82cf1f22.jpg', 1, '210.00', '210.00', 0),
(16, 6, '320904', 'Джип', 'Тестовый товар в котором тестируется функционал.', 'ea99a8fe9184c4364eaa504e82cf1f22.jpg', 1, '1155.00', '1155.00', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `shop_pay`
--

CREATE TABLE `shop_pay` (
  `idItem` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `brief` varchar(255) DEFAULT NULL,
  `num` int(11) DEFAULT '1',
  `visibility` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `shop_pay`
--

INSERT INTO `shop_pay` (`idItem`, `title`, `brief`, `num`, `visibility`) VALUES
(1, 'Наличными или банковской картой курьеру', '', 10, 1),
(2, 'Оплата через ЕРИП', '', 9, 1),
(3, 'VISA/MASTERCARD/MAESTRO онлайн', '', 8, 1),
(4, 'Безналичный перевод', 'для Юридических Лиц и ИП', 7, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `shop_products`
--

CREATE TABLE `shop_products` (
  `idItem` int(11) NOT NULL,
  `idParent` int(11) DEFAULT NULL,
  `idMfrs` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `articul` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `brief` varchar(255) DEFAULT NULL,
  `text` text,
  `text_delivery` varchar(255) DEFAULT NULL,
  `text_garanty` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `img` text,
  `priceType` varchar(255) DEFAULT 'one',
  `price` decimal(19,5) DEFAULT '0.00000',
  `oldPrice` decimal(19,5) DEFAULT '0.00000',
  `currency` int(11) DEFAULT NULL,
  `price_curr` decimal(19,5) DEFAULT '0.00000',
  `oldPrice_curr` decimal(19,5) DEFAULT '0.00000',
  `length` decimal(19,5) DEFAULT '0.00000',
  `width` decimal(19,5) DEFAULT '0.00000',
  `height` decimal(19,5) DEFAULT '0.00000',
  `unit_length` int(11) DEFAULT NULL,
  `weight` decimal(19,5) DEFAULT '0.00000',
  `unit_weight` int(11) DEFAULT NULL,
  `num` int(11) DEFAULT '1',
  `visibility` int(11) DEFAULT '1',
  `sticker_hit` int(11) DEFAULT '0',
  `sticker_new` int(11) DEFAULT '0',
  `sticker_best` int(11) DEFAULT '0',
  `count` int(11) DEFAULT '1',
  `count_subtraction` int(11) DEFAULT '0',
  `charArr` text,
  `mTitle` varchar(255) DEFAULT NULL,
  `mKeywords` varchar(255) DEFAULT NULL,
  `mDescription` varchar(255) DEFAULT NULL,
  `addDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `shop_products`
--

INSERT INTO `shop_products` (`idItem`, `idParent`, `idMfrs`, `title`, `articul`, `alias`, `brief`, `text`, `text_delivery`, `text_garanty`, `country`, `img`, `priceType`, `price`, `oldPrice`, `currency`, `price_curr`, `oldPrice_curr`, `length`, `width`, `height`, `unit_length`, `weight`, `unit_weight`, `num`, `visibility`, `sticker_hit`, `sticker_new`, `sticker_best`, `count`, `count_subtraction`, `charArr`, `mTitle`, `mKeywords`, `mDescription`, `addDate`) VALUES
(1, 13, 23, 'BMW 320i E46', '32046', 'bmw-320i-e46', 'BMW 320i имеет кузов типа седан, систему привода RWD (задний), 5 пассажирских мест и 4 двери. Автомобиль производится с 2001 года.', '', '', '', '', '7f9d713add5eb34c7a40113e813c470e.jpg', 'one', '0.00000', '0.00000', 5, '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', 1, '0.00000', 1, 100, 1, 0, 0, 0, 1, 0, NULL, 'BMW 320i E46', 'BMW 320i имеет кузов типа седан, систему привода RWD (задний), 5 пассажирских мест и 4 двери. Автомобиль производится с 2001 года.', 'BMW 320i имеет кузов типа седан, систему привода RWD (задний), 5 пассажирских мест и 4 двери. Автомобиль производится с 2001 года.', '2016-06-21 12:40:59'),
(2, 13, 23, 'Test BMW 320i E90', '32090', 'bmw-320i-e90', 'Тестовый товар в котором тестируется функционал.', '<p>BMW AG (аббревиатура от Bayerische Motoren Werke AG, с нем. &quot;Баварские моторные заводы&quot;) &mdash; немецкий производитель автомобилей, мотоциклов, двигателей, а также велосипедов. Председателем компании на сегодняшний день является Норберт Райтхофер, а главным дизайнером &mdash; Карим Хабиб. Девиз компании &mdash; &quot;Freude am Fahren&quot;, с нем. - &quot;С удовольствием за рулем&quot;. Для англоязычных стран был придуман также &quot;The Ultimate Driving Machine&quot;.</p>\r\n\r\n<p>По-русски название &quot;BMW&quot; произносится &quot;бэ-эм-вэ́&quot;, что близко к немецкому произношению; изредка встречается написание &quot;БМВ&quot;. В англоязычных странах произносят &quot;би-эм-дабл-ю&quot;.</p>\r\n\r\n<p>Существует также несколько &quot;неофициальных&quot; названий: для мотоциклов фирмы исторически сложилось название &quot;бимер&quot; (англ. beemer), для автомобилей &mdash; похожее, но не равнозначное &quot;биммер&quot; (англ. bimmer). В России для обозначения марки могут также применяться названия &quot;бэха&quot;, &quot;бумер&quot;,&quot;бимер&quot;, в Греции &quot;beba&quot;, в арабских странах &mdash; &quot;BM&quot;. Автомобили также могут называться соответственно их серии, например для 5-й серии &mdash; &quot;пятёрка&quot;, нем. F&uuml;nfer, англ. fiver.</p>\r\n', 'По всей Беларуси бесплатно', '12 месяцев', 'Германия', 'ea99a8fe9184c4364eaa504e82cf1f22.jpg', 'one', '210.00000', '420.00000', 6, '100.00000', '200.00000', '4520.00000', '1817.00000', '1421.00000', 3, '1840.00000', 1, 10000, 1, 1, 1, 0, 1, 1, '[{\"label\":\"\\u041a\\u043e\\u043b\\u0435\\u044f \\u043f\\u0435\\u0440\\u0435\\u0434\\u043d\\u044f\\u044f (\\u043c\\u043c)\",\"value\":\"1499\"},{\"label\":\"\\u041a\\u043e\\u043b\\u0435\\u044f \\u0437\\u0430\\u0434\\u043d\\u044f\\u044f (\\u043c\\u043c)\",\"value\":\"1513\"},{\"label\":\"\\u041e\\u0431\\u044a\\u0451\\u043c \\u0434\\u0432\\u0438\\u0433\\u0430\\u0442\\u0435\\u043b\\u044f\",\"value\":\"2.0\"},{\"label\":\"\\u041a\\u043e\\u043b\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e \\u0446\\u0438\\u043b\\u0438\\u043d\\u0434\\u0440\\u043e\\u0432\",\"value\":\"4\"}]', 'BMW 320i E90', 'BMW 320i имеет систему привода RWD (задний), 5 мест, 4 двери и кузов типа седан. Серийное производство началось в 2005 году.', 'BMW 320i имеет систему привода RWD (задний), 5 мест, 4 двери и кузов типа седан. Серийное производство началось в 2005 году.', '2016-06-21 12:45:52'),
(3, 9, 21, 'Audi Q7', '22957', 'audi-q7', 'Полноразмерный кроссовер, выпускаемый компанией Audi. Его премьера состоялась в сентябре 2005 года на Международном автосалоне во Франкфурте.', '', '', '', '', 'b5274ebcbf976b1733e0b48348a9e4aa.jpg', 'one', '0.00000', '0.00000', 5, '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', 1, '0.00000', 1, 1, 1, 0, 0, 0, 1, 0, NULL, 'Audi Q7', '', '', '2016-07-13 09:34:55'),
(4, 9, 21, 'Audi Q5', '22955', 'audi-q5', 'Компактный кроссовер, выпускаемый AUDI AG с ноября 2008 года. Audi Q5 производится на заводах в Ингольштадте, Чанчуне и Аурангабаде.', '', '', '', '', '8b4c2675dfbcf92c49cdcc0fa2dba50e.jpg', 'one', '0.00000', '0.00000', 5, '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', 1, '0.00000', 1, 1, 1, 0, 0, 0, 1, 0, NULL, 'Audi Q5', '', '', '2016-07-13 09:37:34'),
(5, 8, 21, 'Audi A5', '22945', 'audi-a5', 'Спортивный автомобиль, производимый немецким aвтопроизводителем Audi с 2007 года на заводе в Ингольштадте. Audi A5 была одновременно представлена на Женевском автосалоне и Мельбурнском международном автосалоне 6 марта 2007 года.', '', '', '', '', 'f402aea5761d18c7e127ab8ae99e840d.jpg', 'one', '0.00000', '0.00000', 5, '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', 1, '0.00000', 1, 1, 1, 0, 1, 0, 1, 0, NULL, 'Audi A5', '', '', '2016-07-13 09:40:17'),
(6, 11, 21, 'Audi A6', '22946', 'audi-a6', 'Семейство автомобилей бизнес-класса, выпускающихся под маркой Audi, внутреннее обозначение - «тип C». Премьера Audi 100 состоялась в 1968 году, с августа 1994 года этот модельный ряд носит название А6.', '', '', '', '', '77c3000b83737614b34e6a4ec91a27fe.jpg', 'one', '0.00000', '0.00000', 5, '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', 1, '0.00000', 1, 1, 1, 1, 0, 0, 1, 0, NULL, 'Audi A6', '', '', '2016-07-13 09:46:20'),
(7, 8, 21, 'Audi A7', '22947', 'audi-a7', 'Audi A7 Sportback (код кузова — 4G) — пятидверный фастбэк класса Гран Туризмо, выпускаемый AUDI AG, на платформе А6, позиционируется в сегменте ниже Audi A8.', '', '', '', '', 'bf190ed8d66ad921f9511832f8e5fb44.jpg', 'one', '2100.00000', '2310.00000', 6, '1000.00000', '1100.00000', '0.00000', '0.00000', '0.00000', 1, '0.00000', 1, 1, 1, 0, 0, 0, 1, 0, NULL, 'Audi A7', '', '', '2016-07-13 09:48:47'),
(8, 14, 23, 'BMW 525 E39', '52539', 'bmw-525-e39', 'Модификация кузова BMW «пятой» серии, который выпускался с 1995 по 2004 год включительно. Предшественником данного кузова был BMW E34, а ему на смену пришли BMW Е60 и BMW F10 в совершенно новом стиле BMW.', '', '', '', '', 'd624bb7615f1e8bcb29e85944b192d2a.jpg', 'one', '420.00000', '525.00000', 6, '200.00000', '250.00000', '0.00000', '0.00000', '0.00000', 1, '0.00000', 1, 1, 1, 0, 0, 0, 1, 0, NULL, 'BMW 525 E39', '', '', '2016-07-13 10:10:55'),
(9, 15, 0, 'Volkswagen Passat B5', '15525', 'volkswagen-passat-b5', 'Четвертое поколение Volkswagen Passat получило индекс B5. Автомобиль собирался в самой Германии, а также в Словакии и даже Китае.', '', '', '', '', '3b03ca70e162df4d9504147bcfb5c790.jpg', 'one', '0.00000', '0.00000', 5, '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', 1, '0.00000', 1, 1, 1, 0, 0, 0, 1, 0, NULL, 'Volkswagen Passat B5', '', '', '2016-07-13 11:01:02'),
(10, 16, 0, 'Volkswagen Golf 6', '15526', 'volkswagen-golf-6', 'Седьмое поколение самого популярного и продаваемого хэтчбэка в мире, выпускающегося Volkswagen в Европе с конца сентября 2012 года.', '', '', '', '', 'd154ca949b83ea4875c490974ae01ce9.jpg', 'one', '0.00000', '0.00000', 5, '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', 1, '0.00000', 1, 1, 1, 0, 0, 0, 1, 0, NULL, 'Volkswagen Golf 6', '', '', '2016-07-13 11:04:20'),
(11, 19, 0, 'Volkswagen Amarok Highline', '15520', 'volkswagen-amarok-highline', 'Среднеразмерный пикап, разработанный Volkswagen. Имеет 2- или 4-дверную кабину, задний или полный привод, а также 3 комплектации - Base, Trendline и Highline.', '', '', '', '', '06ba8f74d0c26e07868d5f38017b9be5.jpg', 'one', '0.00000', '0.00000', 5, '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', 1, '0.00000', 1, 1, 1, 0, 0, 0, 1, 0, NULL, 'Volkswagen Amarok Highline', '', '', '2016-07-13 11:07:29'),
(12, 18, 0, 'Volkswagen New Beetle', '15521', 'volkswagen-new-beetle', 'Компактный автомобиль немецкой компании Volkswagen. New Beetle выпускался с 1998 по 2010 год.', '', '', '', '', '36d647e1a63c3cf631b2f3308f3b6038.jpg', 'one', '0.00000', '0.00000', 5, '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', 1, '0.00000', 1, 1, 1, 0, 0, 0, 1, 0, NULL, 'Volkswagen New Beetle', '', '', '2016-07-13 11:10:36'),
(16, 6, 23, 'Импорт 1', '25070056', 'import-1', 'Lorem ipsum', '', 'Бесплатно', '12 месяцев', 'Украина', 'b8cfa4f5b31507bc48a5c63e28353917.jpg', 'one', '14.00000', '20.00000', 5, '14.00000', '20.00000', '0.00000', '0.00000', '0.00000', 1, '0.00000', 1, 10, 1, 0, 1, 1, 5, 1, NULL, 'Импорт 1', 'Импорт 1', 'Импорт 1', '2016-07-24 22:26:50'),
(17, 6, 23, 'Импорт 2', '25070057', 'import-2', 'Lorem ipsum', '', 'Бесплатно', '24 месяца', 'Россия', 'da7939da1811f397d3d61230ecd45401.jpg', 'one', '16.00000', '20.00000', 5, '16.00000', '20.00000', '0.00000', '0.00000', '0.00000', 1, '0.00000', 1, 1, 1, 1, 1, 1, 5, 0, NULL, 'Импорт 2', 'Импорт 2', 'Импорт 2', '2016-07-24 22:26:50'),
(18, 12, 21, 'Импорт 3', '25070058', 'import-3', 'Lorem ipsum', '', 'Бесплатно', '24 месяца', 'Беларусь', '2a26be9aba4dd0497250e732e43f44e3.jpg', 'one', '240.00000', '300.00000', 5, '240.00000', '300.00000', '0.00000', '0.00000', '0.00000', 1, '0.00000', 1, 1, 1, 0, 1, 0, 5, 1, NULL, 'Импорт 3', 'Импорт 3', 'Импорт 3', '2016-07-24 22:26:50');

-- --------------------------------------------------------

--
-- Структура таблицы `shop_products_articles`
--

CREATE TABLE `shop_products_articles` (
  `idItem` int(11) NOT NULL,
  `idParent` int(11) DEFAULT NULL,
  `idArticle` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `shop_products_articles`
--

INSERT INTO `shop_products_articles` (`idItem`, `idParent`, `idArticle`) VALUES
(6, 8, 22),
(7, 8, 23),
(8, 12, 25),
(9, 12, 24),
(10, 11, 24),
(11, 11, 25),
(12, 10, 24),
(13, 10, 25),
(14, 9, 25),
(15, 9, 24),
(16, 2, 23),
(17, 2, 22),
(18, 1, 22),
(19, 1, 23),
(20, 3, 20),
(21, 3, 21),
(22, 4, 20),
(23, 4, 21),
(24, 7, 20),
(25, 7, 21),
(26, 6, 20),
(27, 6, 21),
(28, 5, 20),
(29, 5, 21);

-- --------------------------------------------------------

--
-- Структура таблицы `shop_products_comments`
--

CREATE TABLE `shop_products_comments` (
  `idItem` int(11) NOT NULL,
  `idParent` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `raiting` int(11) DEFAULT '4',
  `text` text,
  `link` text,
  `img` text,
  `visibility` varchar(255) DEFAULT '0',
  `isRead` varchar(255) DEFAULT '0',
  `addDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AVG_ROW_LENGTH=2730 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `shop_products_comments`
--

INSERT INTO `shop_products_comments` (`idItem`, `idParent`, `name`, `phone`, `raiting`, `text`, `link`, `img`, `visibility`, `isRead`, `addDate`) VALUES
(8, 2, 'Владислав Запорожец', '+375 (11) 111-11-11', 4, 'Отличный товар! Спасибо!', '', NULL, '1', '1', '2016-07-19 22:40:07'),
(9, 2, 'Владислав Запорожец', '+375 (11) 111-11-11', 4, 'Все подошло!\r\nЖивите и процветайте!', 'https://new.vk.com/zaporozhets_vladislav', NULL, '1', '1', '2016-07-19 22:41:15'),
(10, 2, 'Руслан', '+375 (11) 111-11-11', 5, 'Отличный товар!', 'http://narisuemvse.by', NULL, '0', '0', '2016-07-19 23:37:05');

-- --------------------------------------------------------

--
-- Структура таблицы `shop_products_descr`
--

CREATE TABLE `shop_products_descr` (
  `idItem` int(11) NOT NULL,
  `idParent` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `text` text,
  `num` int(11) DEFAULT '1',
  `visibility` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `shop_products_descr`
--

INSERT INTO `shop_products_descr` (`idItem`, `idParent`, `title`, `text`, `num`, `visibility`) VALUES
(6, 2, 'История модели', '<p>Официально, серийное производство Е90 началось в 2005 году, сменив предыдущую модель E46. Универсал (E91), купе(E92) и кабриолет(E93) были введены в строй в конце 2006 года.</p>\r\n\r\n<p>По сравнению с предшественником (E46), E90 увеличился в размерах — вырос в длину на 8 см до 4,55 метра и в ширину на 3 см. Колёсная база увеличилась на 3,5 см. Заметно изменился и дизайн BMW 3 серии.</p>\r\n\r\n<p>Для седана BMW E90 доступны эксклюзивные пакеты Lifestyle, Sport, Exclusive Edition и M Sport Package.</p>\r\n', 10, 1),
(8, 2, 'Модельный ряд', '<p>Седан (Sedan)</p>\r\n\r\n<ul>\r\n <li>Е90 (2005 — 2009)</li>\r\n <li>Е90LCI (2009 — 2011)</li>\r\n</ul>\r\n\r\n<p>Универсал (Touring)</p>\r\n\r\n<ul>\r\n <li>Е91 (2005 — 2009)</li>\r\n <li>Е91LCI (2009 — 2012)</li>\r\n</ul>\r\n\r\n<p>Купе (Coupe)</p>\r\n\r\n<ul>\r\n <li>Е92 (2006 — 2010)</li>\r\n <li>Е92LCI (2010 — 2013)</li>\r\n</ul>\r\n\r\n<p>Кабриолет (Cabrio)</p>\r\n\r\n<ul>\r\n <li>Е93 (2007 — 2010)</li>\r\n <li>Е93LCI (2010 — 2013)</li>\r\n</ul>\r\n', 9, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `shop_products_imgs`
--

CREATE TABLE `shop_products_imgs` (
  `idItem` int(11) NOT NULL,
  `idParent` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `img` text,
  `addDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AVG_ROW_LENGTH=910 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `shop_products_imgs`
--

INSERT INTO `shop_products_imgs` (`idItem`, `idParent`, `title`, `img`, `addDate`) VALUES
(71, 2, NULL, '6ab82ebcb0225bed0e86df362bc1c7db.jpg', '2016-07-14 00:53:18'),
(72, 2, NULL, '144ff1e47cd3a44b3d1825de30c0d7d3.jpg', '2016-07-14 00:53:18'),
(73, 2, NULL, '8af86a29184fd339d13bab2bac6d35a1.jpg', '2016-07-14 00:53:18'),
(75, 2, NULL, '758e486e561a00ee78990038a7e1acd1.jpg', '2016-07-14 14:55:25'),
(76, 2, NULL, 'ed5a42e70b735c33d72c2ca91836c8b5.jpg', '2016-07-14 14:55:25'),
(77, 2, NULL, '7cc621d55d4f153f9f4f3d9ca2247bd3.jpg', '2016-07-14 14:55:25'),
(78, 2, NULL, 'a5c8e861dfcff944180ab790ae6c7ac2.jpg', '2016-07-14 14:55:26');

-- --------------------------------------------------------

--
-- Структура таблицы `shop_products_modifications`
--

CREATE TABLE `shop_products_modifications` (
  `idItem` int(11) NOT NULL,
  `idParent` int(11) DEFAULT NULL,
  `articul` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `price` decimal(19,5) DEFAULT '0.00000',
  `oldPrice` decimal(19,5) DEFAULT '0.00000',
  `price_curr` decimal(19,5) DEFAULT '0.00000',
  `oldPrice_curr` decimal(19,5) DEFAULT '0.00000',
  `count` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `shop_products_modifications`
--

INSERT INTO `shop_products_modifications` (`idItem`, `idParent`, `articul`, `title`, `price`, `oldPrice`, `price_curr`, `oldPrice_curr`, `count`) VALUES
(1, 2, '320901', 'Седан', '110.00000', '0.00000', '0.00000', '0.00000', 0),
(4, 2, '320902', 'Купе', '350.00000', '0.00000', '0.00000', '0.00000', 1),
(5, 2, '320903', 'Хэтчбек', '150.00000', '0.00000', '0.00000', '0.00000', 0),
(6, 2, '320904', 'Джип', '550.00000', '600.00000', '0.00000', '0.00000', 0),
(7, 2, '320905', 'Универсал', '300.00000', '0.00000', '0.00000', '0.00000', 1),
(8, 16, '25070132', 'Мод 1', '40.00000', '0.00000', '0.00000', '0.00000', 1),
(9, 16, '25070133', 'Мод 2', '145000.00000', '0.00000', '0.00000', '0.00000', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `shop_products_similars`
--

CREATE TABLE `shop_products_similars` (
  `idItem` int(11) NOT NULL,
  `idParent` int(11) DEFAULT NULL,
  `idProduct` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `shop_products_similars`
--

INSERT INTO `shop_products_similars` (`idItem`, `idParent`, `idProduct`) VALUES
(17, 8, 8),
(18, 12, 9),
(19, 12, 10),
(20, 12, 11),
(22, 11, 10),
(23, 11, 9),
(24, 11, 12),
(25, 10, 9),
(26, 10, 12),
(27, 10, 11),
(28, 9, 10),
(29, 9, 11),
(30, 9, 12),
(32, 2, 8),
(33, 1, 8),
(34, 1, 2),
(35, 2, 1),
(36, 8, 1),
(38, 3, 4),
(42, 3, 7),
(43, 3, 6),
(44, 3, 5),
(45, 4, 3),
(46, 4, 5),
(47, 4, 6),
(48, 4, 7),
(49, 7, 6),
(50, 7, 5),
(51, 7, 4),
(52, 7, 3),
(53, 6, 3),
(54, 6, 4),
(55, 6, 5),
(56, 6, 7),
(57, 5, 3),
(58, 5, 4),
(59, 5, 7),
(60, 5, 6),
(61, 2, 3),
(62, 2, 4),
(63, 2, 7),
(64, 2, 6),
(65, 2, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `shop_unit_currency`
--

CREATE TABLE `shop_unit_currency` (
  `idItem` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `value` decimal(10,5) DEFAULT '0.00000'
) ENGINE=InnoDB AVG_ROW_LENGTH=5461 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `shop_unit_currency`
--

INSERT INTO `shop_unit_currency` (`idItem`, `title`, `alias`, `unit`, `value`) VALUES
(5, 'Белорусский рубль', 'BYN', 'р.', '1.00000'),
(6, 'Доллар', 'USD', '$', '2.10000'),
(7, 'Российский рубль', 'RUB', 'р.', '0.03000');

-- --------------------------------------------------------

--
-- Структура таблицы `shop_unit_length`
--

CREATE TABLE `shop_unit_length` (
  `idItem` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `value` decimal(10,5) DEFAULT '0.00000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `shop_unit_length`
--

INSERT INTO `shop_unit_length` (`idItem`, `title`, `alias`, `value`) VALUES
(1, 'Сантиметр', 'см', '1.00000'),
(2, 'Метр', 'м', '100.00000'),
(3, 'Миллииметр', 'мм', '0.10000');

-- --------------------------------------------------------

--
-- Структура таблицы `shop_unit_weight`
--

CREATE TABLE `shop_unit_weight` (
  `idItem` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `value` decimal(10,2) DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `shop_unit_weight`
--

INSERT INTO `shop_unit_weight` (`idItem`, `title`, `alias`, `value`) VALUES
(1, 'Килограмм', 'кг', '1.00'),
(2, 'Грамм', 'г', '0.00'),
(3, 'Центнер', 'ц', '100.00');

-- --------------------------------------------------------

--
-- Структура таблицы `slider`
--

CREATE TABLE `slider` (
  `idItem` int(11) NOT NULL,
  `title` text,
  `text` text,
  `btnLabel` varchar(255) DEFAULT NULL,
  `btnLink` text,
  `btn2Label` varchar(255) DEFAULT NULL,
  `btn2Link` text,
  `position` varchar(255) DEFAULT 'left',
  `num` int(11) DEFAULT '1',
  `img` text,
  `mob` text,
  `visibility` tinyint(1) DEFAULT '1',
  `showText` tinyint(1) NOT NULL DEFAULT '1',
  `addDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AVG_ROW_LENGTH=8192 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `slider`
--

INSERT INTO `slider` (`idItem`, `title`, `text`, `btnLabel`, `btnLink`, `btn2Label`, `btn2Link`, `position`, `num`, `img`, `mob`, `visibility`, `showText`, `addDate`) VALUES
(13, 'Заголовок', 'краткое описание слайда', 'Подробнее', '/catalog', '', '', 'left', 10, '88eda8f332d1454452f7f6452f6693a4.jpg', 'b339e61524591c818aec7f3b94a06520.jpg', 1, 1, '2018-08-31 12:49:56'),
(14, 'Лучшие предложения', 'краткое описание слайда', 'Читать далее', '/catalog', '', '', 'left', 1, 'f77599da7beea113e0bb5599ca4bb557.jpg', '57bc70cadb12389e7950165c1d6c54eb.jpg', 1, 1, '2018-08-31 13:00:14');

-- --------------------------------------------------------

--
-- Структура таблицы `theme_admin`
--

CREATE TABLE `theme_admin` (
  `idItem` int(11) NOT NULL,
  `current` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `brief` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `theme_admin`
--

INSERT INTO `theme_admin` (`idItem`, `current`, `title`, `alias`, `brief`) VALUES
(1, 1, 'NarisuemVse Admin Panel', 'narisuemvse', 'Стандартная тема от команды \"Нарисуем все\". Приятный интерфейс и воздушные цвета придутся по вкусу любителям минимализма.'),
(2, 0, 'VIX-CMS Admin Panel', 'vix', NULL),
(3, 0, 'Gradient Admin Panel', 'gradient', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `idItem` int(11) NOT NULL,
  `access` varchar(255) DEFAULT NULL,
  `login` varchar(255) DEFAULT NULL,
  `password` text,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `addDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AVG_ROW_LENGTH=8192 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`idItem`, `access`, `login`, `password`, `email`, `name`, `sname`, `lname`, `addDate`) VALUES
(1, 'admin', 'admin', '46f94c8de14fb36680850768ff1b7f2a', 'narisuemvse.testmail@yandex.ru', 'Иван', 'Иванов', '', '2015-06-06 12:49:47'),
(8, 'admin', 'moderator', '46f94c8de14fb36680850768ff1b7f2a', 'narisuemvse@mail.ru', 'Петр', 'Петров', NULL, '2015-11-17 12:07:30');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`idItem`);

--
-- Индексы таблицы `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`idItem`);

--
-- Индексы таблицы `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Индексы таблицы `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`idItem`);

--
-- Индексы таблицы `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`idItem`);

--
-- Индексы таблицы `feedback_orders`
--
ALTER TABLE `feedback_orders`
  ADD PRIMARY KEY (`idItem`);

--
-- Индексы таблицы `navigation`
--
ALTER TABLE `navigation`
  ADD PRIMARY KEY (`idItem`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`idItem`);

--
-- Индексы таблицы `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`idItem`);

--
-- Индексы таблицы `pages_admin`
--
ALTER TABLE `pages_admin`
  ADD PRIMARY KEY (`idItem`);

--
-- Индексы таблицы `pages_site`
--
ALTER TABLE `pages_site`
  ADD PRIMARY KEY (`idItem`);

--
-- Индексы таблицы `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`idItem`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`idItem`);

--
-- Индексы таблицы `shop_catalog`
--
ALTER TABLE `shop_catalog`
  ADD PRIMARY KEY (`idItem`);

--
-- Индексы таблицы `shop_catalog_products`
--
ALTER TABLE `shop_catalog_products`
  ADD PRIMARY KEY (`idItem`);

--
-- Индексы таблицы `shop_delivery`
--
ALTER TABLE `shop_delivery`
  ADD PRIMARY KEY (`idItem`);

--
-- Индексы таблицы `shop_fields`
--
ALTER TABLE `shop_fields`
  ADD PRIMARY KEY (`idItem`);

--
-- Индексы таблицы `shop_fields_groups`
--
ALTER TABLE `shop_fields_groups`
  ADD PRIMARY KEY (`idItem`);

--
-- Индексы таблицы `shop_fields_products`
--
ALTER TABLE `shop_fields_products`
  ADD PRIMARY KEY (`idItem`);

--
-- Индексы таблицы `shop_fields_values`
--
ALTER TABLE `shop_fields_values`
  ADD PRIMARY KEY (`idItem`);

--
-- Индексы таблицы `shop_mfrs`
--
ALTER TABLE `shop_mfrs`
  ADD PRIMARY KEY (`idItem`);

--
-- Индексы таблицы `shop_orders`
--
ALTER TABLE `shop_orders`
  ADD PRIMARY KEY (`idItem`);

--
-- Индексы таблицы `shop_orders_products`
--
ALTER TABLE `shop_orders_products`
  ADD PRIMARY KEY (`idItem`);

--
-- Индексы таблицы `shop_pay`
--
ALTER TABLE `shop_pay`
  ADD PRIMARY KEY (`idItem`);

--
-- Индексы таблицы `shop_products`
--
ALTER TABLE `shop_products`
  ADD PRIMARY KEY (`idItem`);

--
-- Индексы таблицы `shop_products_articles`
--
ALTER TABLE `shop_products_articles`
  ADD PRIMARY KEY (`idItem`);

--
-- Индексы таблицы `shop_products_comments`
--
ALTER TABLE `shop_products_comments`
  ADD PRIMARY KEY (`idItem`);

--
-- Индексы таблицы `shop_products_descr`
--
ALTER TABLE `shop_products_descr`
  ADD PRIMARY KEY (`idItem`);

--
-- Индексы таблицы `shop_products_imgs`
--
ALTER TABLE `shop_products_imgs`
  ADD PRIMARY KEY (`idItem`);

--
-- Индексы таблицы `shop_products_modifications`
--
ALTER TABLE `shop_products_modifications`
  ADD PRIMARY KEY (`idItem`);

--
-- Индексы таблицы `shop_products_similars`
--
ALTER TABLE `shop_products_similars`
  ADD PRIMARY KEY (`idItem`);

--
-- Индексы таблицы `shop_unit_currency`
--
ALTER TABLE `shop_unit_currency`
  ADD PRIMARY KEY (`idItem`);

--
-- Индексы таблицы `shop_unit_length`
--
ALTER TABLE `shop_unit_length`
  ADD PRIMARY KEY (`idItem`);

--
-- Индексы таблицы `shop_unit_weight`
--
ALTER TABLE `shop_unit_weight`
  ADD PRIMARY KEY (`idItem`);

--
-- Индексы таблицы `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`idItem`),
  ADD UNIQUE KEY `UK_slider_idItem` (`idItem`),
  ADD KEY `IDX_slider_addDate` (`addDate`);

--
-- Индексы таблицы `theme_admin`
--
ALTER TABLE `theme_admin`
  ADD PRIMARY KEY (`idItem`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idItem`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `articles`
--
ALTER TABLE `articles`
  MODIFY `idItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT для таблицы `banners`
--
ALTER TABLE `banners`
  MODIFY `idItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `faq`
--
ALTER TABLE `faq`
  MODIFY `idItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT для таблицы `feedback`
--
ALTER TABLE `feedback`
  MODIFY `idItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `feedback_orders`
--
ALTER TABLE `feedback_orders`
  MODIFY `idItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `navigation`
--
ALTER TABLE `navigation`
  MODIFY `idItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `idItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT для таблицы `pages`
--
ALTER TABLE `pages`
  MODIFY `idItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT для таблицы `pages_admin`
--
ALTER TABLE `pages_admin`
  MODIFY `idItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT для таблицы `pages_site`
--
ALTER TABLE `pages_site`
  MODIFY `idItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT для таблицы `reviews`
--
ALTER TABLE `reviews`
  MODIFY `idItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
  MODIFY `idItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `shop_catalog`
--
ALTER TABLE `shop_catalog`
  MODIFY `idItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT для таблицы `shop_catalog_products`
--
ALTER TABLE `shop_catalog_products`
  MODIFY `idItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
--
-- AUTO_INCREMENT для таблицы `shop_delivery`
--
ALTER TABLE `shop_delivery`
  MODIFY `idItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `shop_fields`
--
ALTER TABLE `shop_fields`
  MODIFY `idItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT для таблицы `shop_fields_groups`
--
ALTER TABLE `shop_fields_groups`
  MODIFY `idItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `shop_fields_products`
--
ALTER TABLE `shop_fields_products`
  MODIFY `idItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT для таблицы `shop_fields_values`
--
ALTER TABLE `shop_fields_values`
  MODIFY `idItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT для таблицы `shop_mfrs`
--
ALTER TABLE `shop_mfrs`
  MODIFY `idItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT для таблицы `shop_orders`
--
ALTER TABLE `shop_orders`
  MODIFY `idItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `shop_orders_products`
--
ALTER TABLE `shop_orders_products`
  MODIFY `idItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT для таблицы `shop_pay`
--
ALTER TABLE `shop_pay`
  MODIFY `idItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `shop_products`
--
ALTER TABLE `shop_products`
  MODIFY `idItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT для таблицы `shop_products_articles`
--
ALTER TABLE `shop_products_articles`
  MODIFY `idItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT для таблицы `shop_products_comments`
--
ALTER TABLE `shop_products_comments`
  MODIFY `idItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `shop_products_descr`
--
ALTER TABLE `shop_products_descr`
  MODIFY `idItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `shop_products_imgs`
--
ALTER TABLE `shop_products_imgs`
  MODIFY `idItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT для таблицы `shop_products_modifications`
--
ALTER TABLE `shop_products_modifications`
  MODIFY `idItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `shop_products_similars`
--
ALTER TABLE `shop_products_similars`
  MODIFY `idItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT для таблицы `shop_unit_currency`
--
ALTER TABLE `shop_unit_currency`
  MODIFY `idItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `shop_unit_length`
--
ALTER TABLE `shop_unit_length`
  MODIFY `idItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `shop_unit_weight`
--
ALTER TABLE `shop_unit_weight`
  MODIFY `idItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `slider`
--
ALTER TABLE `slider`
  MODIFY `idItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT для таблицы `theme_admin`
--
ALTER TABLE `theme_admin`
  MODIFY `idItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `idItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
