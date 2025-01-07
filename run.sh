sudo podman run \
    --rm \
    -it \
    --privileged \
    --pull=newer \
    --pid=host \
    --security-opt label=type:unconfined_t \
    -v /mnt/sysimage:/target \
    -v /var/lib/containers:/var/lib/containers \
    -v /dev:/dev \
    localhost/mysystem:latest \
    bootc install to-filesystem --root-mount-spec=225db7ac-2ec9-498f-8bf6-591d6e7b9d53 --boot-mount-spec=cd018277-dbb3-4810-96f9-0369f3eacc5e --replace=wipe --target-transport=containers-storage /target
