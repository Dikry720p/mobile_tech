def fuzzifikasi_suhu(suhu):
    dingin = max(min((25 - suhu) / 10, 1), 0)
    normal = max(min((suhu - 20) / 10, (30 - suhu) / 10), 0)
    panas = max(min((suhu - 25) / 10, 1), 0)
    return {'Dingin': dingin, 'Normal': normal, 'Panas': panas}

def inferensi(suhu):
    membership = fuzzifikasi_suhu(suhu)
    lambat = min(membership['Dingin'], 1)
    sedang = min(membership['Normal'], 1)
    cepat = min(membership['Panas'], 1)
    return {'Lambat': lambat, 'Sedang': sedang, 'Cepat': cepat}

def defuzzifikasi(inferensi_result):
    lambat = 20
    sedang = 35
    cepat = 45
    numerator = inferensi_result['Lambat'] * lambat + inferensi_result['Sedang'] * sedang + inferensi_result['Cepat'] * cepat
    denominator = inferensi_result['Lambat'] + inferensi_result['Sedang'] + inferensi_result['Cepat']
    if denominator == 0:
        return 0
    return numerator / denominator

# Contoh penggunaan
suhu = 28
inferensi_result = inferensi(suhu)
output_crisp = defuzzifikasi(inferensi_result)
print(f"Output kecepatan kipas untuk suhu {suhu}°C adalah {output_crisp:.2f}")
