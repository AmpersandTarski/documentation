    Github account aanmaken op https://www.github.com
    En mij username laten weten
    
    Install Git for Windows:
    http://msysgit.github.io/
    Alles default, behalve:
      4e scherm "Windows Explorer integration" / "Simple context menu" / "Git Bash here" aanvinken
      6e scherm "Use Git from the Windows Command Prompt"
    
    Install TortoiseGit:
    https://code.google.com/p/tortoisegit/wiki/Download
      Alles default
      
    Install SourceTree:
    http://www.sourcetreeapp.com
      No global ignore, verder alles default
      Bij Add an account, selecteer GitHub en vul inloggegevens in
    (Omdat Ampersand met grote repositories werkt, is Sourcetree supertraag op Windows.
     De wat oudere versie
     http://downloads.atlassian.com/software/sourcetree/windows/SourceTreeSetup_1.5.2.exe
     heeft daar geen last van. Download deze versie voor een merkbaar snellere beleving.)
    (Git kan ook wat versnelling leveren, naar het schijnt:
     >     git config --global core.preloadindex true
     >     git config --global core.fscache true
     >     git config --global gc.auto 256
     maar ik heb geen idee waarom...)

    Install KDiff3:
    http://sourceforge.net/projects/kdiff3/files/kdiff3/
    To select KDiff3 in SourceTree, go to SourceTree / Tools / Options / Diff and select KDiff3 for External Diff Tool and Merge Tool.
    
    Start / All programs / Git / Git GUI: 
      Help / Show SSH Key
      Press Generate Key
      Key kan beveiligd worden met een passphrase, maar dat is niet strikt noodzakelijk, zolang je de bijbehorende private key niet in handen van anderen laat komen (staat in $home/.ssh/id_rsa). Bij gebruik van een passphrase moet je die wel af en toe intikken.
      Copy To Clipboard en mailen naar martijn@oblomov.com 
        Ik zorg ervoor dat je met je key op sentinel en je eigen account kan inloggen op sentinel.tarski.nl
      Op https://www.github.com (jouw persoonlijke pagina) naar Settings (tandwieltje rechtsboven) / SSH keys:
      Druk op "Add SSH Key"
       Title: beschrijving van de machine waarop je nu werkt (Bv. "Windows Laptop Stef")
       Key: Ctrl-V 
      Druk op "Add Key"
      
    Pin Git Bash to Start menu
    
    
    
    Checkout Ampersand:
    Standaard is een directory "git" in je home directory te gebruiken voor alle repositories
    
    Makkelijkst met SourceTree, gewoon selecteren bij opstarten, wel even goede directory selecteren.
    
    Ook makkelijk met Git Bash:
     cd git
     git clone git@github.com:Oblosys/Ampersand.git
     
    Tortoise Git:
      Eerste keer eerst ssh instellen: Start / All Programs / TortoiseGit / Network:
        Bij "SSH Client" invullen:   C:\Program Files (x86)\Git\bin\ssh.exe
        
      Uitchecken vanuit Explorer context menu in directory git: Git Clone
        URL: git@github.com:Oblosys/Ampersand.git
        Druk op OK
        
    
    Sentinel:
    
    Als jouw key geinstalleerd is op sentinel.tarski.nl, kun je inloggen met
        ssh sentinel@sentinel.tarski.nl
        ssh USERNAME@sentinel.tarski.nl
        
    Zodra alle users hun key geinstalleerd hebben kan password verificatie uit voor sentinel.tarski.nl zodat die een stuk veiliger wordt.
        
