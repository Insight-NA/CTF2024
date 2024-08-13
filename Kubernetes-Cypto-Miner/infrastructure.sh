az group create -n MasteryCTF_Andrew -l eastus

az acr create -n ctfcontainerregistry -g MasteryCTF_Andrew --sku Basic

az aks create -n ctfCluster -g MasteryCTF_Andrew --generate-ssh-keys --attach-acr ctfcontainerregistry

az aks get-credentials -n ctfCluster -g MasteryCTF_Andrew 

#Azure Kubernetes Service Cluster Admin role
az role assignment create --assignee d671537e-64c2-4359-b63a-47576dad6153 --role 0ab0b1a8-8aac-4efd-b8c2-3ee1fb270be8 --scope "/subscriptions/41be4315-05b7-4424-a1ef-eed640b37461/resourceGroups/MasteryCTF_Andrew/providers/Microsoft.ContainerService/managedClusters/ctfCluster"

#acrPull role
az role assignment create --assignee d671537e-64c2-4359-b63a-47576dad6153 --role 7f951dda-4ed3-4680-a7ca-43fe172d538d  --scope "/subscriptions/41be4315-05b7-4424-a1ef-eed640b37461/resourceGroups/MasteryCTF_Andrew/providers/Microsoft.ContainerRegistry/registries/ctfcontainerregistry"

