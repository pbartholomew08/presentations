# Load data
postprocess = Postprocess("input.json")

for t in range(T):
	postprocess.load(time=t)
	
	# Compute Q-criterion
	calc_gradu(postprocess)
	calc_vort(postprocess)
	calc_qcrit(postprocess)
	
	# Write to data file
	postprocess.write(vars=["Q"])

	# Cleanup (save memory)
	postprocess.clear_data()
