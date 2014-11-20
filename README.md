# What is capifony?

[Capistrano](https://github.com/capistrano/capistrano) is an open source tool for running scripts on multiple servers. It’s primary use is for easily deploying applications.
While it was built specifically for deploying [Rails](http://rubyonrails.org/) apps, it’s pretty simple to customize it to deploy other types of applications.

capifony is a deployment recipes collection that works with both [symfony](http://www.symfony-project.org/) and [Symfony2](http://symfony.com/) applications. 

> http://capifony.org/

# How to use this image

## Run the capifony docker image

    docker run \
        --rm \
        -i \
        -t \
        -v $(pwd):/root/workdir \
        -v $(readlink -f $SSH_AUTH_SOCK):/root/ssh-agent \
        capifony

This runs capifony in the current directory and forwards the SSH authentication socket. All followed parameters are passed to capifony.

## Install script

For simplicity you can install a script inside you PATH, for example in `/usr/local/bin/cap`, which executes the above command.
You can use the script at https://github.com/mjanser/capifony-docker/cap.sh for this.

# User Feedback

## Issues

If you have any problems with or questions about this image, please create a [GitHub issue](https://github.com/mjanser/capifony-docker/issues).

## Contributing

You are invited to contribute new features, fixes, or updates. Just fork the repository and create a pull request.
