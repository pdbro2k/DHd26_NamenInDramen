import matplotlib.pyplot as plt

FIGSIZE = (16,12)
TICK_SIZE = 28
LABEL_SIZE = 36

def prepare_fig(figsize=FIGSIZE):
    return plt.figure(figsize=figsize)

def prepare_plot(ax, xlabel="", ylabel="", tick_size=TICK_SIZE, label_size=LABEL_SIZE):
    ax.spines["top"].set_visible(False)
    ax.spines["right"].set_visible(False)

    # adjust font sizes
    for tick in ax.xaxis.get_major_ticks():
        tick.label1.set_fontsize(tick_size)
    for tick in ax.yaxis.get_major_ticks():
        tick.label1.set_fontsize(tick_size)
    ax.set_xlabel(xlabel, fontsize=label_size)
    ax.set_ylabel(ylabel, fontsize=label_size)