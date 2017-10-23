# infra
Команды по настройке системы и деплоя приложения

# Пример запуска instance
gcloud compute instances create reddit-app2 \
    --boot-disk-size=10GB \
    --image=ubuntu-1604-xenial-v20170815a \
    --image-project=ubuntu-os-cloud \
    --machine-type=g1-small \
    --tags puma-server \
    --restart-on-failure \
    --zone=europe-west1-b \
    --metadata-from-file startup-script=./startup.sh