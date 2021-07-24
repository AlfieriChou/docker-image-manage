########################################################

postgres:
    @kubectl create -f postgres.yaml

migrations:
    @kubectl create -f kong_migration_postgres.yaml

delete:
    @kubectl delete -f kong_migration_postgres.yaml
    
kong:
    @kubectl create -f kong_postgres.yaml

all:
    @kubectl get all
