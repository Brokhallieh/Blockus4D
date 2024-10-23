EXEC = hyperblokus
PROG = main.c

gen_ex: $(PROG)
	gcc $(PROG) -o $(EXEC)

clean:
	rm $(EXEC)

run:
	./$(EXEC)

build_run:
	gcc $(PROG) -o $(EXEC)
	./$(EXEC)
