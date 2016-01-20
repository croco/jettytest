# jetty-test


## How to test
	
	java -jar app/target/dependency/jetty-runner.jar app/target/helloworld.war

## How to build
	
	docker build -t croco/jettytest .

## How to run
	
	docker run -p 8080:8080 -i -t croco/jettytest
