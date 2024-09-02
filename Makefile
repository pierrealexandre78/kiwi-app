
hello :
	echo "hello"

build:
	docker build -t kiwi-app .

run:
	docker run -e PORT=$(PORT) -p 8000:$(PORT) kiwi-app

deploy:
	gcloud run deploy $(REPOSITORY) \
  --image $(LOCATION)-docker.pkg.dev/$(PROJECT_ID)/$(REPOSITORY)/$(IMAGENAME):$(TAG) \
  --platform managed \
  --region $(LOCATION) \
  --allow-unauthenticated