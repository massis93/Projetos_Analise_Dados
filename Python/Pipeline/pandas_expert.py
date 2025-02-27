# %%
import pandas as pd
import os

# %%
path = '../../Desbravando_Pandas/desbravando-pandas-main/data/ipea/'

# %%
def etl(name):
    return((pd.read_csv(path+name, sep = ';')
        .set_index(['cod', 'nome', 'período'])
        .rename(columns = {'valor': name})))

# %%
arquivos = os.listdir(path)
arquivos
# %%
lista = []
for arquivo in arquivos:
    lista.append(etl(arquivo))

# %%
pd.concat(lista, axis=1).reset_index()
# %%
