# language: ru
@alphabeths @controller
@wip
Свойство: Правач граматик
   Предыстория:
      * є ѧзык сѫ даными:
         | id           | 200001 |
         | code         | rus    |
         | meta         | {}     |
      * є азбука сѫ даными:
         | id           | 200001 |
         | code         | rus    |
         | meta         | {}     |
      * є словник сѫ даными:
         | id           | 200001                |
         | uri          | https://glosbe.com/en |
         | meta         | {}                    |
      * є граматика сѫ даными:
         | id              | 200001 |
         | language_id     | 200001 |
         | alphabeth_id    | 200001 |
         | dictionary_id   | 200001 |
         | meta            | {}     |
      * є користник сѫ прѣзвищем 'user' и токеном

   @json @create
   Пример: Користник створяє граматикъ
      Допустим є словник сѫ даными:
         | id           | 200002                |
         | uri          | https://glosbe.com/ru |
         | meta         | {}                    |
      Если є створение граматике сѫ даными:
         | id              | 200002       |
         | language_id     | 200001       |
         | alphabeth_id    | 200001       |
         | dictionary_id   | 200002       |
         | meta            | {data: "1"}  |
      И послѣдня изнаходь граматике бѫдє яко:
         """
         ---
         id: 200002
         language_id: 200001
         alphabeth_id: 200001
         dictionary_id: 200002
         meta: {data: "1"}
         """

   @json @update
   Пример: Користник поновяє дане граматике
      Допустим є словник сѫ даными:
         | id           | 200002                |
         | uri          | https://glosbe.com/ru |
         | meta         | {}                    |
      Если запытам одсланје граматике во изнаходь "/g/200001.json" сѫ даными:
         | code            | chu          |
         | language_id     | 200001       |
         | alphabeth_id    | 200001       |
         | dictionary_id   | 200002       |
         | meta            | {}           |
      То добѫдѫ кодъ поврата "200"
      Если запытам добыванје из изнаходи "/g/200001.json"
      То добѫдѫ кодъ поврата "200"
      И добѫдѫ вывод:
         """
         ---
         id: 200001
         language_id: 200001
         alphabeth_id: 200001
         dictionary_id: 200002
         meta: {}
         """

   @json @get
   Пример: Користник добыває дане граматике
      Если запытам добыванје из изнаходи "/g/200001.json"
      То добѫдѫ вывод:
         """
         ---
         id: 200001
         language_id: 200001
         alphabeth_id: 200001
         dictionary_id: 200001
         meta: {}
         """

   @json @index
   Пример: Користник добыває списъ граматик
      Если запытам добыванје из изнаходи "/g.json"
      То добѫдѫ вывод:
         """
         ---
         list:
          - id: 200001
            language_id: 200001
            alphabeth_id: 200001
            dictionary_id: 200001
            meta: {}
         total: 1
         """

   @json @delete
   Пример: Користник изтьрає иззначене граматике
      Если запытам изтрѣнје изнаходи "/g/200001.json"
      То добѫдѫ кодъ поврата "200"
      И граматика сѫ озом "200001" не будє єствовати
