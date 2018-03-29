using namespace std;

# include "ErrorHandling.h"
# include <iostream>

void ErrorHandling::ThrowError(int code, int line)
{
    cout << "\033[1;31mLigne " << line << " - Erreur " << code << " : ";

    switch(code) {
        // Semantic errors
        case 101:
            cerr << "Déclaration de variable déjà existante" << endl;
            exit(101);
            break;
        case 102:
            cerr << "Déclaration de variable définie en paramètre de la fonction" << endl;
            exit(102);
            break;
        case 103:
            cerr << "Déclaration d'une variable déjà définie globalement" << endl;
            exit(103);
            break;
        case 104:
            cerr << "Utilisation d'une variable non déclarée" << endl;
            exit(104);
            break;

        // Lex errors
        case 201:
            cerr << "Caractère invalide rencontré" << endl;
            exit(201);
            break;
        
        // Syntax errors:
        case 301:
            cerr << "Deux opérateurs suivis recontrés" << endl;
            exit(301);
            break;
        case 302:
            cerr << "Deux opérandes suivies rencontrées" << endl;
            exit(302);
            break;
        case 303:
            cerr << "Absence de point-virgule en fin de ligne" << endl;
            exit(303);
            break;
        case 304:
            cerr << "Parenthèse attendue" << endl;
            exit(304);
            break;
        case 305:
            cerr << "Trop de parenthèses fermantes" << endl;
            exit(305);
            break;
    }

    cout << "033[0m\n" << endl;

    exit(code);
}