from pdf_reader import read_pdf
from data_processor import process_table_data
from get_current_directory import get_current_directory
from write_csv import write_csv
from compactor import create_zip_with_csv
import os

def main():
    try:
        current_directory = get_current_directory()
        pdf_path = os.path.join(current_directory, "anexo1.pdf")
        zip_path = os.path.join(current_directory, "Teste_JoaoVitorDiamon.zip")
        tables = read_pdf(pdf_path)
        processed_data = process_table_data(tables)
        csv_data = write_csv(processed_data)
        create_zip_with_csv(csv_data, zip_path)

    except Exception as e:
        print(f"Ocorreu um erro: {e}")


if __name__ == "__main__":
    main()
