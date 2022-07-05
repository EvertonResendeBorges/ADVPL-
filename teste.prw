#INCLUDE 'TOTVS.CH'

User Function CadSA1

Private cCadastro := "Cadastro de Clientes"
Private aRotina   := {}

AADD(aRotina, {"Pesquisar" , "AxPesqui", 0, 1})
AADD(aRotina, {"Visualizar", "AxVisual", 0, 2})
AADD(aRotina, {"Incluir"   , "AxInclui", 0, 3})
AADD(aRotina, {"Alterar"   , "AxAltera", 0, 4})
AADD(aRotina, {"Excluir"   , "AxDeleta", 0, 5})
AADD(aRotina, {"Imp. Nome" , "U_Tela"  , 0, 6})

mBrowse(,,,,"SA1")

Return

User Function Tela

Local oDlg 
Local oGet 
Local cNome 
Local oBotao

cNome := Space(30)

Define MSDIALOG oDlg TITLE "Minha primeira tela"

    oDlg:nWidth  := 400 
    oDlg:nHeight := 300 

    @06,@10 SAY "Digite seu nome:" of oDlg PIXEL
    @06,@60 GET oGet VAR cNome of oDlg SIZE 70,10 PIXEL

    @30,@80 BUTTON oBotao PROMPT "OK" OF oDlg PIXEL SIZE 30,10 ACTION Alert("O nome digitado foi: " + cNome) 

    
    ACTIVATE MSDIALOG oDlg CENTERED

Return 
