# api-thaisminas

1) Requisitos para o projeto:

- asgiref==3.2.5
- certifi==2019.11.28
- chardet==3.0.4
- Django==3.0.4
- django-admin-interface==0.12.1
- django-colorfield==0.2.1
- django-flat-responsive==2.0
- django-flat-theme==1.1.4
- django-froala-editor==3.1.0
- djangorestframework==3.11.0
- idna==2.9
- jsonpath==0.82
- mysqlclient==1.4.6
- Pillow==7.0.0
- pytz==2019.3
- requests==2.23.0
- six==1.14.0
- sqlparse==0.3.1
- urllib3==1.25.8

2) Utilize o comando abaixo para subir um banco de dados MySQL via Docker:

```
docker-compose up
```

Obs.: O dump do banco está na pasta utils/DB

3) Crie um arquivo com o nome "local_settings.py" e adicione o conteúdo abaixo:

```
from .settings import *

SECRET_KEY = ''

DEBUG = True

ALLOWED_HOSTS = ['*']

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': '',
        'USER': '',
        'PASSWORD': '',
        'HOST': '',
        'PORT': 3306
    }
}
```

Complete com as informações relativas ao seu ambiente.

4) Com a conexão ao banco realizada, execute o comando abaixo:

```
python3 manage.py migrate --settings=apithaisminas.local_settings
```

5) Execute o comando abaixo para definir o seu usuário administrador:

```
python3 manage.py createsuperuser --settings=apithaisminas.local_settings
```

6) Para iniciar o projeto, utilize o comando abaixo:

```
python3 manage.py runserver --settings=apithaisminas.local_settings
```