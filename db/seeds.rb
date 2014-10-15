# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.create id: 1, name: 'News'
Category.create id: 2, name: 'Politics'
Category.create id: 3, name: 'Culture'
Category.create id: 4, name: 'Sport'
Category.create id: 5, name: 'Tech'
Category.create id: 6, name: 'World'
Category.create id: 7, name: 'Business'

User.create id: 10, name: 'Oliver Twist', email: 'test1@mkechinov.ru', encrypted_password: '12345678'

Article.create id: 99, title: 'Wisbech: the end of the road for migrant workers', anonce: 'Most of Wisbech’s 10,000 migrant workers have travelled from eastern Europe with dreams of earning a better living', text: 'Vera, 56, says she doesn’t know who she lives with or the name of the person she pays her rent to. She is unable to produce her passport or payslips. She is uneasy at being questioned, either very confused or very unwilling to reveal any information; she sits on her bed with her head in her hands.

Council officers interviewing her, during an unannounced visit to the dilapidated house where she rents a room alongside at least nine other eastern European migrant workers, are increasingly concerned by her responses. Failure to provide a passport or payslips, and refusal to reveal employment details, are key indicators of exploitation.

Vera (not her real name) works in East Anglia, sometimes picking broccoli, sometimes wrapping the flowers that go on sale at petrol stations, sometimes packing up fruit for supermarkets. She came here three years ago from Lithuania. She won’t say much except that she is not happy, that she used to get more work, but now is being given very little to do. She slumps on the dramatically sagging mattress in the midst of a chaotic room, strewn (since there are no cupboards) with a muddle of tangled clothes and old belongings, and begins to cry.', is_published: true

Article.create id: 98, title: '11 of the world\'s most amazing train stations', anonce: ' Whether they\'re blasting over the tracks in Germany or Japan, trains offer travelers a chance to sit back and relax as they ride through some of the world\'s most incredible scenery.', text: 'Whether they\'re blasting over the tracks in Germany or Japan, trains offer travelers a chance to sit back and relax as they ride through some of the world\'s most incredible scenery.
But often the stations the trains depart from are an attraction in their own right, counting among the world\'s most beautiful pieces of architecture.
Hamburg-based architectural data company, Emporis just released a list of 11 of the world\'s most spectacular train stations.', is_published: true

Article.create id: 97, title: 'Toxic conundrum: Dealing with Dounreay\'s leftovers', anonce: 'Built in the 1950s to push forward the UK\'s nuclear energy ambitions, Dounreay is now at the centre of complex £1.6bn demolition job.', text: 'The incident which saw cargo ship Parida drifting in the Moray Firth has, and not for the first time, cast a spotlight on the issue of dealing with part of Dounreay\'s legacy - its tonnes of radioactive waste, nuclear fuel and other contaminated material.

So how are these toxic leftovers being handled, and what kinds of material are involved?', is_published: true

Article.create id: 96, title: 'Цирк на развалинах', anonce: 'Кубинские дети осваивают одну из самых престижных в стране профессий', text: 'Быть циркачом на Кубе почетно. Эта работа — одна из немногочисленных возможностей иметь действительно неплохой и стабильный заработок, а также выезжать за границу. Во время гастролей за рубежом кубинские артисты получают минимум тысячу долларов в месяц (часто — значительно больше). Это составляет разительный контраст с зарплатами населения в стране. Для 70 гаванских детей финансовой мотивации оказалось достаточно, чтобы начать тренировки в полуразрушенном городском кинотеатре. Почти каждый день будущие акробаты, жонглеры и фокусники упражняются на трамплинах, брусьях и батутах под присмотром учителя. Через прохудившуюся крышу в помещение заглядывает голубое кубинское небо, но пока сезон дождей не начался, — это не проблема.', is_published: true

Article.create id: 95, title: '25 СМС от людей, которые найдут выход из любой ситуации', anonce: 'Жизнь периодически ставит нас в тупики, но оптимизм и находчивость помогают стойко преодолевать трудности', text: 'Жизнь периодически ставит нас в тупики, но оптимизм и находчивость помогают стойко преодолевать трудности. А современные технологии помогают запечатлевать моменты общения, когда изобретательность восторжествовала, и делиться ими в сети.', is_published: true

Article.create id: 94, title: 'Голливудские истории юрского периода', anonce: 'Палеообзор «Ленты.ру»: живые дредноуты, инопланетные драконы и губы Анджелины Джоли', text: '«Лента.ру» публикует свой первый палеообзор, намереваясь и впредь знакомить читателей с открытиями в области палеонтологии. Крупнейший динозавр весом в 65 тонн; поиски останков таинственного спинозавра, достойные экранизации Джорджем Лукасом; череп мезозавра, оказавшийся камнем; китайские драконы-икраны; а также заочный спор Анджелины Джоли и Мика Джаггера из-за губ бегемотосвина — все то, чем запомнится палеонтологам сентябрь 2014 года.', is_published: true

Article.create id: 93, title: 'Рекламу Москвы придумают любители', anonce: 'Комитет по туризму и гостиничному хозяйству объявил открытый конкурс на создание рекламы Москвы', text: 'Комитет по туризму и гостиничному хозяйству объявил открытый конкурс на создание рекламы Москвы. Как сообщают организаторы, предложить свой вариант того, как лучше рекламировать столицу, может любой желающий вне зависимости от возраста и рода занятий.

Участник может предложить работу в любую из трех категорий: «Лучший сценарий для ТВ-ролика о Москве», «Лучший ролик о Москве» или же «Серия фотографий Москвы как туристического центра».

Лучший сценарий используют для создания видеоролика, который собираются транслировать в эфире международных телеканалов. Лучшее видео о Москве опубликуют на сайте Москомтуризма travel2moscow.com и в социальных сетях. Работы-победители из третьей категории будут использовать в полиграфической продукции комитета и на стендах ведомства во время международных выставок. Работы будут публиковать на специальном сайте конкурса.', is_published: true

Article.create id: 92, title: 'Занятия йогой стимулируют мозг лучше фитнеса', anonce: 'Только одно двадцатиминутное занятие хатха-йогой резко увеличивает скорость и точность выполнения тестов', text: 'Йога, в отличие от фитнеса, значительно улучшает мозговую функцию, пришли к выводу американские исследователи. Только одно двадцатиминутное занятие хатха-йогой резко увеличивает скорость и точность выполнения тестов на объем рабочей памяти и самоконтроль, свидетельствующих о способности к длительной концентрации, к запоминанию и использованию новой информации, чего нельзя сказать о занятии фитнесом любой интенсивности той же продолжительности. Результаты исследования опубликованы в журнале Journal of Physical Activity and Health.

В качестве участников эксперимента были выбраны 30 молодых здоровых девушек-студенток (средний возраст - 20 лет), которым было предложено в течение 20 минут выполнять последовательность асан в положении сидя, стоя и лежа, включающих изометрическое напряжение и расслабление различных групп мышц и регулирование дыхания. Занятие завершалось медитацией и глубоким дыханием.

Девушки также выполняли 20-минутные физические упражнения - шли или бежали трусцой на тренажере «бегущая дорожка». Каждая из участниц самостоятельно выбирала подходящую ей скорость и наклон тренажера таким образом, чтобы во время занятия частота сердечных сокращений поддерживалась на 60-70 процентном уровне от максимума. Как пояснила лидер группы исследователей, Неха Готе (Neha Gothe) из университета штата Иллинойс, такой ритм был выбран на основании результатов предыдущих экспериментов, показавших, что подобная частота сердцебиения улучшает когнитивные способности.

В состоянии покоя, а также после каждого занятия йогой или фитнесом девушки выполняли тесты на рабочую память и самоконтроль. В результате оказалось, что после йоги скорость и точность выполнения тестов значительно увеличивалась по сравнению с состоянием покоя, а после фитнеса - практически не изменялась.

«После выполнения асан участницы лучше фокусировали свои умственные ресурсы, их мозг быстрее и правильнее обрабатывал информацию, словом действовал значительно более эффективно, чем после «бегущей дорожки», - отметила Готе. По ее мнению, объяснить полученные результаты можно влиянием многих факторов. Одним из возможных механизмов может быть состояние погружения в себя, к которому ведет медитация, а также ее успокоительное и анти-стрессовое воздействие на психику, полагает Готе. Она и ее коллеги намерены продолжить исследования в этом направлении.', is_published: true

