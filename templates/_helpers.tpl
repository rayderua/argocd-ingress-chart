{{/*
Create argocd server name and version as used by the chart label.
*/}}
{{- define "argo-cd.server.fullname" -}}
{{- printf "%s-%s" (include "argo-cd.fullname" .) .Values.server.name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Expand the namespace of the release.
Allows overriding it for multi-namespace deployments in combined charts.
*/}}
{{- define "argo-cd.namespace" -}}
{{- default .Release.Namespace .Values.namespaceOverride | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "argo-cd.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create argocd application set name and version as used by the chart label.
*/}}
{{- define "argo-cd.applicationSet.fullname" -}}
{{- printf "%s-%s" (include "argo-cd.fullname" .) .Values.applicationSet.name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
