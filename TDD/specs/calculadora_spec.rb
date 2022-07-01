require 'rspec'
require_relative '../src/calculadora'

describe('Calculadora') do
    calculadora = Calculadora.new

########################### SOMA ###########################
    it('Deve somar dois numeros inteiros positivos') do 
        expect(calculadora.soma(4, 5)).to eq 9
    end

    it('Deve somar dois numeros negativos') do 
        expect(calculadora.soma(-4, -5)).to eq -9
    end

    it('Deve somar zero com um numero qualquer') do 
        expect(calculadora.soma(0, 5)).to eq 5
    end
    
    it('Deve somar um numero positivos com um numero negativo') do 
        expect(calculadora.soma(4, -5)).to eq -1
    end

    it('Deve somar um numero inteiro com um numero decimal') do 
        expect(calculadora.soma(5, 1.5)).to eq 6.5
    end
########################## SUBTRACAO #########################

    it('Deve subtrair dois numeros inteiros positivos') do 
        expect(calculadora.subtracao(9, 5)).to eq 4
    end

    it('Deve subtrair dois numeros negativos') do 
        expect(calculadora.subtracao(-4, -5)).to eq -9 
    end
    
    it('Deve subtrair um numero positivo com um numero negativo') do
        expect(calculadora.subtracao(4, -5)).to eq -1 
    end

    it('Deve subitrair zero com um numero qualquer') do 
        expect(calculadora.subtracao(-5, 0)).to eq -5
    end

    it('Deve subitrair um numero inteiro de um numero decimal') do 
        expect(calculadora.subtracao(5, 1.5)).to eq 3.5
    end
######################### MULTIPLICACAO #########################

    it('Deve multiplicar dois numeros inteiros positivos') do 
        expect(calculadora.multiplicacao(4, 5)).to eq 20
    end
    
    it('Deve multiplicar dois numeros negativos') do
        expect(calculadora.multiplicacao(-4, -5)).to eq 20
    end

    it('Deve multiplicar um numero positivo com um numero negativo') do
        expect(calculadora.multiplicacao(-4, 5)).to eq -20
    end

    it('Deve multiplicar zero com um numero qualquer') do
        expect(calculadora.multiplicacao(0, 5)).to eq 0
    end
    
    it('Deve multiplicar numeros decimais') do
        expect(calculadora.multiplicacao(1.2, 1.2)).to eq 1.44
    end

    it('Deve multiplicar um numero decimal com um inteiro') do
        expect(calculadora.multiplicacao(2, 1.2)).to eq 2.4
    end

    it('Deve multiplicar um numero decimal negativo com um inteiro') do
        expect(calculadora.multiplicacao(-1.2, 2)).to eq -2.4
    end
######################### DIVISAO #########################
    it('Deve dividir um numero decimal com um inteiro') do
        expect(calculadora.divisao(1.2, 2)).to eq 0.6
    end

    it('Deve dividir um numero decimal negativo com um inteiro') do
        expect(calculadora.divisao(-1.2, 2)).to eq -0.6
    end 

    it('Deve dividir dois numeros inteiros positivos') do
        expect(calculadora.divisao(4, 2)).to eq 2
    end

    it('Deve dividir dois numeros negativos') do
        expect(calculadora.divisao(-4, -2)).to eq 2
    end

    it('Deve dividir um numero positivo com um numero negativo') do
        expect(calculadora.divisao(4, -2)).to eq -2
    end
    
    it('Deve dividir 0 por algum numero') do
        expect(calculadora.divisao(0, -2)).to eq 0
    end

    it('Deve dividir algum numero por 0') do
        expect(calculadora.divisao(2, 0)).to eq "Náo é possível dividir por zero"
    end
###################### POTENCIA_AO_QUADRADO #########################

    it('Deve elevar um numero inteiro ao quadrado') do	
        expect(calculadora.potencia_ao_quadrado(8)).to eq 64
    end

    it('Deve elevar um numero negativo ao quadrado') do	
        expect(calculadora.potencia_ao_quadrado(-2)).to eq 4
    end

    it('Deve elevar um numero decimal ao quadrado') do
        expect(calculadora.potencia_ao_quadrado(1.2)).to eq 1.44
    end

    it('Deve elevar um numero decimal negativo ao quadrado') do
        expect(calculadora.potencia_ao_quadrado(-1.2)).to eq 1.44
    end

    it('Deve elevar 0 ao quadrado') do
        expect(calculadora.potencia_ao_quadrado(0)).to eq 0
    end

######################### RAIZ QUADRADA #########################	
    
    it('Deve racionalizar 0') do
        expect(calculadora.raiz_quadrada(0)).to eq 0
    end

    it('Deve racionalizar um numero inteiro') do
        expect(calculadora.raiz_quadrada(9)).to eq 3
    end

    it('Deve racionalizar um numero decimal') do 
        expect(calculadora.raiz_quadrada(1.44)).to eq 1.2	
    end

    it('Deve racionalizar um numero decimal negativo') do
        expect(calculadora.raiz_quadrada(-1.44)).to eq "Entrada inválida (raiz de um numero negativo náo existe)"
    end

    it('Deve racionalizar um numero inteiro negativo') do
        expect(calculadora.raiz_quadrada(-1)).to eq "Entrada inválida (raiz de um numero negativo náo existe)"
    end

end