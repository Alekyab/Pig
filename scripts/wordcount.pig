a = load '/home/hdoop/user/pig-0.11.0-cdh4.7.1/input/wordcount.txt';
b = foreach a generate flatten(TOKENIZE((chararray)$0)) as word;
c = group b by word;
d = foreach c generate COUNT(b), group;
store d into '/home/hdoop/user/pig-0.11.0-cdh4.7.1/output/pig_wordcount';
