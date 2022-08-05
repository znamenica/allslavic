# language: ru
@auth @controller
@wip
Функционал: Правач сличенјя (auth controller)
   Предыстория:
      * є ѧзык сѫ даными:
         | id           | 200001 |
         | code         | rus    |
         | meta         | {}     |
      * є азбука сѫ даными:
         | id           | 200001 |
         | code         | RUS    |
         | meta         | {}     |

#   Сценарий: Пресмѣрянје заказнои изнаходи на чишнику
#      Допустим є користник сѫ прѣзвищем "user"
#      Если запытам добыванје из изнаходи "/users/edit"
#      То добѫдѫ кодъ поврата "302"
#
#   Сценарий: Проверка сличенјя користника на чишнику в взору приявєнја
#      Допустим є користник сѫ прѣзвищем "user"
#      Если нєсм приявєным
#      И приявям сѧ сѫ завѣрєными даными
#      То добѫдѫ кодъ поврата "200"
#      И углѧдаѫ букє "Sign Out"
#      И углѧдаѫ букє мыла користника
#
#   Сценарий: Користник приявяє сѧ сѫ невѣрным мылом
#      Допустим є користник сѫ прѣзвищем "user"
#      Если нєсм приявєным
#      И приявям сѧ сѫ невѣрным мылом
#      То добѫдѫ кодъ поврата "200"
#      И углѧдаѫ букє "Sign In"
#      И углѧдаѫ букє "Invalid Email or password."
#
#   Сценарий: Користник приявяє сѧ сѫ невѣрноѫ лозинкоѫ
#      Допустим є користник сѫ прѣзвищем "user"
#      Если нєсм приявєным
#      И приявям сѧ сѫ невѣрноѫ лозинкоѫ
#      То добѫдѫ кодъ поврата "200"
#      И углѧдаѫ букє "Sign In"
#      И углѧдаѫ букє "Invalid Email or password."
#
#   Сценарий: Користник приявяє сѧ сѫ вѣрными даными
#      Допустим не є користника
#      Если нєсм приявєным
#      И приявям сѧ сѫ завѣрєными даными
#      То добѫдѫ кодъ поврата "200"
#      И углѧдаѫ букє "Sign In"
#      И углѧдаѫ букє "Invalid Email or password."
#
#   Сценарий: Користник од'явяє сѧ
#      Допустим є користник сѫ прѣзвищем "user"
#      И єсм приявєным
#      Если одꙇявям сѧ
#      То добѫдѫ кодъ поврата "200"
#      И углѧдаѫ букє "Sign In"
#      И углѧдаѫ букє "Signed out successfully."
#
#   Сценарий: Користник вꙇявяє сѧ сѫ вѣрными даными
#      Если вꙇявям сѧ сѫ вѣрными данными
#      То добѫдѫ кодъ поврата "200"
#      И сѫчасьн користник будє єствовати
#
#   Сценарий: Користник вꙇявяє сѧ сѫ невѣрным мылом
#      Если вꙇявям сѧ сѫ невѣрным мылом
#      То добѫдѫ кодъ поврата "200"
#      И сѫчасна користника не будє єствовати
#      И углѧдаѫ букє "Email is invalid"
#
#   Сценарий: Користник вꙇявяє сѧ сѫ пустоѫ лозинкоѫ
#      Если вꙇявям сѧ сѫ пустоѫ лозинкоѫ
#      То добѫдѫ кодъ поврата "200"
#      И сѫчасна користника не будє єствовати
#      И углѧдаѫ букє "Password can't be blank"
#
#   Сценарий: Користник вꙇявяє сѧ без потвьрꙉенја лозинке
#      Если вꙇявям сѧ без потвьрꙉенја лозинке
#      То добѫдѫ кодъ поврата "200"
#      И сѫчасна користника не будє єствовати
#      И углѧдаѫ букє "Password confirmation doesn't match Password"
#
#   Сценарий: Користник вꙇявяє сѧ сѫ невѣрным потвьрꙉенјем лозинке
#      Если вꙇявям сѧ сѫ невѣрным потвьрꙉенјем лозинке
#      То добѫдѫ кодъ поврата "200"
#      И сѫчасна користника не будє єствовати
#      И углѧдаѫ букє "Password confirmation doesn't match Password"
#
##   Сценарий: Приявям сѧ и правим своє имѧ
##      Допустим є користник сѫ прѣзвищем "user"
##      И єсм приявєным
##      Если правим своє имѧ
##      То добѫдѫ кодъ поврата "200"
##      Если запишем форму правке
##      То добѫдѫ кодъ поврата "200"
##      И правке сѫчасна користника будꙛ єствовати
#
#   Сценарий: Приявям сѧ и правим своє мыле
#      Допустим є користник сѫ прѣзвищем "user"
#      И єсм приявєным
#      Если правим своє мыле
#      То добѫдѫ кодъ поврата "200"
#      Если запишем форму правке
#      То добѫдѫ кодъ поврата "200"
#      И правке сѫчасна користника будꙛ єствовати
#
#   Сценарий: Приявям сѧ и правим своє мыле сѫ невѣрным мылом
#      Допустим є користник сѫ прѣзвищем "user"
#      И єсм приявєным
#      Если правим своє мыле сѫ невѣрным мылом
#      То добѫдѫ кодъ поврата "200"
#      Если запишем форму правке
#      То добѫдѫ кодъ поврата "200"
#      И правок сѫчасна користника не будє єствовати
#      И углѧдаѫ букє "Email is invalid"
#
#   Сценарий: Приявям сѧ и правим приявку без текучеи лозинке
#      Допустим є користник сѫ прѣзвищем "user"
#      И єсм приявєным
#      Если правим своє мыле без текучеи лозинке
#      То добѫдѫ кодъ поврата "200"
#      Если запишем форму правке
#      То добѫдѫ кодъ поврата "200"
#      И правок сѫчасна користника не будє єствовати
#      И углѧдаѫ букє "Current password can't be blank"
#
#   Сценарий: Приявям сѧ и правим своѫ лозинкѫ
#      Допустим є користник сѫ прѣзвищем "user"
#      И єсм приявєным
#      Если правим своѫ лозинкѫ
#      То добѫдѫ кодъ поврата "200"
#      Если запишем форму правке
#      То добѫдѫ кодъ поврата "200"
#      И правка лозинке сѫчасна користника будє єствовати
#      И углѧдаѫ букє "Your account has been updated successfully."
#
#   Сценарий: Приявям сѧ и правим своѫ лозинкѫ сѫ пустым потвьрꙉенјем
#      Допустим є користник сѫ прѣзвищем "user"
#      И єсм приявєным
#      Если правим своѫ лозинкѫ сѫ пустым потвьрꙉенјем
#      То добѫдѫ кодъ поврата "200"
#      Если запишем форму правке
#      То добѫдѫ кодъ поврата "200"
#      И правке лозинке сѫчасна користника не будє єствовати
#
#   Сценарий: Приявям сѧ и правим своѫ лозинкѫ сѫ невѣрным потвьрꙉенјем
#      Допустим є користник сѫ прѣзвищем "user"
#      И єсм приявєным
#      Если правим своѫ лозинкѫ сѫ невѣрным потвьрꙉенјем
#      То добѫдѫ кодъ поврата "200"
#      Если запишем форму правке
#      То добѫдѫ кодъ поврата "200"
#      И правке лозинке сѫчасна користника не будє єствовати
#
##   Сценарий: Обглѧд користиников
##      Допустим є користник сѫ прѣзвищем "user"
##      Если Обглѧдам користиников
##      То добѫдѫ кодъ поврата "200"
##      И углѧдаѫ имѧ сѫчаснаго користника
##
   @json
   Сценарий: Проверка сличенјя користника на чишнику
      Допустим є користник сѫ токеном и даными:
         | id        | 1000      |
         | email     | w@sss.ru  |
         | firstname | Валос     |
      Если запытам добыванје из изнаходи "/users/1000.json"
      То добѫдѫ вывод:
         """
         ---
         id: 1000
         accounts:
          - user_id: 1000
            sid: w@sss.ru
         names:
          - text: Валос
            dictumable_type: User
            dictumable_id: 1000
            type: Name
            kind: first_name
          - dictumable_type: User
            dictumable_id: 1000
            type: Name
            kind: nick_name
         """

   @json
   Сценарий: Проверка сличенјя користника на чишнику
      Допустим є користник сѫ токеном и даными:
         | id        | 1000      |
         | email     | w@sss.ru  |
         | firstname | Валос     |
      Если запытам добыванје из изнаходи "/users.json"
      То добѫдѫ вывод:
         """
         ---
         list:
          - id: 1000
            accounts:
             - user_id: 1000
               sid: w@sss.ru
            names:
             - text: Валос
               dictumable_type: User
               dictumable_id: 1000
               type: Name
               kind: first_name
             - dictumable_type: User
               dictumable_id: 1000
               type: Name
               kind: nick_name
         total: 1
         """

   @json
   Сценарий: Проверка одјявенја користника
      Допустим є користник сѫ токеном и даными:
         | id        | 1000      |
         | email     | w@sss.ru  |
         | firstname | Валос     |
      Если нєсм приявєным
      И приявям сѧ сѫ завѣрєными даными
      И запытам одстраненје изнаходи "/users/sign_out.json"
      То добѫдѫ кодъ поврата "200"
      И уже нєсм приявеным

   @json
   Сценарий: Проверка одјявенја користника
      Допустим є користник сѫ токеном и даными:
         | id        | 1000      |
         | email     | w@sss.ru  |
         | firstname | Валос     |
      Если запытам добыванје из изнаходи "/me.json"
      То добѫдѫ кодъ поврата "200"
      И добѫдѫ вывод:
         """
         ---
         id: 1000
         accounts:
          - user_id: 1000
            sid: w@sss.ru
         names:
          - text: Валос
            dictumable_type: User
            dictumable_id: 1000
            type: Name
            kind: first_name
          - dictumable_type: User
            dictumable_id: 1000
            type: Name
            kind: nick_name
         """

   @json
   Пример: Користник прави своє дане
      Допустим є користник сѫ токеном и даными:
         | id                    | 1000         |
         | email                 | w@sss.ru     |
         | firstname             | Валос        |
         | password              | СтараЛозинка |
         | password_confirmation | СтараЛозинка |
      Если запытам одсланје користника во изнаходь "/me.json" сѫ даными:
         """
         ---
         names_attributes:
          - text: Имя
            language_id: 200001
            alphabeth_id: 200001
            kind: first_name
          - text: Отчество
            language_id: 200001
            alphabeth_id: 200001
            kind: patronymic
          - text: Фамилия
            language_id: 200001
            alphabeth_id: 200001
            kind: last_name
          - text: Кликуха
            language_id: 200001
            alphabeth_id: 200001
            kind: nick_name
         """
      То добѫдѫ кодъ поврата "200"
      Если запытам добыванје из изнаходи "/me.json"
      То добѫдѫ кодъ поврата "200"
      И добѫдѫ вывод:
         """
         ---
         id: 1000
         accounts:
          - user_id: 1000
            sid: w@sss.ru
         names:
          - text: Валос
            dictumable_type: User
            dictumable_id: 1000
            type: Name
            kind: first_name
          - dictumable_type: User
            dictumable_id: 1000
            type: Name
            kind: nick_name
          - text: Имя
            dictumable_type: User
            dictumable_id: 1000
            type: Name
            kind: first_name
          - text: Отчество
            dictumable_type: User
            dictumable_id: 1000
            type: Name
            kind: patronymic
          - text: Фамилия
            dictumable_type: User
            dictumable_id: 1000
            type: Name
            kind: last_name
          - text: Кликуха
            dictumable_type: User
            dictumable_id: 1000
            type: Name
            kind: nick_name
         """

   @json
   Пример: Користник прави свою лозинку
      Допустим є користник сѫ токеном и даными:
         | id                    | 1000         |
         | email                 | w@sss.ru     |
         | firstname             | Валос        |
         | password              | СтараЛозинка |
         | password_confirmation | СтараЛозинка |
      Если запытам одсланје користника во изнаходь "/me.json" сѫ даными:
         | password              | НоваЛозинка  |
         | password_confirmation | НоваЛозинка  |
         | current_password      | СтараЛозинка |
      То добѫдѫ кодъ поврата "200"
      Если запытам добыванје новъ токенъ
      То добѫдѫ кодъ поврата "200"
      И добѫдѫ новъ токенъ
