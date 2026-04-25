# Regex Forge

Mini outil local pour préparer des renommages avec des expressions régulières.

Version bulgare : [README.bg.md](README.bg.md)

## Lancer sans Docker

Ouvre directement le fichier :

```text
app/index.html
```

## Lancer avec Docker Compose

Depuis le dossier du projet :

```powershell
docker compose up -d
```

Puis ouvre :

```text
http://localhost:8109
```

Pour arrêter :

```powershell
docker compose down
```

## Installation avec Portainer

Dans Portainer :

1. Va dans `Stacks`.
2. Clique sur `Add stack`.
3. Colle le contenu de `docker-compose.portainer.yml` dans le Web editor.
4. Déploie le stack.
5. Ouvre l'adresse de ton serveur sur le port `8109`.

Exemple :

```text
http://IP_DU_SERVEUR:8109
```

Le fichier `docker-compose.portainer.yml` construit l'image directement depuis le dépôt GitHub officiel :

```text
https://github.com/Fuzarth/regex-forge.git
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

## Fichiers Docker

- `Dockerfile` : image légère basée sur `nginx:alpine`.
- `nginx.conf` : sert l'application statique, désactive le cache HTML et garde un cache court pour les assets.
- `docker-compose.yml` : construit et lance l'application depuis le dossier local.
- `docker-compose.portainer.yml` : construit et lance l'application directement depuis GitHub.
