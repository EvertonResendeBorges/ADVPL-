#INCLUDE 'TOTVS.CH'

User Function Negativo()

Local aValores := {1,2,-3,4,-5}
Local nNegativos := 0
Local i
Local cChar

For i := 1 To 5
    MsgAlert(aValores[i])

    if aValores[i] < 0 
        MsgAlert("N�mero Negativo", "Negativo")
        nNegativos += 1
    end
Next

cChar := STR(nNegativos)

MsgInfo("Existem "+cChar,"Negativo")

Return

User Function Maior()

Local nValor1 := 17
Local nValor2 := 7

If nValor1 == nValor2
    Alert ("N�o pode ser igual")

    elseif nValor1 > nValor2 
    Alert("Valor1 � maior")
    Else 
    Alert("Valor2 � maior")
    

EndIf

Return

User Function Impares

Local nN    := 0
Local nSoma := 0

Local i

FOR i := 1 TO 10

        nN := 3 * i

        if nN % 2 != 0


            Alert(nSoma)
            nSoma += nN
            Alert(nSoma)

        endif

NEXT




Return
