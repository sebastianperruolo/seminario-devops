resource "docker_image" "mysql" {
    name="mysql:5.7"
}

resource "docker_image" "apache" {
    name="fcapua/apache2:latest"
}

resource "docker_container" "mysql" {
    name="wordpress_mysql"
    image="${docker_image.mysql.latest}"
    env=[
        "MYSQL_ROOT_PASSWORD=root",
        "MYSQL_DTABASE=wordpress",
        "MYSQL_USER=wordpress",
        "MYSQL_PASSWORD=wordpress"
    ]
    networks_advanced={
        name="${docker_network.wordpress_network.id}"
    }
}

resource "docker_container" "apache" {
    name="wordpress_apache"
    image="${docker_image.apache.latest}"
    ports={
        internal="80"
        external="8080"
    }
    networks_advanced={
        name="${docker_network.wordpress_network.id}"
    }
}

resource "docker_network" "wordpress_network" {
    name="wordpress_network"
}
