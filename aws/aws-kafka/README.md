# AWS Kafka

*Kafka provisioning on AWS*

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.


## Setup
Install the plugin:

  $> vagrant plugin install vagrant-aws

Install the box:

  $> vagrant box add dummy https://github.com/mitchellh/vagrant-aws/raw/master/dummy.box


## Deploy
Load the credentials into the environment:

  $> source .credentials.sh

Create and provision the EC2 instances:

  $> vagrant up

## Usage
First you need to create the Kafka topic `main-topic`:

    $kafka-home> bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic main-topic

Test the topic creation:

    $kafka-home> bin/kafka-topics.sh --list --zookeeper localhost:2181

To test message publishing:

    $kafka-home> bin/kafka-console-producer.sh --broker-list localhost:9092 --topic main-topic

    $kafka-home> bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic main-topic


## Authors
Giacomo Marciani, [gmarciani@acm.org](mailto:gmarciani@acm.org)


## License
The project is released under the [MIT License](https://opensource.org/licenses/MIT).
