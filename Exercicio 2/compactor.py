import zipfile

def create_zip_with_csv(csv_data, zip_path, csv_filename="arquivo.csv"):
    with zipfile.ZipFile(zip_path, 'w', zipfile.ZIP_DEFLATED) as zipf:
        zipf.writestr(csv_filename, csv_data)
