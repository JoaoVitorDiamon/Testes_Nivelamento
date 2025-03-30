import csv
from io import StringIO
import pandas as pd
from unidecode import unidecode

def remove_acentos(texto):
    return unidecode(texto)

def write_csv(data):

    headers = [
        "PROCEDIMENTO", "RN (alteração)", "Vigência", "Seg. Odontológica", "Seg. Ambulatorial", "HCO",
        "HSO", "REF", "PAC", "DUT", "SUBGRUPO", "GRUPO", "CAPÍTULO"
    ]

    df = pd.DataFrame(data, columns=headers)

    df.columns = [remove_acentos(col) for col in df.columns]
    df = df.applymap(lambda x: remove_acentos(x) if isinstance(x, str) else x)

    csv_output = StringIO()
    df.to_csv(csv_output, sep=';', index=False, encoding='utf-8')

    return csv_output.getvalue().encode('utf-8')
