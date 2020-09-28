# worker

![Version: 3.9.1](https://img.shields.io/badge/Version-3.9.1-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 3.9.1](https://img.shields.io/badge/AppVersion-3.9.1-informational?style=flat-square)

A Helm chart for Aleph Woker

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| containerResources.limits.memory | string | `"800Mi"` |  |
| containerResources.requests.cpu | string | `"301m"` |  |
| containerResources.requests.memory | string | `"300Mi"` |  |
| containerSecurityContext.allowPrivilegeEscalation | bool | `false` |  |
| containerSecurityContext.readOnlyRootFilesystem | bool | `true` |  |
| env.WORKER_THREADS | int | `5` |  |
| google | bool | `false` |  |
| hpa.maxReplicas | int | `5` |  |
| hpa.minReplicas | int | `2` |  |
| hpa.scalingMetrics[0].resource.name | string | `"cpu"` |  |
| hpa.scalingMetrics[0].resource.targetAverageUtilization | int | `50` |  |
| hpa.scalingMetrics[0].type | string | `"Resource"` |  |
| image.pullPolicy | string | `"Always"` |  |
| nodeSelector.tier | string | `"application"` |  |
| podAnnotations | object | `{}` |  |
| podSecurityContext.fsGroup | int | `1000` |  |
| podSecurityContext.runAsGroup | int | `1000` |  |
| podSecurityContext.runAsUser | int | `1000` |  |
| strategy.rollingUpdate.maxSurge | int | `2` |  |
| strategy.rollingUpdate.maxUnavailable | string | `"100%"` |  |
| strategy.type | string | `"RollingUpdate"` |  |
