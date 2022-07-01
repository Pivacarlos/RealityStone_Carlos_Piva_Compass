require 'rspec'
require_relative '../src/imc'

describe('Calculando IMC') do
    it('Deve calcular com peso e altura corretos') do
        peso = 70
        altura = 1.65
        expect(imc(peso, altura)).to eq 25.7
    end

    it('Não deve calcular com altura = 0') do
        peso = 70
        altura = 0
        expect(imc(peso, altura)).to include 'Altura não pode ser = 0'
    end
end