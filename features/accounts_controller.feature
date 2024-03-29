# language: ru
@account @controller
@wip
Свойство: Правач учетък
   Предыстория:
      * є социалка сѫ даными:
         | id           | 200001       |
         | uri          | email://loc  |
         | kind         | email        |
         | meta         | {}           |
      * є користник сѫ токеном и даными:
         | id        | 200001    |
         | email     | w@sss.ru  |
         | firstname | Валос     |
      * є учетка сѫ даными:
         | id           | 200001 |
         | sid          | 111    |
         | user_id      | 200001 |
         | social_id    | 200001 |

   @json @create
   Пример: Користник створяє учетке
      Если є створение учетък сѫ даными:
         | id           | 200002 |
         | sid          | 222    |
         | user_id      | 200001 |
         | social_id    | 200001 |
      И послѣдня изнаходь учетке бѫдє яко:
         """
         ---
         id: 200002
         sid: 222
         user_id: 200001
         social_id: 200001
         """

   @json @update
   Пример: Користник поновяє дане учетке
      Если запытам одсланје учетке во изнаходь "/ac/200001.json" сѫ даными:
         | sid          | 222    |
         | user_id      | 200001 |
         | social_id    | 200001 |
      То добѫдѫ кодъ поврата "200"
      Если запытам добыванје из изнаходи "/ac/200001.json"
      То добѫдѫ кодъ поврата "200"
      И добѫдѫ вывод:
         """
         ---
         id: 200001
         sid: 222
         user_id: 200001
         social_id: 200001
         """

   @json @get
   Пример: Користник добыває дане учетке
      Если запытам добыванје из изнаходи "/ac/200001.json"
      То добѫдѫ вывод:
         """
         ---
         id: 200001
         sid: 111
         user_id: 200001
         social_id: 200001
         """

   @json @index
   Пример: Користник добыває списъ учетък
      Если запытам добыванје из изнаходи "/ac.json"
      То добѫдѫ вывод:
         """
         ---
         list:
          - sid: w@sss.ru
            user_id: 200001
            social_id: 200001
          - id: 200001
            sid: 111
            user_id: 200001
            social_id: 200001
         total: 2
         """

   @json @delete
   Пример: Користник изтьрає иззначене учетке
      Если запытам изтрѣнје изнаходи "/ac/200001.json"
      То добѫдѫ кодъ поврата "200"
      И учетке сѫ озом "200001" не будє єствовати
