# Deployer

Deploys and renders dig files

## Set up your td profile files
Create ~/.td/dev.conf and ~/.td/prod.conf


If you want to deploy a specific project use deploy_specific_project.yml and replace with project name and maeket

```
ansible-playbook -i ansible.dev.inventory deploy_specific_project.yml --extra-vars "td_api_key=foo project_name=project_name market=<market>"
```

### To deploy all projects to dev by market wise

```
ansible-playbook -i ansible.dev.inventory deploy.yml --extra-vars "td_api_key=<td_api_key> market=<market>" --tags "<market>"
```


### To deploy projects to prod by market wise

```
ansible-playbook -i ansible.prod.inventory deploy.yml --extra-vars "td_api_key=<td_api_key> market=<market>" --tags "<market>"
```
