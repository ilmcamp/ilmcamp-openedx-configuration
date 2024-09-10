# ilmcamp Open edX Configuration


## Common Commands

to update apt and brew packages:

```console
./update.sh
```
to activate python environment
```console
source venv/bin/activate
```
To set the open edx theme in tutor

```console
# ADD ME PLEASE.
```

To refresh the theme repository for the tutor openedx Docker build

```console
./update.sh
```

To set an Open edX configuration values using tutor command line

```console
tutor config save --set PLATFORM_NAME="Ilm Camp"
```

```console
tutor local launch
# accept all default values
```

```console
docker exec ps
```

```console
docker exec -it tutor_local-lms-1 /bin/bash
cat /openedx/edx-platform/lms/envs/production.py
```


tutor local run lms sh