# fluentd_mongodb_test
fluentd_mongodb_test is a small test project to monitor containers logs with Fluentd and MongoDb


### Prerequisites

kubectl macine
  

### Installation

1. Clone the repo
   ```sh
   git clone https://github.com/gimani2020/fluentd_mongodb_test.git
   ```
2. chmod +x run.sh
   
3. Execute ./run.sh and wait for setup to be deployd

4. Once finished, The MongoDB shell will be open  

5. Query MongoDB to get stdout & stderr from the "dummy" pods

   
   
    <!-- USAGE EXAMPLES -->
## Usage

Login to DB "mongo -u $MONGODB_USER -p $MONGODB_PASSWORD $MONGODB_DATABASE".
    
   To query stdout logs: "db.fmt_cl.find({"pod_name" : "stdout-app"}).pretty()"
   
   To query stderr logs: "db.fmt_cl.find({"pod_name" : "stderr-app"}).pretty()"
   
    
