Summary
-------

Generic data volume container where data are stored in the /data folder. This image could be used by any containers that need to store persistent data.


Build the image
---------------

To create the image, execute the following command in the docker-volume-data folder.

    docker build \
        -t cburki/volume-data \
        .


Run the image
-------------

Because this is a data volume container, the image could be run could be runned and stopped immediately and it still fulfill their purpose. Execute the following command to run the container once.

    docker run \
        --name volume-data \
        -d cburki/volume-data \
        /bin/true

Or, you can keep the container image running by placing a service running in the foreground.

    docker run \
        --name volume-data \
        -d cburki/volume-data \
        /bin/tail -f /dev/null

The default command defined in the image is /bin/tail -d /dev/null. So you could simply run the image without specifying the command.
