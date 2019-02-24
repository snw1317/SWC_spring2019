##This is  MeanGdpPlot.py script

#Import pandas and pylab
import pandas as pd
import matplotlib.pyplot as plt      

#read data into python
my_file = pd.read_csv("gapminder.txt", sep = "\t")

#select information about Africa
Africa = my_file[my_file.continent == "Africa"]

#calculate the mean
Africa_Mean = Africa.iloc[:,5].mean()

#Do the same for Europe
Europe = my_file[my_file.continent == "Europe"]
Europe_Mean = Europe.iloc[:,5].mean()

# Create a List to store the values
continents = ["Africa","Europe"]
mean_gdp = [Africa_Mean, Europe_Mean]

#Plot the graph with Y axis label and Title
plt.bar(continents,mean_gdp,align='center')
plt.ylabel('Mean GDP/Capita')
plt.title('Mean GDP per Capita in Africa Vs Europe')
plt.savefig("Mean_GDP_Plot.png")