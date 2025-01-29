start: 
 (
    -1: npm install && npm run build
     0: composer update (may have to run twice or smth)
 )
 1: docker-compose build (may not need to be run but it will highlight errors if present)
 2: docker-compose up -d
 2.5: docker-compose exec app php artisan storage:link
 3.5: docker-compose exec app php artisan key:generate
 3: npm run dev
    or npm run build
end: docker-compose down

build (maybe reruns everything): docker-compose build 


initDB:
 1: docker-compose exec app php artisan migrate:fresh
 2: docker-compose exec app php artisan db:seed
 


 After creating these files:

Build the new image:

docker build -t charity-app:latest .

Tag it:

docker tag charity-app:latest 135808952415.dkr.ecr.eu-north-1.amazonaws.com/rafa/charity-web:latest

Push it:

docker push 135808952415.dkr.ecr.eu-north-1.amazonaws.com/rafa/charity-web:latest

Update your ECS service to force a new deployment:

aws ecs update-service \
    --cluster charity-cluster \
    --service charity-service \
    --force-new-deployment