# Regex Forge

Mini outil local pour préparer des renommages avec des expressions régulières.

## Lancer localement sans Docker

Depuis le dossier du projet :

```powershell
cd app
python -m http.server 8099
```

Puis ouvrir :

http://localhost:8099

## Lancer avec Docker Compose

Depuis le dossier du projet :

```powershell
docker compose up -d
```

Puis ouvrir :

http://localhost:8109

Pour arrêter :

```powershell
docker compose down
```

## Fonctions

- test visuel de la regex sur une liste de fichiers ;
- champ de remplacement avec groupes `$1`, `$2`, etc. ;
- aperçu `ancien -> nouveau` ligne par ligne ;
- alertes sur les doublons, noms vides et noms inchangés ;
- copie des seuls noms réellement modifiés ;
- export texte des seuls noms réellement modifiés ;
- option de capitalisation des premières lettres des mots dans les nouveaux noms ;
- sauvegarde locale de scénarios et de blocs de remplacement personnalisés ;
- suppression des blocs personnalisés ou par défaut depuis l'interface ;
- reset des blocs et scénarios vers la configuration de base ;
- interface en français ou en bulgare, avec choix mémorisé dans le navigateur.

## Installation avec Portainer

1. Crée un dossier sur ton NAS :
   /volume2/docker/regex-forge

2. Mets ces fichiers dedans :
   - docker-compose.yml
   - nginx.conf
   - dossier app avec index.html

3. Dans Portainer :
   Stacks > Add stack > Upload ou Web editor

4. Lance le stack.

5. Ouvre :
   http://IP_DU_NAS:8109

Note : le port `8099` est déjà utilisé par `joal` sur le NAS. Le stack Portainer `regex-forge` a donc été déployé sur le port `8109`.
Le stack monte directement `/volume2/docker/regex-forge/app` et `/volume2/docker/regex-forge/nginx.conf`, donc une modification de `app/index.html` sur le NAS est prise en compte sans rebuild d'image.

## Fichiers Docker

- `Dockerfile` : image légère basée sur `nginx:alpine`.
- `nginx.conf` : sert l'application statique, désactive le cache HTML et garde un cache court pour les assets.
- `docker-compose.yml` : expose l'application sur le port `8109`, monte les fichiers statiques en lecture seule et ajoute un healthcheck.

## Notes

Cette version ne contient pas encore d'IA.
Elle fonctionne entièrement dans le navigateur.
