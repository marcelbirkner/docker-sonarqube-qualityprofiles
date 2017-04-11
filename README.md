# Usage

Build the image
```
docker build -t marcelbirkner/sonarqube-profile .
```

Run the container
```
docker run -d --name sonarqube-profile -v $PWD/qualityprofile:/qualityprofile -p 9000:9000 -p 9002:9002 marcelbirkner/sonarqube-profile
```

Get logs for container
```
docker logs -f sonarqube-profile
```
