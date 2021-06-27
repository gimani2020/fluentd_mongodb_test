# fluentd_mongodb_test
fluentd_mongodb_test is a small test project to monitor containers logs with Fluentd and MongoDb

instruction:
    1. clone the repositry to your local folder on your kubectl  machine 
    2. chmod +x run.sh
    3. Execute ./run.sh and wait for setup to be deployd
    4. when deploynmt finish the  mongodb shell  will be open
    5. Login to DB "mongo -u $MONGODB_USER -p $MONGODB_PASSWORD $MONGODB_DATABASE"
    6. To query stdout logs: "db.fmt_cl.find({"pod_name" : "stdout-app"}).pretty()"
    6. To query stderr logs: "db.fmt_cl.find({"pod_name" : "stderr-app"}).pretty()"
    
   
   
    
