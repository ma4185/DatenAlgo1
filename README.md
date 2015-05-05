#Programmieraufgabe zum 05.05.2015
         WP Daten und Algorithmen
         Jade Hochschule Oldenburg

##Autoren  
          - Hanna Möhle (6006825)
          - Nora Jürgens (6006799)
          - Maren Osterloh (6007218)

##Aufgabenstellung
         Es sollte ein Programm erstellt werden, welches eine Datenbank nach verschiedenen Eingabewerten durchsucht.
         Durchsuchungsmöglichkeiten: Person, Wort, Satz und Phonem.
         Zusätzlich soll nach Kombinationen dieser Parameter gesucht werden können.
    
##Dependencies
         1. Matlab
         2. Datenbank (TIMIT MIT)

##Speicherort
         Der Code suchen.m muss in dem Ordner TIMIT MIT abgelegt werden.
         Die zu untersuchenden Dateien liegen ebenfalls in diesem Ordner.

##Benutzungshinweise
         Im Command Window wird die Datei suchen.m mit vier möglichen Eingabeparametern aufgerufen.
         Falls kein Eingabeparameter gewünscht wird, muss ein leere String eingegeben werden, welches
         aus folgenden Zeichen besteht ''.
         Wird für alle vier Parameter ein leerer String eingegeben, werden alle Dateien ausgegeben. 
         Die verwendeten Dateien sind: allsenlist.txt und allphonelist.txt.
         
         In dem 'TestSkript' sind verschiedene Beispiele eingegeben, die ein- und auskommentiert werden
         können, sodass durch Ausführen von 'Testskript' die Funktion suchen.m abgerufen wird.
         
         Beispiel:
         [Ausgabe] =suchen3( '', 'she', '', '');
         % suchen3( Phonem, Wort, Satz, Person
         datei
         satze
         In diesem Fall gibt das Programm

         
###mögliche Eingabewerte
         - für die Personen können mcpm, fvmh, marc, faem, madc, falk, maeb, falr, mbgt, ftlg, mbma, fapb, madd,
           fblv, mbcg, fbcg, um einen positives Suchergebnis zu bekommen
         - die Parameter für die Personen sind in den verwendeten Textdateien auf der linken Seite zu erkennen
         - für die Wörter und Sätze kann für ein positives Suchergebnis die Datei allsenlist.txt verwendet werden
         - für die Phoneme kann positives Suchergebnis die Datei allphonelist.txt verwendet werden
         
##Änderungshistorie
         1. Programm1.m (09.04.2015)
         2. Test1_17_04.m (17.04.2015)
         3. Test1_27.04.m (27.04.2015)
         4. suchenalt.m (29.04.2015)
         5. suchen2.m (30.04.2015)
         6. suchen3.m Version 1.0 (30.04.2015)
         7. suchen3.m Version 2.0 (04.05.2015)
         8. suchen.m (05.05.2015)
         
##weitere Ideen
         - 
         
