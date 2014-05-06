function split(data, k){
	split = flor(data.length / k)
	left = data.length %% k
	# por enquanto soh diz quanto vai ter em cada subconjunto
	#acredito que temos que dividir o conj. original, soh num sei se eh agora ou na prox. fase
	for(j in 1:k){
		sizes[j] = split
	}

	for(i in 1:length(left)){
		 #substituir essa soma por rbind()
		 sizes[i] = sizes [i]+1
	}

	#manter as proporcoes das classes originais.
	#separa por classe
	class = data[,1] #supoem-se que a primeira coluna eh a classe
	data_by_class = split(data, class)
	for(k in 1:length(data_by_class)){
		tam[k] = data_by_class[k]
		#acho q tem um jeito mais esperto de contar, mas eu toh com mt sono.
	}
}