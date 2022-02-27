1. Клонуємо репо
2. Встановлюємо тераформ
3. terraform init
4. terraform apply
...відповідаємо на питання щодо токену Digital Ocean, ssh ключа
5. Можна зробити файл terraform.tfvars з усіма варіаблами, шоб не вводити кожного разу
6. Для стопу цього всього діла - terraform destroy
7. Для зміни регіону - редагуємо відповідні змінні і робимо terraform apply. Список регіонів - https://docs.digitalocean.com/products/platform/availability-matrix
8. Для зміни об'єкту редагуємо відповідну команду в startup.sh
9. Для того, щоби запустити БІЛЬШЕ ОДНОГО ДРОПЛЕТУ треба виконати скрипт add-droplets.sh і вказати цифру. Щоби зменшити кількість дроплетів, - remove-droplets.sh, - вказати цифру, скільки прибрати. Після кожної з дій - terraform apply.
