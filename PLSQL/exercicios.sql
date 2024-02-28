SET SERVEROUTPUT ON
SET VERIFY OFF

--EX1
DECLARE
    sexo_clie char(1) := '&sexo'; 
BEGIN
    if sexo_clie = 'm' OR sexo_clie = 'M' then
        dbms_output.put_line('Voce é Homem');
    elsif sexo_clie = 'f' OR sexo_clie = 'F' then
        dbms_output.put_line('Voce é Mulher');
    else
        dbms_output.put_line('Opção Invalida');
    end if;
END;              


--EX2
DECLARE
    num1 number(3) := &numero;
    num2 number(3) := &numero;
    
BEGIN
    if num1 = num2 then
        dbms_output.put_line('Numeros não podem ser iguais: ');
    elsif num1 > num2 then
        dbms_output.put_line('Numero maior: '|| num1);
    elsif num2 > num1 then
        dbms_output.put_line('Numero maior: '|| num2);
    else
        dbms_output.put_line('Opção Invalida');
    end if;
END;


--EX3
DECLARE
    ano number(4) := &ano;

BEGIN
    if ano <= 2006 then
        dbms_output.put_line('Pode Votar');
    else
        dbms_output.put_line('Não Pode Votar');
    end if;
END;


--EX4
DECLARE
    senha number(4) := &senha;
    
BEGIN
    if senha = 1234 then
        dbms_output.put_line('ACESSO PERMITIDO');
    else
        dbms_output.put_line('ACESSO NEGADO');
    end if;
END;


--EX5
DECLARE
    quant_maca number (3) := &maca;
    maca_duzia number(3,2) := 0.25;
    maca_sem number(3,2) := 0.30;
    valor_final number(3,2);
    
BEGIN
    if quant_maca >=12 then
        valor_final := maca_duzia * quant_maca;
        dbms_output.put_line('Valor Final ' || valor_final);
    else
        valor_final := maca_sem * quant_maca;
        dbms_output.put_line('Valor Final R$' || valor_final);
    end if;
END;

    

    

