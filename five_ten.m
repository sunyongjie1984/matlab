clc;
%five_ten.m
% five ten 
dataBaseUrl = 'jdbc:oracle:thin:@192.168.0.113:1521:';
driver = 'oracle.jdbc.driver.OracleDriver';
userName = 'scott';
password = 'tiger';
dataBaseName = 'orcl';
conn = database(dataBaseName, userName, password, driver, dataBaseUrl);
ping(conn) %ping(conn)
sqlquery = 'select * from wkhistorydata where id <= 100 order by id';
%sqlquery = 'select * from wkhistorydata order by id';

curs = exec(conn, sqlquery);
curs = fetch(curs); % all data

data = cell2mat(curs.Data); % origin data

[mOri, nOri] = size(data);
% avgFive
avgFive = data(:, 1 : 2); % row id and row prePrice
avgFive(1, 3) = 0; %add one row to store the avgFive

for i = 5 : mOri
    avgFive(i, 3) = avgFive(i - 4, 2) + avgFive(i - 3, 2) + avgFive(i - 2, 2) + avgFive(i - 1, 2) + avgFive(i - 0, 2);
    avgFive(i, 3) = avgFive(i, 3) / 5;
end

avgTen = avgFive
%avgFive(1 : 4, :) = []

% avgTen

avgTen(1, 4) = 0 %add one row to store the avgFive
for i = 10 : mOri
    avgTen(i, 4) = avgTen(i - 9, 2) + avgTen(i - 8, 2) + avgTen(i - 7, 2) + avgTen(i - 6, 2) + avgTen(i - 5, 2) + avgTen(i - 4, 2) + avgTen(i - 3, 2) + avgTen(i - 2, 2) + avgTen(i - 1, 2) + avgTen(i - 0, 2);
    avgTen(i, 4) = avgTen(i, 4) / 10;
end


avgTen(1 : 9, :) = [] % delete the first 9 line

a = avgTen(:, 2 : 4) % delete the first row

plot(a); %draw prePrice avgFive avgTen together

close(conn);