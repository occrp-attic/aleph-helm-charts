# convert-document

![Version: 6.0.0](https://img.shields.io/badge/Version-6.0.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 6](https://img.shields.io/badge/AppVersion-6-informational?style=flat-square)

Helm chart for document converter service (https://github.com/alephdata/convert-document)

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| containerResources.limits.memory | string | `"500Mi"` |  |
| containerResources.requests.cpu | string | `"300m"` |  |
| containerResources.requests.memory | string | `"120Mi"` |  |
| containerSecurityContext.readOnlyRootFilesystem | bool | `true` |  |
| hpa.maxReplicas | int | `30` |  |
| hpa.minReplicas | int | `2` |  |
| hpa.scalingMetrics[0].resource.name | string | `"cpu"` |  |
| hpa.scalingMetrics[0].resource.targetAverageUtilization | int | `50` |  |
| hpa.scalingMetrics[0].type | string | `"Resource"` |  |
| image.pullPolicy | string | `"Always"` |  |
| image.repository | string | `"alephdata/convert-document"` |  |
| image.tag | string | `"428b493ec1a57b3551222556c5ad2c60b129c157"` |  |
| nodeSelector.lifespan | string | `"transient"` |  |
| podAnnotations."cluster-autoscaler.kubernetes.io/safe-to-evict" | string | `"true"` |  |
| podSecurityContext.fsGroup | int | `1000` |  |
| podSecurityContext.runAsGroup | int | `1000` |  |
| podSecurityContext.runAsUser | int | `1000` |  |
| service.port | int | `3000` |  |
| service.type | string | `"ClusterIP"` |  |
| strategy.rollingUpdate.maxSurge | int | `2` |  |
| strategy.rollingUpdate.maxUnavailable | string | `"70%"` |  |
| strategy.type | string | `"RollingUpdate"` |  |
