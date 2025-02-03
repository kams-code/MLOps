# Utiliser une image de base Python avec Jupyter
FROM jupyter/base-notebook:python-3.9.12

# Définit le répertoire de travail dans le conteneur
WORKDIR /app

# Copie le script sum.py dans le répertoire /app
COPY test.csv train.csv Untitled.ipynb requirement.txt /app/

# Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Copier le script Jupyter Notebook dans le répertoire de travail
COPY code.ipynb .

# Spécifier la commande à exécuter lorsque le conteneur démarre
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--allow-root"]

# Commande par défaut pour que le conteneur reste actif
#CMD ["tail", "-f", "/dev/null"]