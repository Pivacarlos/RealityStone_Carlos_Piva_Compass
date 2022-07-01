def imc(peso, altura)
    if altura == 0
        return "Altura não pode ser = 0"
    end
    imc_calculado = peso / (altura * altura)
    imc_calculado.round(1)
end