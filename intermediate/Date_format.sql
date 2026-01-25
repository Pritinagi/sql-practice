SELECT 
Orderid,
Creationtime,
FORMAT(creationtime,'d') d,
FORMAT(creationtime,'dd') dd,
FORMAT(creationtime,'ddd') ddd,
FORMAT(creationtime,'dddd') dddd,
FORMAT(creationtime,'MM') MM,
FORMAT(creationtime,'MMM') MMM,
FORMAT(creationtime,'MMMM') MMMM,
FORMAT(creationtime,'MM-dd-YYYY') USA_FORMAT,
FORMAT(creationtime,'dd-MM-YYYY') ERO_FORMAT


FROM Sales.Orders