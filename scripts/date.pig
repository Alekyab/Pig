
%declare date `date +'%Y-%m-%d'`;
A = LOAD '/home/hdoop/user/pig-0.11.0-cdh4.7.1/input/alekya.txt'  AS (f1:int,f2:int,f3:int);
STORE A INTO '/home/hdoop/user/pig-0.11.0-cdh4.7.1/output/$date'  USING PigStorage ('*');
