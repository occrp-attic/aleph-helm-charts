# api

![Version: 3.9.1](https://img.shields.io/badge/Version-3.9.1-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 3.9.1](https://img.shields.io/badge/AppVersion-3.9.1-informational?style=flat-square)

A Helm chart for Aleph API

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| containerResources.limits.memory | string | `"3000Mi"` |  |
| containerResources.requests.cpu | string | `"200m"` |  |
| containerResources.requests.memory | string | `"2000Mi"` |  |
| containerSecurityContext.allowPrivilegeEscalation | bool | `false` |  |
| containerSecurityContext.readOnlyRootFilesystem | bool | `true` |  |
| env | object | `{}` |  |
| hpa.maxReplicas | int | `14` |  |
| hpa.minReplicas | int | `1` |  |
| hpa.scalingMetrics[0].resource.name | string | `"cpu"` |  |
| hpa.scalingMetrics[0].resource.targetAverageUtilization | int | `60` |  |
| hpa.scalingMetrics[0].type | string | `"Resource"` |  |
| image.pullPolicy | string | `"Always"` |  |
| nodeSelector.tier | string | `"application"` |  |
| podAnnotations | object | `{}` |  |
| podSecurityContext.fsGroup | int | `1000` |  |
| podSecurityContext.runAsGroup | int | `1000` |  |
| podSecurityContext.runAsUser | int | `1000` |  |
| strategy.rollingUpdate.maxSurge | int | `4` |  |
| strategy.rollingUpdate.maxUnavailable | string | `"10%"` |  |
| strategy.type | string | `"RollingUpdate"` |  |
| upgrade.containerResources.requests.memory | string | `"600Mi"` |  |
