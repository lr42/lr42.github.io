index.html: fsm_presentation.md
	rm index.html
	pandoc --to=revealjs --standalone --variable revealjs-url=reveal.js fsm_presentation.md > index.html

serve: index.html
	echo Open http://localhost:8000 in your browser
	python3 -m http.server
