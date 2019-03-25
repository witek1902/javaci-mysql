BASEDIR=$(readlink -f $(dirname "$0") )
ENV_FILE=${BASEDIR}/env

[ -f ${ENV_FILE} ] || {
    echo "Configuration file missing: $ENV_FILE"
    exit 1
}

. $ENV_FILE

docker run \
    --name mysql \
    -d \
    --restart=unless-stopped \
    -e MYSQL_ROOT_PASSWORD \
    -e MYSQL_DATABASE \
    -e MYSQL_USER \
    -e MYSQL_PASSWORD \
    -v /var/lib/mysql:/var/lib/mysql \
    -p 3306:3306 \
    -u $(id -u mysql):$(id -g mysql) \
    mysql:5.7.25 \
    --net_buffer_length=10485760 \
    --max_allowed_packet=10485760