#!/usr/bin/env python

import math
import matplotlib.pyplot as plt

YMIN = -2
YMAX = 2
N = 1000
DELTA = 1.0

def main():

	x = []
	y = []
	l = float(YMAX - YMIN)
	dy = l / N
	for i in range(N):
		y.append(YMIN + i * dy)
		x.append(math.tanh(2 * y[-1] / DELTA))

	plt.plot(x, y)
	plt.xlim((-1.5, 1.5))
	plt.show()

	with open("atanhx.csv", "w") as outfile:
		outfile.write("x, y\n")
		for n in range(N):
			strout = str(x[n]) + ", " + str(y[n]) + "\n"
			outfile.write(strout)

if __name__ == "__main__":
	main()
