import csv
import simplejson

with open("format-data-v1-jenis_kegiatan.csv", "r") as csvfile:
    csvreader = csv.reader(csvfile)

    next(csvreader)

    with open("result.txt", "a") as f:
        for row in csvreader:
            simplejson.dump(row, f)
            f.write("\n")
