# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.create name: 'News'
Category.create name: 'Politics'
Category.create name: 'Culture'
Category.create name: 'Sport'
Category.create name: 'Tech'
Category.create name: 'World'
Category.create name: 'Business'

User.create name: 'Oliver Twist', email: 'katya@mkechinov.ru', encrypted_password: '12345678'
User.create name: 'Admin', email: 'test+admin@mkechinov.ru', encrypted_password: '12345678'

Article.create title: 'Что такое «Велобайк»', anonce: 'Бытует мнение, что пользоваться городским велопрокатом дорого и сложно. На самом деле его работа полностью автоматизирована', text: 'Вслед за европейскими столицами правительство Москвы запустило проект городского велопроката еще в прошлом году. Поначалу велосипед можно было взять на 79 станциях вдоль Бульварного кольца и на Фрунзенской набережной — много, но недостаточно для города с 10 миллионами жителей. Зарождавшаяся сеть позволяла только ознакомиться с велокультурой и пересечь весь город на прокатном велосипеде — неудивительно, что услуга была больше востребована у туристов. Сейчас, спустя почти полтора года после запуска, когда к генеральному партнеру «Велобайка» Банку Москвы присоединился еще и Сбербанк, система разрослась настолько, что об автобусах и автомобиле и правда можно забыть. Один из 1500 велосипедов можно взять на 150 точках. География проката существенно расширилась — станции теперь располагаются не только на бульварах и в Хамовниках, но и по всему Садовому кольцу. Новые станции расположены в том числе в Пресненском районе и на Краснопресненской набережной. Это удобный альтернативный подъезд к Сити, что особенно актуально в связи с введением там зоны платных парковок. Также идет активное развитие сети в сторону юго-запада.', is_published: true

Article.create title: '«Геймергейт» как ступень взросления игр', anonce: 'На прошлой неделе широко обсуждался скандал, получивший название «геймергейт», — его главной героиней стала американская феминистка и игровой критик Анита Саркисян', text: 'В России «геймергейт» приобрел неожиданные и несколько пародийные черты, но в целом строго следовал логике материнского скандала. Все началось с публикации на сайте ru.ign.com (это российское лицензионное ответвление международного портала о развлечениях) колонки в защиту объективации женщин в играх. В силу некоторого косноязычия и, кажется, не вполне четкого представления автора о значении слова «объективация» публикация никакого заметного эффекта не произвела — пока на нее не обратило внимание женское онлайн-издание Wonderzine. В отклике на защиту объективации плюс-минус были повторены основные тезисы Аниты Саркисян, а также сообщалось о соответствующем запросе в американский IGN. Поскольку по-русски в американском IGN не читают, текст на всякий случай удалили до выяснения обстоятельств — и до сих пор так и не вернули. Все могло бы на этом закончиться, если бы русскоязычный играющий интернет не включил страшную истерику, затронувшую и Wonderzine, и феминисток, и, кажется, женщин в целом. Конкретные причины, как и в случае с Саркисян, определить сложно, но есть ощущение, что это, опять же, единственная привычная реакция субкультуры не столько даже на угрозу извне, сколько на существование людей не из субкультуры, имеющих наглость высказываться по ее поводу.', is_published: true

Article.create title: 'Цирк на развалинах', anonce: 'Кубинские дети осваивают одну из самых престижных в стране профессий', text: 'Быть циркачом на Кубе почетно. Эта работа — одна из немногочисленных возможностей иметь действительно неплохой и стабильный заработок, а также выезжать за границу. Во время гастролей за рубежом кубинские артисты получают минимум тысячу долларов в месяц (часто — значительно больше). Это составляет разительный контраст с зарплатами населения в стране. Для 70 гаванских детей финансовой мотивации оказалось достаточно, чтобы начать тренировки в полуразрушенном городском кинотеатре. Почти каждый день будущие акробаты, жонглеры и фокусники упражняются на трамплинах, брусьях и батутах под присмотром учителя. Через прохудившуюся крышу в помещение заглядывает голубое кубинское небо, но пока сезон дождей не начался, — это не проблема.', is_published: true

Article.create title: '25 СМС от людей, которые найдут выход из любой ситуации', anonce: 'Жизнь периодически ставит нас в тупики, но оптимизм и находчивость помогают стойко преодолевать трудности', text: 'Жизнь периодически ставит нас в тупики, но оптимизм и находчивость помогают стойко преодолевать трудности. А современные технологии помогают запечатлевать моменты общения, когда изобретательность восторжествовала, и делиться ими в сети.', is_published: true

Article.create title: 'Голливудские истории юрского периода', anonce: 'Палеообзор «Ленты.ру»: живые дредноуты, инопланетные драконы и губы Анджелины Джоли', text: '«Лента.ру» публикует свой первый палеообзор, намереваясь и впредь знакомить читателей с открытиями в области палеонтологии. Крупнейший динозавр весом в 65 тонн; поиски останков таинственного спинозавра, достойные экранизации Джорджем Лукасом; череп мезозавра, оказавшийся камнем; китайские драконы-икраны; а также заочный спор Анджелины Джоли и Мика Джаггера из-за губ бегемотосвина — все то, чем запомнится палеонтологам сентябрь 2014 года.', is_published: true

Article.create title: 'Рекламу Москвы придумают любители', anonce: 'Комитет по туризму и гостиничному хозяйству объявил открытый конкурс на создание рекламы Москвы', text: 'Комитет по туризму и гостиничному хозяйству объявил открытый конкурс на создание рекламы Москвы. Как сообщают организаторы, предложить свой вариант того, как лучше рекламировать столицу, может любой желающий вне зависимости от возраста и рода занятий.

Участник может предложить работу в любую из трех категорий: «Лучший сценарий для ТВ-ролика о Москве», «Лучший ролик о Москве» или же «Серия фотографий Москвы как туристического центра».

Лучший сценарий используют для создания видеоролика, который собираются транслировать в эфире международных телеканалов. Лучшее видео о Москве опубликуют на сайте Москомтуризма travel2moscow.com и в социальных сетях. Работы-победители из третьей категории будут использовать в полиграфической продукции комитета и на стендах ведомства во время международных выставок. Работы будут публиковать на специальном сайте конкурса.', is_published: true

Article.create title: 'Занятия йогой стимулируют мозг лучше фитнеса', anonce: 'Только одно двадцатиминутное занятие хатха-йогой резко увеличивает скорость и точность выполнения тестов', text: 'Йога, в отличие от фитнеса, значительно улучшает мозговую функцию, пришли к выводу американские исследователи. Только одно двадцатиминутное занятие хатха-йогой резко увеличивает скорость и точность выполнения тестов на объем рабочей памяти и самоконтроль, свидетельствующих о способности к длительной концентрации, к запоминанию и использованию новой информации, чего нельзя сказать о занятии фитнесом любой интенсивности той же продолжительности. Результаты исследования опубликованы в журнале Journal of Physical Activity and Health.

В качестве участников эксперимента были выбраны 30 молодых здоровых девушек-студенток (средний возраст - 20 лет), которым было предложено в течение 20 минут выполнять последовательность асан в положении сидя, стоя и лежа, включающих изометрическое напряжение и расслабление различных групп мышц и регулирование дыхания. Занятие завершалось медитацией и глубоким дыханием.

Девушки также выполняли 20-минутные физические упражнения - шли или бежали трусцой на тренажере «бегущая дорожка». Каждая из участниц самостоятельно выбирала подходящую ей скорость и наклон тренажера таким образом, чтобы во время занятия частота сердечных сокращений поддерживалась на 60-70 процентном уровне от максимума. Как пояснила лидер группы исследователей, Неха Готе (Neha Gothe) из университета штата Иллинойс, такой ритм был выбран на основании результатов предыдущих экспериментов, показавших, что подобная частота сердцебиения улучшает когнитивные способности.

В состоянии покоя, а также после каждого занятия йогой или фитнесом девушки выполняли тесты на рабочую память и самоконтроль. В результате оказалось, что после йоги скорость и точность выполнения тестов значительно увеличивалась по сравнению с состоянием покоя, а после фитнеса - практически не изменялась.

«После выполнения асан участницы лучше фокусировали свои умственные ресурсы, их мозг быстрее и правильнее обрабатывал информацию, словом действовал значительно более эффективно, чем после «бегущей дорожки», - отметила Готе. По ее мнению, объяснить полученные результаты можно влиянием многих факторов. Одним из возможных механизмов может быть состояние погружения в себя, к которому ведет медитация, а также ее успокоительное и анти-стрессовое воздействие на психику, полагает Готе. Она и ее коллеги намерены продолжить исследования в этом направлении.', is_published: true

Article.create title: 'Почему не лает собака', anonce: 'Кавалер ордена Британской Империи Теодор Шанин об идейной молодежи', text: 'Вроде бы XXI век начался совсем недавно, а тем, кто в 1999 году только заканчивал школу, уже за тридцать. И можно говорить о целом поколении россиян, чье становление состоялось уже в новом веке. Эти люди не знали Советского Союза, они не помнят перестройку, а вся их самостоятельная жизнь прошла в новой России.

Наш собеседник — президент Московской высшей школы социальных и экономических наук (МВШСЭН), социолог, профессор Манчестерского университета, кавалер ордена Британской империи, Теодор Шанин.

«Лента.ру»: Давайте начнем вот с чего: что нужно, чтобы поколение состоялось? Почему вдруг появляются потерянное поколение, дети цветов, шестидесятники, Generation X, новые русские… И почему одни ровесники становятся поколением со своей харизмой, историей, культурой, пафосом наконец, а другие — нет? Для этого нужны какие-то специальные условия?

Теодор Шанин: Во-первых, не знаю… Во-вторых, в этом есть что-то магическое… Вдруг выделяется определенная группа, в которой мы находим нечто особенное... Поколение — это картинка, которую мы рисуем сами, это конструкция, которую, чтобы она состоялась, нужно обязательно сравнить с чем-то другим…

Если обязательно сравнить, то есть с чем — у нас же есть вполне отчетливый ряд: рожденные в СССР, дети перестройки и те, о ком мы сейчас говорим, — поколение XXI века.

Об этом поколении пока много не говорят, и это может быть указанием, что оно не имеет пока каких-то отчетливых характеристик, которые бросаются в глаза. Или не существует ясного сравнения, или нет особенностей, или, наоборот, есть что-то, что мешает нам это увидеть. Закрывает нам глаза. Когда ты не видишь чего-то, причина может быть в том, что этого просто не существует. Или тебе что-то мешает это увидеть.', is_published: true

Article.create title: 'Мифы о поколении П', anonce: 'Аналитический доклад Центра стратегических коммуникаций «15 лет Путина', text: 'Аналитический доклад Центра стратегических коммуникаций «15 лет Путина, начало новой эры» уже наделал немало шума в прессе. Президент центра, известный российский политолог Дмитрий Абзалов уверен: новый термин «поколение Путина» все прочнее будет входить в разговорный обиход россиян. Кого он считает поколением П и каковы его перспективы? Ему слово.

— Объектом нашего исследования стала возрастная группа «тридцать пять минус», в целом же, она гораздо шире, ее верхняя граница определяется возрастом 40-45 лет. Нам было интересно посмотреть, как ключевые решения, принятые системой за последние годы, начали формировать это поколение. Основное послание нашего доклада состояло в том, чтобы определить направления, в которых это поколение может оказать влияние на общественно-политические процессы в ближайшие несколько лет.

Если говорить о политическом сегменте, то значительно расширено пространство для молодых политиков, начиная с муниципального уровня. В современном мире большинство лидеров именно оттуда начинало свое восхождение. Классический пример: тот же Барак Обама на заре своей политической карьеры занимался в чикагском муниципалитете вопросами правовой поддержки малоимущих граждан.', is_published: true

