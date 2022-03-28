Feature: Logowanie do aplikacji

  Jako uzytkownik chce miec dostep do panelu logowania
  aby moc korzystac z zaawansowanych funkcji systemu


  Scenario: Poprawne logowanie do aplikacji
    Given Uzytkownik jest na stronie logowania
    When Uzytkownik wpisuje poprawny login
    And Uzytkownik wpisuje poprawne haslo
    And Uzytkownik klika przycisk Login
    Then Uzytkownik zostal poprawnie zalogowany


  Scenario: Niepoprawne logowanie do aplikacji
    Given Uzytkownik jest na stronie logowania
    When Uzytkownik wpisuje poprawny login
    And Uzytkownik wpisuje niepoprawne haslo
    And Uzytkownik klika przycisk Login
    Then Uzytkownik nie zostal zalogowany


  Scenario: Logowanie do aplikacji 2
    Given Uzytkownik jest na stronie "https://the-internet.herokuapp.com/login"
    When Uzytkownik do pola edytowalnego wpisuje login "tomsmith"
    And Uzytkownik do pola edytowalnego wpisuje haslo "SuperSecretPassword!"
    And Uzytkownik klika przycisk Login
    Then Uzytkownik zostal poprawnie zalogowany


  Scenario: Logowanie do aplikacji 3
    Given Uzytkownik jest na stronie "https://the-internet.herokuapp.com/login"
    When Uzytkownik do pola edytowalnego wpisuje login "tomsmith1"
    And Uzytkownik do pola edytowalnego wpisuje haslo "SuperSecretPassword!"
    And Uzytkownik klika przycisk Login
    Then Uzytkownik nie zostal zalogowany


  Scenario: Logowanie do aplikacji 4
    Given Uzytkownik jest na stronie "https://the-internet.herokuapp.com/login"
    When Uzytkownik do pola edytowalnego wpisuje login "tomsmith1"
    And Uzytkownik do pola edytowalnego wpisuje haslo "SuperSecretPassword!1"
    And Uzytkownik klika przycisk Login
    Then Uzytkownik nie zostal zalogowany


  Scenario Outline: Logowanie do aplikacji
    Given Uzytkownik jest na stronie "https://the-internet.herokuapp.com/login"
    When Uzytkownik wpisuje login <loginek>
    And Uzytkownik wpisuje haslo <haselko>
    And Uzytkownik klika przycisk Login
    Then Uzytkownik nie zostal zalogowany

    Examples:
      | loginek   | haselko               |
      | tomsmith1 | SuperSecretPassword!  |
      | tomsmith  | SuperSecretPassword!1 |
      | tomsmith1 | SuperSecretPassword!1 |
