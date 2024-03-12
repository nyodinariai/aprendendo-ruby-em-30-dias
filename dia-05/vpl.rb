require "tty-prompt"

prompt = TTY::Prompt.new

prompt.ask("Digite seu Nome", default: ENV['user'])

selected_value = prompt.select("Escolha o calculo: ", %w(VPL TIR PAYBACK))

def calculaVpl(fluxo_caixa, taxa_desconto, investimento_inicial)
    vpl = 0
    fluxo_caixa.each_with_index do |cash_flow, index|
    vpl += cash_flow / ((1 + (taxa_desconto/100)) ** (index + 1))
    end
    vpl - investimento_inicial
end

def valorPresenteLiquido
    prompt = TTY::Prompt.new

    fluxo_caixa = []
    investimento_inicial = prompt.ask("Diga o valor do investimento inicial") { |q| q.convert(:float)}
    taxa_desconto = prompt.ask("Diga o valor da Taxa de Desconto"){ |q| q.convert(:float)}

    puts "Agora insira os valores dos fluxos de caixa do projeto"

    loop do
        valor = prompt.ask("Fluxo de Caixa") {|q| q.convert(:float)}
        break if valor.nil?

        fluxo_caixa << valor.to_f
    end

    vpl = calculaVpl(fluxo_caixa, taxa_desconto, investimento_inicial)
    puts "O valor presente líquido (VPL) é: #{vpl}"

  end

if selected_value === "VPL"
  valorPresenteLiquido
end
