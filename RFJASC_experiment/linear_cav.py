#!/usr/bin/env python
"""-----------------------------------------------------------------
  Python file for plotting Finesse ouput linear_cav.out
  created automatically Mon Jan  4 21:24:07 2016

  Run from command line as: python linear_cav.py
  Load from python script as: import linear_cav
  And then use:
  linear_cav.run() for plotting only
  x,y=linear_cav.run() for plotting and loading the data
  x,y=linear_cav.run(1) for only loading the data
-----------------------------------------------------------------"""

__author__ = "Finesse, http://www.gwoptics.org/finesse"

import numpy as np
import matplotlib
BACKEND = 'Qt4Agg'
matplotlib.use(BACKEND)
from matplotlib import rc
import matplotlib.pyplot as plt
formatter = matplotlib.ticker.EngFormatter(unit='')
formatter.ENG_PREFIXES[-6] = 'u'
def run(noplot=None):
	data = np.loadtxt('linear_cav.out',comments='%')
	rows,cols=data.shape
	x=data[:,0]
	y=data[:,1:cols]
	mytitle='linear_cav                Mon Jan  4 21:24:07 2016'
	if (noplot==None):
		# setting default font sizes
		rc('font',**pp.font)
		rc('xtick',labelsize=pp.TICK_SIZE)
		rc('ytick',labelsize=pp.TICK_SIZE)
		rc('text', usetex=pp.USETEX)
		rc('axes', labelsize = pp.LABEL_SIZE)
		fig=plt.figure()
		fig.set_size_inches(pp.fig_size)
		fig.set_dpi(pp.FIG_DPI)
		from itertools import cycle
		clist = matplotlib.rcParams['axes.color_cycle']
		colorcycler= cycle(clist)
		ax1 = fig.add_subplot(111)
		ax1.set_xlim(-10,10)
		ax1.set_xlabel('phi [deg] (EM)')
		ax1.set_ylabel('Abs ')
		ax1.yaxis.set_major_formatter(formatter)
		trace1=ax1.plot(x, y[:,0], '-', linewidth=pp.LINEWIDTH, color = next(colorcycler), label = ' nEMout : ')
		traces = trace1
		traces_a = traces
		legends = [t.get_label() for t in traces]
		ax1.legend(traces, legends, loc=0, shadow=pp.SHADOW,prop={'size':pp.LEGEND_SIZE})
		ax1.grid(pp.GRID)
		if pp.PRINT_TITLE:
			plt.title(mytitle)
		if pp.SCREEN_TITLE:
			fig.canvas.manager.set_window_title(mytitle)
		else:
			fig.canvas.manager.set_window_title('')
	return (x,y)
class pp():
	# set some gobal settings first
	BACKEND = 'Qt4Agg' # matplotlib backend
	FIG_DPI=90 # DPI of on sceen plot
	# Some help in calculating good figure size for Latex
	# documents. Starting with plot size in pt,
	# get this from LaTeX using \showthe\columnwidth
	fig_width_pt = 484.0
	inches_per_pt = 1.0/72.27  # Convert TeX pt to inches
	golden_mean = (np.sqrt(5)-1.0)/2.0   # Aesthetic ratio
	fig_width = fig_width_pt*inches_per_pt  # width in inches
	fig_height = fig_width*golden_mean      # height in inches
	fig_size = [fig_width,fig_height]
	# some plot options:
	LINEWIDTH = 1 # linewidths of traces in plot
	AA = True # antialiasing of traces
	USETEX = False # use Latex encoding in text
	SHADOW = False # shadow of legend box
	GRID = True # grid on or off
	# font sizes for normal text, tick labels and legend
	FONT_SIZE = 10 # size of normal text
	TICK_SIZE = 10 # size of tick labels
	LABEL_SIZE = 10 # size of axes labels
	LEGEND_SIZE = 10 # size of legend
	# font family and type
	font = {'family':'sans-serif','size':FONT_SIZE}
	DPI=300 # DPI for saving via savefig
	# print options given to savefig command:
	print_options = {'dpi':DPI, 'transparent':True, 'bbox_inches':'tight', 'pad_inches':0.1}
	# for Palatino and other serif fonts use:
	#font = {'family':'serif','serif':['Palatino']}
	SCREEN_TITLE = True # show title on screen?
	PRINT_TITLE = False # show title in saved file?

if __name__=="__main__":
	run()
