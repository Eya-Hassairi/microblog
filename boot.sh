<<<<<<< HEAD
#!/bin/bash
# this script is used to boot a Docker container
while true; do
    flask db upgrade
    if [[ "$?" == "0" ]]; then
=======
#!/bin/sh

# cette partie sert à effectuer des opérations sur la base de données si nécessaires
while true; do
    if flask db upgrade; then
>>>>>>> upstream/master
        break
    fi
    echo Deploy command failed, retrying in 5 secs...
    sleep 5
done
<<<<<<< HEAD
exec gunicorn -b :5000 --access-logfile - --error-logfile - microblog:app
=======

# cette partie permet de faire varier l'environnement du container
set -e
if [ "$CONTEXT" = 'DEV' ]; then
    echo "Running Development Server"
    FLASK_ENV=development exec flask run -h 0.0.0.0
else
    echo "Running Production Server"
    exec gunicorn -b :5000 --access-logfile - --error-logfile - microblog:app
fi
>>>>>>> upstream/master
