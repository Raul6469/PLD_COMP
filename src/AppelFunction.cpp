using namespace std;

#include "AppelFunction.h"
#include "DeclarationTab.h"
#include "VariableIndex.h"
#include "VariableOpe.h"
#include <iostream>

void AppelFunction::print(std::ostream &stream) const
{
    stream << " AppelFunction: Name=" << name;
    for (auto it : variables){

        if(VariableIndex *varInd = dynamic_cast<VariableIndex*>(it))
        {
            stream << *varInd;
        } else
        {
            if(VariableOpe *varOpe = dynamic_cast<VariableOpe*>(it))
            {
                stream << *varOpe;
            }
            else
            {
                stream << *it;
            }
        }
    }
    stream << endl;
}

std::ostream& operator<<(std::ostream& stream, const AppelFunction& appelFunction)
{
    stream << " AppelFunction: Name=" << appelFunction.name;
    for (auto it : appelFunction.variables){
        stream << *it;
    }
    stream << endl;
    return stream;
}

AppelFunction &AppelFunction::operator=(const AppelFunction &unAppelFunction) {
}

void AppelFunction::resolveScopeVariables(std::list<Declaration*> declProgramme, std::list<Declaration*> paramFunction, std::list<Declaration*> declBloc, std::list<Function*> functionProgram){
    std::list<Variable *> variables = getVariables();
    for (auto variable : variables){
        variable->resolveScopeVariables(declProgramme,paramFunction,declBloc,functionProgram);
    }
    for ( auto function : functionProgram){
        if (function->getName().compare(this->name) == 0){
            this->functionAssociee = function;
        }
    }
}

void AppelFunction::resolveTypeExpr(){
    if ( this->functionAssociee != nullptr){
        this->setType(this->functionAssociee->getTypeRetour());
    }
    else
    {
        cout << "error function does not exist" << endl;
    }
}

list <Variable *> AppelFunction::getVariables(){
    return this->variables;
}

AppelFunction::AppelFunction(const AppelFunction &unAppelFunction) {
#ifdef MAP
    cout << "Appel au constructeur de copie de <AppelFunction>" << endl;
#endif
}


AppelFunction::AppelFunction(std::string name, std::list<Variable *> variables) {
    this->name = name;
    this->variables = variables;
#ifdef MAP
    cout << "Appel au constructeur de <AppelFunction>" << endl;
#endif
}


AppelFunction::~AppelFunction() {
#ifdef MAP
    cout << "Appel au destructeur de <AppelFunction>" << endl;
#endif
}