# Osv-Scanner vulnerabilities scanner

## Base image alpine linux

```sh
docker build -t owenwilson/osv-scanner-tool-security:latest .
```

## Run osv-scanner from docker exec and generate report

```sh
docker run --rm \
--volume /var/run/docker.sock:/var/run/docker.sock \
--name osv-scanner owenwilson/osv-scanner-tool-security:latest  \
$(ImageName):$(ImageTag)
```

```sh
docker exec -i osv-scanner ubuntu:22.04 
```

## Run osv-scanner from docker-compose exec and generate report

```sh
docker-compose -f osc-scanner.yml up -d
```

```sh
docker-compose -f osv-scanner.yml exec -T osv-scanner-tool osv-scanner $(ImageName):$(ImageTag)
```

- Example

```sh
docker-compose -f osv-scanner.yml exec -T osv-scanner-tool osv-scanner --docker ubuntu:22.04 --format markdown > index.md
```

## DevOps
- [osv-scanner](https://google.github.io/)
