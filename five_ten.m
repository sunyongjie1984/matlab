clc;
dataBaseUrl = 'jdbc:oracle:thin:@192.168.0.113:1521:';
driver = 'oracle.jdbc.driver.OracleDriver';
userName = 'scott';
password = 'tiger';
dataBaseName = 'orcl';
conn = database(dataBaseName, userName, password, driver, dataBaseUrl);

ping(conn) %ping(conn)

sqlquery = 'select * from wkhistorydata order by id';
curs = exec(conn, sqlquery);

curs = fetch(curs);
%payhData = cell2mat(curs.Data)
payhData = curs.Data % all data
%tmp1 = curs.Data(1 : rows(curs), 1 : 2) % first and second rows
close(conn);