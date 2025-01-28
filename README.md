start: 
 (
    -1: npm install && npm run build
     0: composer update (may have to run twice or smth)
 )
 1: docker-compose build (may not need to be run but it will highlight errors if present)
 2: docker-compose up -d
 3.5: docker-compose exec app php artisan key:generate
 3: npm run dev
    or npm run build
end: docker-compose down

build (maybe reruns everything): docker-compose build 


initDB:
 1: docker-compose exec app php artisan migrate:fresh
 2: docker-compose exec app php artisan db:seed
 