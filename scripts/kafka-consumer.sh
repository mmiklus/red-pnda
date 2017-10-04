#/bin/bash
# simple python script
sudo pip install kafka-python
sudo pip install avro
sudo pip install pandas
sudo pip install scipy
sudo pip install scikit-learn

if [ ! -d /data ]; then
	mkdir /data
fi

cp $1/scripts/files/dataplatform-raw.avsc /opt/pnda

cp $1/scripts/files/consumer.py /opt/pnda

<<<<<<< HEAD
cp $1/scripts/files/producer.py /opt/pnda

cp $1/scripts/files/kafka-consumer.conf /etc/init
=======
<<<<<<< HEAD
cp $1/files/producer.py /opt/pnda

cp $1/files/kafka-consumer.conf /etc/init
=======
sed -i "s/localhost/$2/g" /opt/pnda/consumer.py

cp $1/scripts/files/producer.py /opt/pnda

sed -i "s/localhost/$2/g" /opt/pnda/producer.py

cp $1/scripts/files/kafka-consumer.conf /etc/init
>>>>>>> 15a717c... Update Kafka scripts to advertise reachable IP address from outside instead of just relying on local connections
>>>>>>> 010518c... Update Kafka scripts to advertise reachable IP address from outside instead of just relying on local connections

crontab -l > mycron
#echo new cron into cron file
echo "0 * * * * sudo service kafka-consumer restart" >> mycron

#install new cron file
crontab mycron
rm mycron
