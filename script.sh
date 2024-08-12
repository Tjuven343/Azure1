#!/bin/bash

az group create --name DemoRG2 --location northeurope

az vm create --resource-group DemoRG2 --name TestVM --image Ubuntu2204 --admin-username azureuser --generate-ssh-keys --size Standard_B1s --custom-data @cloud-init.sh

az vm open-port --resource-group DemoRG2 --name TestVM --port 80