import pandas as pd


def get_entrerprise(name):
    data_frame = pd.read_csv("data/relatorio.csv", delimiter=";", header=0)

    filtro = data_frame[
        data_frame.apply(
            lambda row: row.astype(str)
            .str.contains(name, case=False, na=False)
            .any(),
            axis=1,
        )
    ]

    if filtro.empty:
        return "Empresa Nao Encontrada"
    else:
       filtro = filtro.fillna("Desconhecido")
       result = filtro.to_dict(orient='records')
       return result
