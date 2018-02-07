java -jar java-cup-11b.jar facture.cup
javac -cp .:java-cup-11b.jar sym.java
jflex facture.jflex
javac -cp java-cup-11b.jar:. parser.java 
javac -cp java-cup-11b.jar:. Yylex.java 
javac -cp .:java-cup-11b.jar Main.java
java -cp .:java-cup-11b.jar Main une_facture.txt

