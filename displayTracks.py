import pandas as pd
import matplotlib.pyplot as plt

if __name__ == '__main__':
	df = pd.read_csv('teamrebound.csv', names=['Artist','Album','Track','Date'])

	df['date'] = pd.to_datetime(df['Date'])

	# print df.groupby('Artist').count().sort_values(by='Album', ascending=False)
	monthly = df.loc[:,['Artist','date']].set_index('date').groupby('Artist').resample('M').count()
	print monthly.sort_values(by='Artist', ascending=False)
	
	mon = df.set_index('date').resample('W').count()
	plt.plot(mon['Artist'])
	plt.show()