import calmap
import pandas as pd
import matplotlib.pyplot as plt


def main():
	df = (pd.read_excel('Growth_Without_Goals.xlsx',sheetname='Log')).set_index('Date')

	for column in df.columns:
		# https://pythonhosted.org/calmap/
		fig, ax = calmap.calendarplot(df[column], daylabels='MTWTFSS', cmap='RdYlGn')
		plt.title(column)
		plt.savefig(column+'.png')

if __name__ == '__main__':
	main()