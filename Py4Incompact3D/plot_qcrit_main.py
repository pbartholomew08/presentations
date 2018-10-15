# Load data
input_file = "input.json"
postprocess = Postprocess(input_file)

for t in range(T):
	postprocess.load(time=t)
	
	# Compute Q-criterion
	calc_gradu(postprocess)
	calc_vort(postprocess)
	calc_qcrit(postprocess)
	
	# Write to data file
	vel_list = ["ux", "uy", "uz"]
	directions = ["x", "y", "z"]
	for i in range(3):
		for j in range(3):
			name = "vort" + directions[i] + directions[j]
			postprocess.write(vars=[name])
	postprocess.write(vars=["Q"])

	# Cleanup (save memory)
	postprocess.clear_data()
