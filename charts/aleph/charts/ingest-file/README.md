# ingest-file

![Version: 3.9.1](https://img.shields.io/badge/Version-3.9.1-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 3.9.1](https://img.shields.io/badge/AppVersion-3.9.1-informational?style=flat-square)

A Helm chart for document ingestor service

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| containerResources.limits.memory | string | `"3000Mi"` |  |
| containerResources.requests.cpu | string | `"300m"` |  |
| containerResources.requests.memory | string | `"2000Mi"` |  |
| containerSecurityContext.readOnlyRootFilesystem | bool | `true` |  |
| env.INGESTORS_CONVERT_DOCUMENT_URL | string | `"http://aleph-convert-document.default.svc.cluster.local:3000/convert"` |  |
| env.OCR_VISION_API | bool | `false` |  |
| env.WORKER_THREADS | int | `0` |  |
| google | bool | `false` |  |
| hpa.maxReplicas | int | `60` |  |
| hpa.minReplicas | int | `5` |  |
| hpa.scalingMetrics[0].resource.name | string | `"cpu"` |  |
| hpa.scalingMetrics[0].resource.targetAverageUtilization | int | `100` |  |
| hpa.scalingMetrics[0].type | string | `"Resource"` |  |
| image.pullPolicy | string | `"Always"` |  |
| image.repository | string | `"alephdata/ingest-file"` |  |
| nodeSelector.lifespan | string | `"transient"` |  |
| nodeSelector.tier | string | `"application"` |  |
| podAnnotations."cluster-autoscaler.kubernetes.io/safe-to-evict" | string | `"true"` |  |
| podSecurityContext.fsGroup | int | `1000` |  |
| podSecurityContext.runAsGroup | int | `1000` |  |
| podSecurityContext.runAsUser | int | `1000` |  |
| strategy.rollingUpdate.maxSurge | int | `20` |  |
| strategy.rollingUpdate.maxUnavailable | string | `"100%"` |  |
| strategy.type | string | `"RollingUpdate"` |  |
| terminationGracePeriodSeconds | int | `300` |  |
