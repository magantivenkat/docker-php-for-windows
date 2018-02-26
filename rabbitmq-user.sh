#!/bin/sh

# Create Default RabbitMQ setup
( sleep 10 ; \

# Create users
# rabbitmqctl add_user <username> <password>
rabbitmqctl add_user admin 123456 ; \

# Set user rights
# rabbitmqctl set_user_tags <username> <tag>
rabbitmqctl set_user_tags admin administrator ; \

# Create vhosts
# rabbitmqctl add_vhost <vhostname>
rabbitmqctl add_vhost laravel ; \

# Set vhost permissions
# rabbitmqctl set_permissions -p <vhostname> <username> ".*" ".*" ".*"
rabbitmqctl set_permissions -p laravel admin ".*" ".*" ".*" ; \
) &
rabbitmq-server $@