index.html: fsm_presentation.md
	pandoc --to=revealjs --standalone --variable revealjs-url=reveal.js --metadata title="Dr. StateMachine" fsm_presentation.md > index.html

serve: index.html
	echo Open http://localhost:8000 in your browser
	python3 -m http.server
