# Regex Forge

Mini outil local pour préparer des renommages avec des expressions régulières.

Version bulgare : [README.bg.md](README.bg.md)

## Soutenir le projet

[![Laisser un pourboire avec PayPal](https://pics.paypal.com/00/s/OWI5M2ZlNWQtZDY0Zi00MTllLWJjYWItNjVlYzA0NzhmZGM0/file.PNG)](https://www.paypal.com/donate?business=G2ZMVZLXK8SYC&no_recurring=0&item_name=Je%20ne%20pourrai%20pas%20contr%C3%B4ler%20le%20monde%20%C3%A0%20moi%20seul%2C%20mais%20je%20me%20souviendrai%20de%20toi%20quand%20je%20le%20pourrai%20%E2%98%BA%EF%B8%8F&currency_code=EUR)

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
