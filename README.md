# Information

- **Auteur** : Lekhlaikh Taha
- **Contact**: taha.lekhlaikh@imt-atlantique.net
- **Formation** : Master Spécialisé Infrastructures Cloud et DevOps




# DEPLOIEMENT DE VAPORMAP

- Vous devez lancer le pipeline pour déployer l'infrastructure avec terraform et de déployer l'application  avec ansible.
- Si vous voulez le lancer dans votre depot il suffit de declarer les variables d'environnement qui corrcepent à votre compte openstack.
- La destruction de l'infrastructure se fait manuellement en l'activant.

# Accéder à l'application

Pour accéder à l'application Vapormap, rendez-vous sur les adresses suivantes :

Vous pouvez trouver l'adresse Ip publique dans le fichier "ip.txt" ou bien "host.ini" dans l'artificat.
- Frontend: http://<Adress_Ip_public>:8000


- API: http://<Adress_Ip_public>:5000/api/points/
