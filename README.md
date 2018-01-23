# apex docker-hub-images
[apex](https://github.com/apex/apex) docker images.  

# Pull image
```bash
$ docker pull neko-neko/apex
```

# Run image
## deploy example
```bash
$ docker run \
  -e AWS_ACCESS_KEY_ID=access_key_id \
  -e AWS_SECRET_ACCESS_KEY=secret_access_key \
  -e AWS_REGION=us-east-1 \
  deploy
```
