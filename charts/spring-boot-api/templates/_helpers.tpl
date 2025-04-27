{{- define "spring-boot-api.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "spring-boot-api.fullname" -}}
{{- printf "%s-%s" .Release.Name (include "spring-boot-api.name" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "spring-boot-api.chart" -}}
{{ .Chart.Name }}-{{ .Chart.Version }}
{{- end -}}