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
    rescue ZeroDivisionError 
        "Náo é possível dividir por zero"
    end

    def potencia_ao_quadrado(a)
        a ** 2
    end
    
    def raiz_quadrada(a)
        Math.sqrt(a)
    rescue Math::DomainError
        "Entrada inválida (raiz de um numero negativo náo existe)"
    end

end