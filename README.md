# Option 1: Docker Hub Usage

Pull Docker image from Docker Hub
```
docker pull mbirkner/docker-sonarqube-qualityprofiles
```

Start Docker Container from image
```
docker run -d --name docker-sonarqube-profiles -p 9000:9000 -p 9002:9002 mbirkner/docker-sonarqube-qualityprofiles
```

# Option 2: Build Container yourself

Clone Git Repository
```
git clone https://github.com/marcelbirkner/docker-sonarqube-qualityprofiles.git
cd docker-sonarqube-qualityprofiles
```

Build image
```
docker build -t docker-sonarqube-profiles .
```

Run container
```
docker run -d --name docker-sonarqube-profiles -v $PWD/qualityprofile:/qualityprofile -p 9000:9000 -p 9002:9002 docker-sonarqube-profiles
```

Get logs for container
```
docker logs -f docker-sonarqube-profiles
```
