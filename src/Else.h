#pragma once

#include "Instruction.h"
#include "Bloc.h"

class Else {

public:

    void print(std::ostream& stream) const;

    friend std::ostream& operator<< (std::ostream& stream, const Else& anElse);

    Else &operator=(const Else &unElse);

    Else(const Else &unElse);

    Else(Bloc* bloc);

    virtual ~Else();

private:
    Bloc* bloc;

};