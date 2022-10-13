#!/usr/bin/env bash
#
yq -i ".version = \"${1}\" | .appVersion style=\"double\" | .appVersion = \"${1}\"" chart/Chart.yaml
helm repo add k8ss http://helm.yotron.de/
helm dependency build chart
helm package chart