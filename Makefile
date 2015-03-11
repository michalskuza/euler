prob1_java:
	javac Problem1.java
prob1_ocaml:
	corebuild problem1.native
prob2_java:
	javac Problem2.java
prob2_ocaml:
	ocamlopt -o problem2 problem2.ml
prob3_ocaml:
	ocamlopt -o problem3 problem3.ml
prob3v2_ocaml:
	ocamlopt -o problem3_v2 sieve.mli sieve.ml problem3_v2.ml
prob4_ocaml:
	corebuild problem4.native
prob5_ocaml:
	corebuild problem5.native
prob5int64_ocaml:
	corebuild problem5_int64.native
prob6_ocaml:
	corebuild problem6.native
prob7_ocaml:
	corebuild problem7.native
prob8_ocaml:
	corebuild problem8.native
prob9: 
	corebuild problem9.native
prob9_quick: 
	corebuild problem9_quick.native
prob10_ocaml:	
	corebuild problem10.native
prob12_java:
	javac Problem12.java
prob20_ocaml:
	ocamlfind ocamlopt -linkpkg -thread -package core nums.cmxa problem20.ml -o problem20
prob20v2_ocaml:
	ocamlfind ocamlopt -linkpkg -thread -package core nums.cmxa problem20_ver2.ml -o problem20_ver2
prob22_java:
	javac Problem22.java
prob25_java:
	javac Problem25.java
sieve_java:
	javac Sieve.java

clean:
	rm -rf *.cmi *.cma *.cmo *.cmx *.cmxa *.o *.class
	rm -rf _build *.native *.byte

.PHONY: clean
