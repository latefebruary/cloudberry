новостной сайт, где новости предлагают пользователи.

1. Авторизация пользователей
Пользователь должен иметь возможность регистрироваться, входить и выходить из своего аккаунта.
При регистрации пользователь помимо email указывает свое отображаемое имя.
Регистрация не обязательна для просмотра статей и написания комментариев.
Использовать гем devise.

2. Статьи
Зарегистрированный пользователь должен иметь возможность написать статью. 
Статья состоит из:
заголовка
анонса (краткое описание)
тела статьи

В статье можно использовать разметку, вставлять картинки и видео с youtube. Это делается с помощью Redactor.

Статьи относятся к категориям (политика, спорт, культура, …). То есть, отношение многие-ко-многим (пример).

После создания статьи она ожидает модерации и не отображается на главной странице.

На главной странице должен быть выбор категории.
Статьи сортируются по дате создания (свежие-сверху).
Статьи должны разбиваться на страницы (kaminari или will_paginate).

3. Комментарии
К статьям можно оставлять комментарии. К комментариям тоже можно оставлять комментарии. Регистрация пользователя необязательна.

Рядом с комментарием должно указываться имя комментатора и время.

4. Подписки
Зарегистрированный пользователь должен иметь возможность подписаться на новости определенной категории. Если он это сделал, то ему на почту должны приходить письма с анонсами статей и ссылкой на полную статью.
Пользователь должен иметь возможность отписаться от рассылки, перейдя по прямой ссылке из письма. Должно работать, даже если пользователь не залогинен.
Рассылку нужно реализовать ориентированной на highload.

5. Админка
Некоторые пользователи являются админами.
Админ должен иметь возможность удалить любую статью или комментарий (для него показывается ссылка на удаление около статьи/комментария).
Должна быть админка, реализованная с помощью ActiveAdmin.
Главная страница админки должна показывать:
кол-во статей
кол-во зарегистрированных пользователей всего
кол-во зарегистрированных пользователей сегодня
Должен быть раздел управления статьями, где статью можно подтвердить, отклонить или удалить.
После подтверждения или отклонения статьи автор должен получить соответствующее письмо.
