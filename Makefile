all: sha2

sha2: sha2.o
	$(CC) $< -o $@

sha2.o: sha2.c sha2.h
	$(CC) -DTEST_VECTORS -c $<

clean:
	-rm -rf *.o sha2

