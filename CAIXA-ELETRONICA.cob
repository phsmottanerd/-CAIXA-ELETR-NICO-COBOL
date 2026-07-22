       >>SOURCE FORMAT FREE


*> ******************************************************************
*> Program Name : CAIXA-ELETRONICO
*> Author       : Paulo Henrique Santana Motta
*> Date         :
*> Purpose      : Simulação de um Caixa Eletrônico
*> Compiler     : GnuCOBOL (cobc)
*> ******************************************************************

IDENTIFICATION DIVISION.
PROGRAM-ID. CAIXA-ELETRONICO.

DATA DIVISION.

WORKING-STORAGE SECTION.

77 WS-OPCAO      PIC X(02)      VALUE SPACES.
77 WS-SALDO      PIC 9(10)V99   VALUE ZEROS.
77 WS-DEPOSITO   PIC 9(10)V99   VALUE ZEROS.
77 WS-SAQUE      PIC 9(10)V99   VALUE ZEROS.

PROCEDURE DIVISION.

P001-MENU1.

    PERFORM UNTIL WS-OPCAO = "4"

        DISPLAY "-----------------------"
        DISPLAY "-   BANCO CODE MEO    -"
        DISPLAY "-----------------------"
        DISPLAY "1 - DEPOSITO"
        DISPLAY "2 - SAQUE"
        DISPLAY "3 - CONSULTA SALDO"
        DISPLAY "4 - SAIR"
        DISPLAY "-----------------------"
        DISPLAY "ESCOLHA UMA OPCAO: "

        ACCEPT WS-OPCAO

        EVALUATE WS-OPCAO



            WHEN "1"

               DISPLAY "-----------------------"
               DISPLAY "-   BANCO CODE MEO    -"
               DISPLAY "-----------------------"
               DISPLAY "-----------------------"
               DISPLAY "DIGITE O VALOR DO DEPOSITO:"
               ACCEPT WS-DEPOSITO

                COMPUTE WS-SALDO =
                        WS-SALDO + WS-DEPOSITO

                DISPLAY "DEPOSITO EFETIVADO."
                DISPLAY "SALDO ATUAL: " WS-SALDO

            WHEN "2"

                DISPLAY "-----------------------"
                DISPLAY "-   BANCO CODE MEO    -"
                DISPLAY "-----------------------"
                DISPLAY "-----------------------"
                DISPLAY "DIGITE O VALOR DO SAQUE:"
                ACCEPT WS-SAQUE

                IF WS-SAQUE > WS-SALDO
                    DISPLAY "SALDO INSUFICIENTE."
                ELSE
                    COMPUTE WS-SALDO =
                            WS-SALDO - WS-SAQUE

                    DISPLAY "SAQUE EFETUADO."
                    DISPLAY "SALDO ATUAL: " WS-SALDO
                END-IF

            WHEN "3"

                DISPLAY "-----------------------"
                DISPLAY "-   BANCO CODE MEO    -"
                DISPLAY "-----------------------"
                DISPLAY "-----------------------"
                DISPLAY "SALDO DISPONIVEL: "
                        WS-SALDO

            WHEN "4"

                DISPLAY "-----------------------"
                DISPLAY "-   BANCO CODE MEO    -"
                DISPLAY "-----------------------"
                DISPLAY "-----------------------"
                DISPLAY "OBRIGADO POR UTILIZAR"
                DISPLAY "O NOSSO SISTEMA."

            WHEN OTHER

                DISPLAY "OPCAO INVALIDA."

        END-EVALUATE

    END-PERFORM.

    STOP RUN.

END PROGRAM CAIXA-ELETRONICO.
