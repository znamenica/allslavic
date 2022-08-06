# language: ru
@meanings @controller
@wip
Свойство: Правач значенјев
   Предыстория:
      * є значение сѫ даными:
         | id           | 200001 |
         | tag_ids      | []     |
         | article_ids  | []     |
      * є користник сѫ прѣзвищем 'user' и токеном

   @json @create
   Пример: Користник створяє значенје
      Если є створение значенја сѫ даными:
         | id           | 200002             |
         | tag_ids      | [1]                |
         | article_ids  | [2]                |
      И послѣдня изнаходь значенја бѫдє яко:
         """
         ---
         id: 200002
         tag_ids: [1]
         article_ids: [2]
         """

   @json @update
   Пример: Користник поновяє дане
      Если запытам одсланје значенја во изнаходь "/m/200001.json" сѫ даными:
         | tag_ids               | [3]          |
         | article_ids           | [4,5]        |
      То добѫдѫ кодъ поврата "200"
      Если запытам добыванје из изнаходи "/m/200001.json"
      То добѫдѫ кодъ поврата "200"
      И добѫдѫ вывод:
         """
         ---
         id: 200001
         tag_ids: [3]
         article_ids: [4,5]
         """

   @json @get
   Пример: Користник добыває дане значенја
      Если запытам добыванје из изнаходи "/m/200001.json"
      То добѫдѫ вывод:
         """
         ---
         id: 200001
         tag_ids: []
         article_ids: []
         """

   @json @index
   Пример: Користник добыває списъ значенјев
      Если запытам добыванје из изнаходи "/m.json"
      То добѫдѫ вывод:
         """
         ---
         list:
          - id: 200001
            tag_ids: []
            article_ids: []
         total: 1
         """

   @json @delete
   Пример: Користник изтьрає иззначене значенје
      Если запытам изтрѣнје изнаходи "/m/200001.json"
      То добѫдѫ кодъ поврата "200"
      И значение сѫ озом "200001" не будє єствовати