# ui

![Version: 3.9.1](https://img.shields.io/badge/Version-3.9.1-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 3.9.1](https://img.shields.io/badge/AppVersion-3.9.1-informational?style=flat-square)

A Helm chart for Aleph UI

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| containerResources.requests.cpu | string | `"50m"` |  |
| containerResources.requests.memory | string | `"21Mi"` |  |
| containerSecurityContext | object | `{}` |  |
| image.pullPolicy | string | `"Always"` |  |
| image.repository | string | `"alephdata/aleph-ui-production"` |  |
| nginxConfig."mime.types" | string | `"types {\n    text/html                                        html htm shtml;\n    text/css                                         css;\n    text/xml                                         xml;\n    image/gif                                        gif;\n    image/jpeg                                       jpeg jpg;\n    application/javascript                           js;\n    image/png                                        png;\n    image/svg+xml                                    svg svgz;\n    image/tiff                                       tif tiff;\n    image/x-icon                                     ico;\n    image/x-jng                                      jng;\n    application/font-woff                            woff;\n    application/json                                 json;\n    application/zip                                  zip;\n}\n"` |  |
| nginxConfig."nginx.conf" | string | `"worker_processes 4;\n\nevents {\n  worker_connections 1024;\n}\n\nhttp {\n  include mime.types;\n  index index.html;\n  sendfile on;\n\n  server {\n    listen 80 default_server;\n\n    access_log off;\n    add_header X-Clacks-Overhead          \"GNU DCG; JK; MK\";\n    add_header Feature-Policy             \"accelerometer 'none'; camera 'none'; geolocation 'none'; gyroscope 'none'; magnetometer 'none'; microphone 'none'; payment 'none'; usb 'none'\";\n\n    location ~ ^/static.* {\n      root /assets;\n      expires 14d;\n    }\n\n    location / {\n      root /assets;\n      try_files $uri $uri/ /index.html;\n      expires 1s;\n    }\n  }\n}\n"` | nginx configuarions for the proxy |
| nodeSelector.lifespan | string | `"transient"` |  |
| podAnnotations."cluster-autoscaler.kubernetes.io/safe-to-evict" | string | `"true"` |  |
| podSecurityContext | object | `{}` |  |
| replicas | int | `2` |  |
| strategy.rollingUpdate.maxSurge | int | `2` |  |
| strategy.rollingUpdate.maxUnavailable | string | `"50%"` |  |
| strategy.type | string | `"RollingUpdate"` |  |
