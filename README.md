# Usage

Build the image
```
docker build -t marcelbirkner/docker-sonarqube-profiles .
```

Run the container
```
docker run -d --name sonarqube-profiles -v $PWD/qualityprofile:/qualityprofile -p 9000:9000 -p 9002:9002 marcelbirkner/docker-sonarqube-profiles
```

Get logs for container
```
docker logs -f sonarqube-profile
```
