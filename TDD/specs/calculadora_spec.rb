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
########################## SUBTRACAO #########################

    it('Deve subtrair dois numeros inteiros positivos') do 
        expect(calculadora.subtracao(9, 5)).to eq 4
    end

    it('Deve subtrair dois numeros negativos') do 
        expect(calculadora.subtracao(-4, -5)).to eq -9 #CORRIGIR
    end
    
    it('Deve subtrair um numero positivo com um numero negativo') do
        expect(calculadora.subtracao(4, -5)).to eq -1 #CORRIGIR
    end

    it('Deve subitrair zero com um numero qualquer') do 
        expect(calculadora.subtracao(-5, 0)).to eq -5
    end
######################### MULTIPLICACAO #########################

    it('Deve multiplicar dois numeros inteiros positivos') do 
        expect(calculadora.multiplicacao(4, 5)).to eq 20
    end
    
    it('Deve multiplicar dois numeros negativos') do
        expect(calculadora.multiplicacao(-4, -5)).to eq 20
    end

    it('Deve multiplicar um numero positivo com um numero negativo') do
        expect(calculadora.multiplicacao(4, -5)).to eq -20
    end

    it('Deve multiplicar zero com um numero qualquer') do
        expect(calculadora.multiplicacao(0, 5)).to eq 0
    end

end