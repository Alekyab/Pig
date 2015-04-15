register /home/hdoop/user/pig-0.11.0-cdh4.7.1/jars/pigthick.jar
A = LOAD '/home/hdoop/user/pig-0.11.0-cdh4.7.1/input/alekya.txt' AS (a1:int, a2:int, a3:int);
B=Filter A by avro-0.0.1-SNAPSHOT.exec(a1,a2,a3);
DUMP B;
