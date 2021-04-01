
# importing pandas package 
import pandas as pd 
  
# making data frame from csv file 
data = pd.read_csv("trace_core_00000000.csv") 
  
# sorting by first name 
data.sort_values("pc", inplace = True) 
  
# dropping ALL duplicte values 
data.drop_duplicates(subset ="pc", 
                     keep = 'last', inplace = True) 
  
# displaying data 
data 

