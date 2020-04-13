# Dockerfile for https://github.com/andrewjfreyer/monitor

## Notes:
 - Needs to be started with `--privileged` and `--network=host` to allow access to bluetooth device.
 - `/data` is used as configuration directory. Use a (bind-)volume to make the config persistent.
 - the `monitor` script `source`es the `mqtt_preferences` file. This means environment variables can be resolved in the config. E.g. I am using `$MQTT_ADDRESS` to configure the address of the mqtt server via the `--env` argument to `docker run`

## My `mqtt_preferences` file

```
# ---------------------------
#
# MOSQUITTO PREFERENCES
#
# ---------------------------

# IP ADDRESS OR HOSTNAME OF MQTT BROKER
mqtt_address=$MQTT_ADDRESS

# MQTT BROKER USERNAME
#mqtt_user=username

# MQTT BROKER PASSWORD
#mqtt_password=password

# MQTT PUBLISH TOPIC ROOT
mqtt_topicpath=monitor

# PUBLISHER IDENTITY
mqtt_publisher_identity='bluetooth-presence-monitor'

# MQTT PORT
mqtt_port='1883'

# MQTT CERTIFICATE FILE
mqtt_certificate_path=''

#MQTT VERSION (EXAMPLE: 'mqttv311')
mqtt_version=''

```
