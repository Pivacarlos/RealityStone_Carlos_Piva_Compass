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

    def divisao_por_1(a)
        a / 1
    end
    
    def porcentagem(a, b)
        a * b / 100
    end
########################################################################################
##################################### CALCULADORA CIENTIFICA ###########################
########################################################################################
    def logaritmo_natural(a)
        Math.log(a).round(8)
    rescue Math::DomainError
        "Entrada inválida (logaritmo de um numero negativo náo existe)"
    end
end

