printjson(
rs.initiate({
   _id : "rs0",
   members: [ 
   	{ _id : 0, host : "192.168.99.100:30001" },
   	{ _id : 1, host : "192.168.99.100:30002" },
   	{ _id : 2, host : "192.168.99.100:30003" }
   ]
})
);
printjson(rs.conf());
printjson(rs.status());
