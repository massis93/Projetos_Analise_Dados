import pandas as pd
import random
from faker import Faker
import numpy as np

fake = Faker()

# Funções auxiliares
def gerar_idade():
    return random.choice(
        [random.randint(18, 25)] * 10 + 
        [random.randint(26, 45)] * 50 + 
        [random.randint(46, 70)] * 40
    )

def ajustar_preco(base_price, ano):
    fator_inflacao = {2019: 1.0, 2020: 1.05, 2021: 1.15, 2022: 1.25, 2023: 1.35, 2024: 1.45}
    return round(base_price * fator_inflacao[ano], 2)

# Dados de carros e marcas
marcas_carros = {
    "Chevrolet": ["Onix", "S10", "Tracker", "Cobalt"],
    "Volkswagen": ["Gol", "T-Cross", "Virtus", "Polo"],
    "Honda": ["Civic", "HR-V", "Fit"],
    "Toyota": ["Corolla", "Hilux", "Yaris"],
    "Ford": ["Ka", "Ranger", "Focus"],
    "Hyundai": ["HB20", "Creta", "i30"]
}

# Categorias de carros
categorias_carros = {
    "Hatch": ["Onix", "Gol", "Ka", "Fit", "Polo", "HB20"],
    "Sedan": ["Civic", "Corolla", "Virtus", "HB20 Sedan", "Yaris", "Fusion"],
    "SUV": ["T-Cross", "Tracker", "HR-V", "Creta", "Yaris Cross"],
    "Picape": ["S10", "Ranger", "Hilux"],
    "Luxo": ["Jetta", "SW4", "Fusion", "A4"]
}

# Estados e cidades
estados = ["SP", "RJ", "MG", "RS", "PR", "BA", "PE", "SC", "ES", "GO"]
cidades = {
    "SP": ["São Paulo", "Campinas", "Santos", "Sorocaba", "São Bernardo do Campo"],
    "RJ": ["Rio de Janeiro", "Niterói", "Cabo Frio", "Volta Redonda", "Duque de Caxias"],
    "MG": ["Belo Horizonte", "Uberlândia", "Contagem", "Juiz de Fora", "Betim"],
    "RS": ["Porto Alegre", "Caxias do Sul", "Pelotas", "Santa Maria", "Passo Fundo"],
    "PR": ["Curitiba", "Londrina", "Maringá", "Ponta Grossa", "Foz do Iguaçu"],
    "BA": ["Salvador", "Feira de Santana", "Vitória da Conquista", "Itabuna", "Ilhéus"],
    "PE": ["Recife", "Olinda", "Jaboatão dos Guararapes", "Caruaru", "Petrolina"],
    "SC": ["Florianópolis", "Joinville", "Blumenau", "Criciúma", "Lages"],
    "ES": ["Vitória", "Vila Velha", "Serra", "Cachoeiro de Itapemirim", "Guarapari"],
    "GO": ["Goiânia", "Aparecida de Goiânia", "Anápolis", "Rio Verde", "Luziânia"]
}

# Nomes das lojas de carros
lojas_carros = [
    "AutoCenter", "Super Carros", "Carros & Cia", "Viva Carros", 
    "Meu Carro Novo", "Carro Ideal", "Brasil Carros", "Top Car Veículos", 
    "Carros do Brasil", "Fácil Carro"
]

# Cores populares
cores = ["Preto", "Branco", "Prata", "Vermelho", "Azul", "Cinza", "Bege", "Verde", "Amarelo"]

# Gerando dados
num_linhas = 5740
dados = []

for i in range(1, num_linhas + 1):
    # Geração de ano de compra e data
    ano_compra = random.choice([2019, 2020, 2021, 2022, 2023, 2024])
    data_compra = fake.date_between_dates(date_start=pd.to_datetime(f"{ano_compra}-01-01"), date_end=pd.to_datetime(f"{ano_compra}-12-31"))
    
    # Geração de cliente
    nome_cliente = fake.name()
    idade_cliente = gerar_idade()
    genero_cliente = random.choice(["Masculino", "Feminino"])
    
    estado_cliente = random.choice(estados)
    cidade_cliente = random.choice(cidades[estado_cliente])
    
    # Geração de carro e marca
    marca_carro = random.choice(list(marcas_carros.keys()))
    carro_vendido = random.choice(marcas_carros[marca_carro])
    
    # Ajustando categoria com base no carro
    categoria_carro = None
    for categoria, modelos in categorias_carros.items():
        if carro_vendido in modelos:
            categoria_carro = categoria
            break
    
    if categoria_carro is None:  # Garantir que categoria seja sempre definida
        categoria_carro = random.choice(list(categorias_carros.keys()))  # Caso falhe, escolhe uma categoria aleatória
    
    ano_carro = random.randint(2015, ano_compra)
    
    # Ajuste de preço conforme inflação
    if categoria_carro == "Hatch":
        preco_base = random.uniform(30000, 70000)
    elif categoria_carro == "Sedan":
        preco_base = random.uniform(70000, 150000)
    elif categoria_carro == "SUV":
        preco_base = random.uniform(80000, 200000)
    elif categoria_carro == "Picape":
        preco_base = random.uniform(90000, 250000)
    else:  # Luxo
        preco_base = random.uniform(150000, 500000)
    
    valor_carro = ajustar_preco(preco_base, ano_compra)
    cor_carro = random.choice(cores)
    
    # Transmissão e número de portas
    automatico = "Sim" if random.random() > 0.4 else "Não"
    qtd_portas = 4 if random.random() > 0.5 else 2
    
    # Compra com empréstimo
    comprado_com_emprestimo = "Sim" if random.random() > 0.6 else "Não"
    
    # Pessoa Física (PF) ou Pessoa Jurídica (PJ)
    cliente_tipo = random.choice(["PF", "PJ"])
    
    # Distribuição de lojas
    nome_loja = random.choice(lojas_carros)
    
    # Adicionando a linha de dados
    dados.append([i, data_compra, nome_cliente, idade_cliente, genero_cliente, cidade_cliente, estado_cliente,
                  carro_vendido, marca_carro, ano_carro, valor_carro, cor_carro, automatico, qtd_portas, 
                  comprado_com_emprestimo, cliente_tipo, nome_loja])

# Criando DataFrame
colunas = ['ID', 'Data da Compra', 'Nome Cliente', 'Idade', 'Gênero', 'Cidade Cliente', 'Estado Cliente', 
           'Carro Vendido', 'Marca', 'Ano do Carro', 'Valor do Carro', 'Cor', 'Automático', 'Portas', 
           'Empréstimo', 'Tipo Cliente', 'Nome Loja']

df_carros_realista = pd.DataFrame(dados, columns=colunas)

df_carros_realista.to_csv('vendas_de_carros_realistas.csv', index=False)
