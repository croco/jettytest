FROM jetty

COPY app/target/helloworld.war /var/lib/jetty/webapps/ROOT.war
COPY jetty-logging.properties /var/lib/jetty/resources/jetty-logging.properties

CMD java -jar -DAPPLICATION_ENV=production /usr/local/jetty/start.jar


#RUN java -jar -DAPPLICATION_ENV=production \
#    /usr/local/jetty/start.jar \
#    --add-to-startd=http2 --approve-all-licenses \
#    --add-to-start=logging

#RUN java -jar -d64 \
#    -XX:+UseConcMarkSweepGC \
#    -XX:+UseParNewGC \
#    -XX:+CMSParallelRemarkEnabled \
#    -XX:+CMSClassUnloadingEnabled \
#    -XX:CMSInitiatingOccupancyFraction=70 \
#    -XX:+DisableExplicitGC \
#    -XX:+UseCompressedOops \
#    -XX:+OptimizeStringConcat \
#    -XX:-UseGCOverheadLimit \
#    -XX:NewRatio=2 \
#    -XX:SurvivorRatio=8 \
#    -XX:TargetSurvivorRatio=90 \
#    -Xmx1024m \
#    -Xms1024m \
#    -Xss1024k \
#    -DAPPLICATION_ENV=production \
#    /usr/local/jetty/start.jar \
#    --add-to-startd=http2 --approve-all-licenses \
#    --add-to-start=logging
