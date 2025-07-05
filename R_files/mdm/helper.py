import csv
import simplejson

with open("format-data-v1-mdm-new.csv", "r") as csvfile:
    csvreader = csv.reader(csvfile)

    next(csvreader)

    with open("result-new.txt", "a") as f:
        for row in csvreader:
            simplejson.dump(row, f)
            f.write("\n")
