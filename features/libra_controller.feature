# language: ru
@libra @controller
@wip
Свойство: Правач бук
   Предыстория:
      * є користник сѫ токеном и даными:
         | id        | 10000              |
         | email     | mylo@koristnika.ru |
         | password  | 1234567890         |
      * є ѧзык сѫ даными:
         | id           | 200001 |
         | code         | rus    |
         | meta         | {}     |
      * є азбука сѫ даными:
         | id           | 200001 |
         | code         | rus    |
         | meta         | {}     |
      * є мѣта сѫ даными:
         | id           | 200001    |
         | kind         | article   |
         | title        | tag1      |
      * є новина
      * є буко сѫ даными:
         | id        | 100000             |
         | title     | Текст 1            |
         | text      | Текстовая строка   |

   @json @create
   Пример: Користник створяє бука
      Допустим користник є правчиком
      Если є створенје бука сѫ даными:
         | author_id | 10000              |
         | title     | Текст 3            |
         | text      | Текстовая строка 3 |
         | abstract  | Текстовая 3        |
         | cover_uri | https://uri.ru/uri |
         | tags      | [tag1]             |
      То добѫдѫ кодъ поврата "200"
      И послѣдня изнаходь бука бѫдє яко:
         """
         ---
         title: Текст 3
         text: Текстовая строка 3
         abstract: Текстовая 3
         cover_uri: https://uri.ru/uri
         tag_ids: [200001]
         """

   @json @update
   Пример: Користник поновяє дане
      Допустим користник є правчиком
      Если запытам одсланје бука во изнаходь "/library/100000.json" сѫ даными:
         | title  | Текст 2            |
         | text   | Текстовая строка 2 |
      То добѫдѫ кодъ поврата "200"
      И запытам добыванје из изнаходи "/library/100000.json"
      То добѫдѫ кодъ поврата "200"
      И добѫдѫ вывод:
         """
         ---
         id: 100000
         title: Текст 2
         text: Текстовая строка 2
         """

   @json @get
   Пример: Користник добыває дане бука
      Если запытам добыванје из изнаходи "/library/100000.json"
      То добѫдѫ вывод:
         """
         ---
         id: 100000
         title: Текст 1
         text: Текстовая строка
         """

   @json @index
   Пример: Користник добыває списъ даных
      Если запытам добыванје из изнаходи "/library.json"
      То добѫдѫ вывод:
         """
         ---
         list:
          - id: 100000
            title: Текст 1
            text: Текстовая строка
         total: 1
         """

   @json @delete
   Пример: Користник изтьрає иззначене буке
      Допустим користник є правчиком
      Если запытам добыванје из изнаходи "/library.json"
      То добѫдѫ вывод:
         """
         ---
         list:
          - id: 100000
            title: Текст 1
            text: Текстовая строка
         total: 1
         """
      Если запытам изтрѣнје изнаходи "/library/100000.json"
      То добѫдѫ кодъ поврата "200"
      И бука сѫ озом "100000" не будє єствовати
      Если запытам добыванје из изнаходи "/library.json"
      То добѫдѫ вывод:
         """
         ---
         list: []
         total: 0
         """

   @json @index @tags
   Пример: Користник добыває списъ даных по мѣтам
      Допустим є мѣта сѫ даными:
         | id           | 200002    |
         | kind         | librum    |
         | title        | tag2      |
      И є буко сѫ даными:
         | id        | 100002             |
         | title     | Текст 2            |
         | text      | Текстовая строка 2 |
         | tags      | [tag1,tag2]        |
      Если запытам добыванје из изнаходи "/library.json?by_tags[]=tag1&by_tags[]=tag2"
      То добѫдѫ вывод:
         """
         ---
         list:
          - id: 100002
            title: Текст 2
            text: Текстовая строка 2
            tag_ids: [200001,200002]
         page: 1
         per: 25
         total: 1
         """

   @json @create
   Пример: Користник кушає створити бука
      Если є створенје бука сѫ даными:
         | id        | 200001             |
         | author_id | 10000              |
         | title     | Текст 3            |
         | text      | Текстовая строка 3 |
      То добѫдѫ кодъ поврата "403"
      И бука сѫ озом "200001" не будє єствовати

   @json @update
   Пример: Користник кушає поновити дане
      Если запытам одсланје бука во изнаходь "/library/100000.json" сѫ даными:
         | title  | Текст 2            |
         | text   | Текстовая строка 2 |
      То добѫдѫ кодъ поврата "403"
      И запытам добыванје из изнаходи "/library/100000.json"
      То добѫдѫ кодъ поврата "200"
      И послѣдня изнаходь бука бѫдє яко:
         """
         ---
         id: 100000
         author_id: 10000
         title: Текст 1
         text: Текстовая строка
         """

   @json @delete
   Пример: Користник кушає изтьрѣти иззначена бука
      Если запытам изтрѣнје изнаходи "/library/100000.json"
      То добѫдѫ кодъ поврата "403"
      И послѣдня изнаходь бука бѫдє яко:
         """
         ---
         id: 100000
         author_id: 10000
         title: Текст 1
         text: Текстовая строка
         """
