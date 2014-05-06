split_data = function(data, k){
	split = floor(nrow(data)/k)
	left = nrow(data) %% k
	sizes = 0
	# por enquanto soh diz quanto vai ter em cada subconjunto
	#acredito que temos que dividir o conj. original, soh num sei se eh agora ou na prox. fase
	for(j in 1:k){
		sizes[j] = split
	}

	for(i in 1:left){
		 #substituir essa soma por rbind()
		 sizes[i] = sizes[i]+1
	}
	return(sizes)
}

data_proportion = function(data, k){
	#manter as proporcoes das classes originais.
	#separa por classe
	class = data[,1] #supoem-se que a primeira coluna eh a classe
	data_by_class = split(data, class)
	#nao sei trabalhar com listas ai joguei td no data frame
	data_attr1 = data.frame(data_by_class[1])
	data_attr2 = data.frame(data_by_class[2])
	total = split_data(data, k)
	attr1 = split_data(data_attr1, k)
	attr2 = split_data(data_attr2, k)
	split_data = data.frame(total, attr1, attr2)
	return(split_data)
}


data = data_set = read.table('wdbc.data', sep=",")
data = cbind(data_set[2:32])
data_proportion(data, 13)

