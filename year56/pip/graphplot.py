"""
graphplot.py
plotting graphs
"""

import matplotlib as mpl
import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
import seaborn as sns

mpl.rcParams["font.family"] = "tex gyre heros"
plt.rcParams["figure.constrained_layout.use"] = True

sns.set_theme(context="talk")

# initialise dataframe
# df3 = pd.read_csv("blades3_speed2.csv", header=0)
df4 = pd.read_csv("blades4_speed3.csv", header=0)
df6 = pd.read_csv("blades6_speed3.csv", header=0)
fitteds = []
for df in [df4, df6]:
    fit = np.polyfit(np.log(df["t"]), df["ω"], 1)
    print(fit)
    x = np.arange(0, 6.5, 0.05)
    y = fit[0] * np.log(x) + fit[1]
    fitted = pd.DataFrame(
        {
            "t": x,
            "ω": y,
        }
    )

    fitteds.append(fitted)

fitteds[0]["blades"] = "4"
fitteds[1]["blades"] = "6"
df_all = pd.concat([fitteds[0], fitteds[1]], ignore_index=True)
print(df_all.head())

sns.lineplot(df_all, x=df_all["t"], y=df_all["ω"], hue="blades")
plt.ylim(top=0, bottom=-500)
plt.title("Variation of ω with time (fan speed = hi)")
plt.show()
