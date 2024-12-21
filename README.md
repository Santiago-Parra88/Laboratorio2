# Self-hosted Azure agent in Docker

# To Run Agent

- Create a .env file with the required properties:

```bash
AZP_TOKEN=
AZP_URL=https://dev.azure.com/<<student_account>>
AZP_POOL=#NAME_OF_YOUR_POOL#
AZP_AGENT_NAME="Docker Agent"
ARCH=arm64 #x64
```
> __Student_account__ será el nombre de su cuenta de Azure DevOps
> __NAME_OF_YOUR_POOL__ será el nombre del pool de agentes que haya creado en Azure DevOps

You must set the TOKEN based on the PAT created in your Azure DevOps Account, and ARHC based in your workstation architecture (arm64 for ARM Chispet or x64 for Intel one)

- Run `docker-compose up` at root folder

> NOTA: En caso de realizar cambios en los Dockerfiles, se sugiere ejecutar `docker-compose build`--no-cache para asegurar que los cambios hechos persistan en la construcción de la imagen para los fines prácticos

# References
- https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/docker?view=azure-devops#linux
- https://medium.com/@newfishg/running-java-runtime-self-hosted-agents-in-azure-kubernetes-service-for-azure-devops-fa8adf3686b5