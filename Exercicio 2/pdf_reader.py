import pdfplumber


def read_pdf(pdf_path):
    with pdfplumber.open(pdf_path) as pdf:
        total_pages = len(pdf.pages)
        if total_pages < 4:
            raise ValueError("O PDF tem menos de 4 páginas.")

        all_tables = []
        for i in range(2, total_pages-1):
            page = pdf.pages[i]
            table = page.extract_table()

            if table:
                all_tables.append(table)

    return all_tables
