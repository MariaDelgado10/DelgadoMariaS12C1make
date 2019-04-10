resultados.pdf : resultados.tex plot1.pdf plot.pdf
	pdflatex resultados.tex

plot.pdf : plotdatos.py datos.dat
	python plotdatos.py

plot1.pdf : plotdatos1.py datos1.dat
	python plotdatos1.py

plotdatos.py : makedatos.py datos.dat
	python makedatos.py
 
plotdatos1.py : makedatos1.cpp  datos1.dat
	g++ makedatos1.cpp
	./a.out makedatos1.cpp 


	

