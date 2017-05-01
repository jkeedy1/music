import calmap
import pandas as pd
import matplotlib.pyplot as plt

def plotCalendar(df):
	for column in df.columns:
		# https://pythonhosted.org/calmap/
		fig, ax = calmap.calendarplot(df[column], daylabels='MTWTFSS', cmap='RdYlGn') #The _r at the end inverts the map, so 1 is green.
		plt.title(column)
		plt.legend()
		plt.savefig(column+'.png')
	return

def main():
	df = (pd.read_excel('Growth_Without_Goals.xlsx',sheetname='Log')).set_index('Date')
	df['Total'] = df.mean(axis=1)
	print df
	plotCalendar(df)

if __name__ == '__main__':
	main()