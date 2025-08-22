import os

import pandas as pd

# initialise dataframe
pwd = os.path.dirname(__file__)
datafile = "blades6_speed2"

df = pd.read_csv(os.path.join(pwd, datafile + ".txt"), header=0, sep="\t")
df = df.drop(df.columns[-1], axis=1)
df.dropna(inplace=True)
df.to_csv(os.path.join(pwd, datafile + ".csv"))
