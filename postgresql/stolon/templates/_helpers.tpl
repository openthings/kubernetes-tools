{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "stolon.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "stolon.fullname" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified store name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "stolon.store.fullname" -}}
{{- printf "%s-%s" .Release.Name .Values.store.backend | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "stolon.clusterName" -}}
{{- $genName := printf "%s-%s" .Release.Name .Chart.Name -}}
{{- $name := default $genName .Values.clusterName -}}
{{- printf $name -}}
{{- end -}}

{{- define "stolon.keeper.fullname" -}}
{{- $serviceName := default "keeper" .Values.keeper.nameOverride -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- printf "%s-%s-%s" .Release.Name $name $serviceName | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "stolon.sentinel.fullname" -}}
{{- $serviceName := default "sentinel" .Values.sentinel.nameOverride -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- printf "%s-%s-%s" .Release.Name $name $serviceName | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "stolon.proxy.fullname" -}}
{{- $serviceName := default "proxy" .Values.proxy.nameOverride -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- printf "%s-%s-%s" .Release.Name $name $serviceName | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/* Create the name of the service account to use */}}
{{- define "stolon.serviceAccountName" -}}
{{- if .Values.serviceAccount.create -}}
    {{ default (include "stolon.fullname" .) .Values.serviceAccount.name }}
{{- else -}}
    {{ default "default" .Values.serviceAccount.name }}
{{- end -}}
{{- end -}}
