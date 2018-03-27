#!/bin/bash
. lib/assert.sh

# assert_contains_file asserts that the command outputs contains
# what is written in the specified file

# assert_contains_file "<command>" "<file containing expected output>"

# Custom tests

assert_contains_file "../bin/app Custom/01-simple-func.c"                                   "expected/custom/01.txt"
assert_contains_file "../bin/app Custom/03-decl-func.c"                                     "expected/custom/02.txt"
assert_contains_file "../bin/app Custom/04-multiple-decl.c"                                 "expected/custom/03.txt"
assert_contains_file "../bin/app Custom/06-simple-decl-func-bloc.c"                         "expected/custom/06.txt"
assert_contains_file "../bin/app Custom/07-simple-decl-func-bloc-mult.c"                    "expected/custom/07.txt"
assert_contains_file "../bin/app Custom/08-simple-func-param.c"                             "expected/custom/08.txt"
assert_contains_file "../bin/app Custom/09-simple-func-mult-param.c"                        "expected/custom/09.txt"
assert_contains_file "../bin/app Custom/10-decl-func-param-bloc.c"                          "expected/custom/10.txt"
assert_contains_file "../bin/app Custom/11-multiple-func.c"                                 "expected/custom/11.txt"
assert_contains_file "../bin/app Custom/12-return-int32.c"                                  "expected/custom/12.txt"
assert_contains_file "../bin/app Custom/13-return-int64.c"                                  "expected/custom/13.txt"
assert_contains_file "../bin/app Custom/14-return-char.c"                                   "expected/custom/14.txt"
assert_contains_file "../bin/app Custom/15-function-call.c"                                 "expected/custom/15.txt"
assert_contains_file "../bin/app Custom/16-function-call-params.c"                          "expected/custom/16.txt"
assert_contains_file "../bin/app Custom/17-retour-name.c"                                   "expected/custom/17.txt"
assert_contains_file "../bin/app Custom/18-retour-entier.c"                                 "expected/custom/18.txt"
assert_contains_file "../bin/app Custom/19-retour-caractere.c"                              "expected/custom/19.txt"
assert_contains_file "../bin/app Custom/20-affectation-simple.c"                            "expected/custom/20.txt"
assert_contains_file "../bin/app Custom/21-affectation-variable.c"                          "expected/custom/21.txt"
assert_contains_file "../bin/app Custom/22-return-fun.c"                                    "expected/custom/22.txt"

# Given tests

assert_contains_file "../bin/app Front/ValidPrograms/01_SimpleDeclaration.c"                "expected/front/valid/01.txt"
assert_contains_file "../bin/app Front/ValidPrograms/02_IncludeStdint.c"                    "expected/front/valid/02.txt"
assert_contains_file "../bin/app Front/ValidPrograms/03_OperatorPlus.c"                     "expected/front/valid/03.txt"
assert_contains_file "../bin/app Front/ValidPrograms/04_OperatorMinus.c"                    "expected/front/valid/04.txt"
assert_contains_file "../bin/app Front/ValidPrograms/05_OperatorDiv.c"                      "expected/front/valid/05.txt"
assert_contains_file "../bin/app Front/ValidPrograms/06_OperatorMult.c"                     "expected/front/valid/06.txt"
assert_contains_file "../bin/app Front/ValidPrograms/07_OperatorInf.c"                      "expected/front/valid/07.txt"
assert_contains_file "../bin/app Front/ValidPrograms/08_OperatorSup.c"                      "expected/front/valid/08.txt"
assert_contains_file "../bin/app Front/ValidPrograms/09_OperatorLeq.c"                      "expected/front/valid/09.txt"
assert_contains_file "../bin/app Front/ValidPrograms/10_OperatorGeq.c"                      "expected/front/valid/10.txt"
assert_contains_file "../bin/app Front/ValidPrograms/11_OperatorEqu.c"                      "expected/front/valid/11.txt"
assert_contains_file "../bin/app Front/ValidPrograms/12_OperatorDiff.c"                     "expected/front/valid/12.txt"
assert_contains_file "../bin/app Front/ValidPrograms/13_OperatorMod.c"                      "expected/front/valid/13.txt"
assert_contains_file "../bin/app Front/ValidPrograms/14_OperatorAnd.c"                      "expected/front/valid/14.txt"
assert_contains_file "../bin/app Front/ValidPrograms/15_OperatorOr.c"                       "expected/front/valid/15.txt"
assert_contains_file "../bin/app Front/ValidPrograms/16_OperatorBOr.c"                      "expected/front/valid/16.txt"
assert_contains_file "../bin/app Front/ValidPrograms/17_OperatorBAnd.c"                     "expected/front/valid/17.txt"
assert_contains_file "../bin/app Front/ValidPrograms/18_OperatorNeg.c"                      "expected/front/valid/18.txt"
assert_contains_file "../bin/app Front/ValidPrograms/20_OperatorRightShift.c"               "expected/front/valid/20.txt"
assert_contains_file "../bin/app Front/ValidPrograms/25_OperatorNot.c"                      "expected/front/valid/25.txt"
assert_contains_file "../bin/app Front/ValidPrograms/26_OperatorXor.c"                      "expected/front/valid/26.txt"
assert_contains_file "../bin/app Front/ValidPrograms/27_OperatorComp.c"                     "expected/front/valid/27.txt"
assert_contains_file "../bin/app Front/ValidPrograms/28_OperatorPlusAssign.c"               "expected/front/valid/28.txt"
assert_contains_file "../bin/app Front/ValidPrograms/29_OperatorMinusAssign.c"              "expected/front/valid/29.txt"
assert_contains_file "../bin/app Front/ValidPrograms/30_OperatorMultAssign.c"               "expected/front/valid/30.txt"
assert_contains_file "../bin/app Front/ValidPrograms/31_OperatorDivAssign.c"                "expected/front/valid/31.txt"
assert_contains_file "../bin/app Front/ValidPrograms/32_OperatorModAssign.c"                "expected/front/valid/32.txt"
assert_contains_file "../bin/app Front/ValidPrograms/33_OperatorBitAndAssign.c"             "expected/front/valid/33.txt"
assert_contains_file "../bin/app Front/ValidPrograms/34_OperatorBitOrAssign.c"              "expected/front/valid/34.txt"
assert_contains_file "../bin/app Front/ValidPrograms/35_OperatorBitXorAssign.c"             "expected/front/valid/35.txt"

assert_contains_file "../bin/app Front/ValidPrograms/37_Par.c"                              "expected/front/valid/37.txt"
assert_contains_file "../bin/app Front/ValidPrograms/38_ArithmeticExpression.c"             "expected/front/valid/38.txt"
assert_contains_file "../bin/app Front/ValidPrograms/39_ArithmeticExpressionWithPar.c"      "expected/front/valid/39.txt"
assert_contains_file "../bin/app Front/ValidPrograms/40_If.c"                               "expected/front/valid/40.txt"
assert_contains_file "../bin/app Front/ValidPrograms/41_IfElse.c"                           "expected/front/valid/41.txt"
assert_contains_file "../bin/app Front/ValidPrograms/42_While.c"                            "expected/front/valid/42.txt"
assert_contains_file "../bin/app Front/ValidPrograms/44_IfElseIf.c"                         "expected/front/valid/44.txt"
assert_contains_file "../bin/app Front/ValidPrograms/46_ArrayDec.c"                         "expected/front/valid/46.txt"
assert_contains_file "../bin/app Front/ValidPrograms/47_ArrayUse.c"                         "expected/front/valid/47.txt"

assert_contains_file "../bin/app Front/ValidPrograms/50_CharConst.c"                        "expected/front/valid/50.txt"
assert_contains_file "../bin/app Front/ValidPrograms/51_CharConstSpecial.c"                 "expected/front/valid/51.txt"
assert_contains_file "../bin/app Front/ValidPrograms/52_Int64Dec.c"                         "expected/front/valid/52.txt"
assert_contains_file "../bin/app Front/ValidPrograms/53_FunctionCallPutChar.c"              "expected/front/valid/53.txt"
assert_contains_file "../bin/app Front/ValidPrograms/54_FunctionCallCustom.c"               "expected/front/valid/54.txt"
assert_contains_file "../bin/app Front/ValidPrograms/55_Return.c"                           "expected/front/valid/55.txt"

assert_contains_file "../bin/app Front/ValidPrograms/57_VarInitialization.c"                "expected/front/valid/57.txt"
assert_contains_file "../bin/app Front/ValidPrograms/58_MultipleVarDeclarations.c"          "expected/front/valid/58.txt"

assert_end examples