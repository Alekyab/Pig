register /home/hdoop/user/pig-0.11.0-cdh4.7.1/jars/apachelog.jar
A = LOAD '/home/hdoop/user/pig-0.11.0-cdh4.7.1/input/apache_log' AS (a1:chararray);
B= foreach A generate com.cloudwick.team15.pig.ApacheParser(a1);
c =  foreach B  generate FLATTEN(STRSPLIT($0, '\t')) ;
Dump c;
