# %%
#importando bibliotecas
import pandas as pd
import os

# %%
#definindo a raiz do path
path = '../../Desbravando_Pandas/desbravando-pandas-main/data/ipea/'

# %%
#criando função etl
def etl(name):
    return((pd.read_csv(path+name, sep = ';')
        .set_index(['cod', 'nome', 'período'])
        .rename(columns = {'valor': name})))

# %%
#listando os diretorios e salvando em arquivos
arquivos = os.listdir(path)
arquivos
# %%
#salvando dataframe em lista
lista = []
for arquivo in arquivos:
    lista.append(etl(arquivo))

# %%
#concatenando todos os dataframes
df = pd.concat(lista, axis=1).reset_index()
# %%
#exportando para csv
df.to_csv('concatenado.csv', sep=',')

