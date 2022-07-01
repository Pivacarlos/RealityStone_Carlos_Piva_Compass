class Calculadora

    def soma(a, b)
        a + b
    end

    def subtracao(a, b)
        if (a > 0 and b > 0)
            a - b
        else
            a + b
        end
    end

    def multiplicacao(a, b)
        a * b
    end

    def divisao(a, b)
        a / b
    end
end