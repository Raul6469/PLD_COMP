using namespace std;

#include "InitialisationTab.h"
#include <iostream>

void InitialisationTab::print(std::ostream &stream) const
{
    stream << " InitialisationTab: Type=" << type << " Name=" << name << " Size=" << size;
    for(auto var : variables){
        stream << *var;
    }
}

std::ostream& operator<<(std::ostream& stream, const InitialisationTab& initialisationTab)
{
    stream << " InitialisationTab: Type=" << initialisationTab.type << " Name=" << initialisationTab.name;
    stream << " Size=" << initialisationTab.size;
    for(auto var : initialisationTab.variables){
        stream << *var;
    }
    return stream;
}

InitialisationTab &InitialisationTab::operator=(const InitialisationTab &unInitialisationTab) {
}


InitialisationTab::InitialisationTab(Type type, Expression* expression, std::string name, std::list<Variable*> variables): Initialisation(type, expression, name) {
    this->variables = variables;
    this->size = variables.size();
#ifdef MAP
    cout << "Appel au constructeur de <InitialisationTab>" << endl;
#endif
}


InitialisationTab::~InitialisationTab() {
#ifdef MAP
    cout << "Appel au destructeur de <InitialisationTab>" << endl;
#endif
}