# villesalonen.fi-docker
Dockerfile for villesalonen.fi

    docker build -t villesalonen-fi https://github.com/VilleSalonen/villesalonen.fi-docker.git
    docker run -d --restart=always -P villesalonen-fi
