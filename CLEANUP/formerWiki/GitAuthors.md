Huidige svn authors, te verkrijgen met

    svn log -q | awk -F '|' '/^r/ {sub("^ ", "", $2); sub(" $", "", $2); print $2" = "$2" <"$2">"}' | sort -u
in de root van de respectievelijke svn working copies.


## Authors voor git2svn

    stefjoosten      = Stef Joosten <stef.joosten@ou.nl>
    sjo              = Stef Joosten <stef.joosten@ou.nl>
    Han_Joosten      = Han Joosten <han.joosten.han@gmail.com>
    han_joosten      = Han Joosten <han.joosten.han@gmail.com>
    hanj             = Han Joosten <han.joosten.han@gmail.com>
    VisualSVN Server = Han Joosten <han.joosten.han@gmail.com>
    Oblosys          = Martijn Schrage <martijn@oblomov.com>
    oblosys          = Martijn Schrage <martijn@oblomov.com>
    MartijnS         = Martijn Schrage <martijn@oblomov.com>
    sjcjoosten       = Sebastiaan Joosten <sjcjoosten@gmail.com>
    basj             = Sebastiaan Joosten <sjcjoosten@gmail.com>
    FerlonI          = Ferlon Illes <Ferlon.Illes@ordina.nl>
    bhr              = Bastiaan Heeren <Bastiaan.Heeren@ou.nl>
    MichielS         = Michiel Stornebrink <Michiel.Stornebrink@tno.nl>
    RieksJ           = Rieks Joosten <Rieks.Joosten@tno.nl>
    gmi001           = Gerard Michels <gerard.michels@ou.nl>
    gmi              = Gerard Michels <gerard.michels@ou.nl>
    EduW             = Edu Walter <edu.walter@ordina.nl>
    JohanH           = Johan Heuvelman <Johan.Heuvelman@ordina.nl>
    RichardtM        = Richard ter Mors <Richard.ter.Mors@ordina.nl>
    StefanH          = Stefan Herschbach <Stefan.Herschbach@ordina.nl>
    LeonC            = Leon Chevalking <leonchevalking@gmail.com>