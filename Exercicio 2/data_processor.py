def process_table_data(tables):
    all_data = []
    for table in tables:
        for idx, row in enumerate(table):
            if idx == 0:
                continue
            if len(row) >= 12:
                all_data.append(row)
    return all_data
