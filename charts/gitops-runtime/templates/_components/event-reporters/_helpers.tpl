{{/*
Expand the name of the chart.
*/}}
{{- define "event-reporters.events-reporter.name" -}}
{{- print "events-reporter"}}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "event-reporters.events-reporter.fullname" -}}
{{- print "events-reporter"}}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "event-reporters.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "event-reporters.events-reporter.labels" -}}
helm.sh/chart: {{ include "event-reporters.chart" . }}
{{ include "event-reporters.events-reporter.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: Helm
app.kubernetes.io/part-of: events-reporter
codefresh.io/internal: "true"
{{- end }}

{{/*
Selector labels
*/}}
{{- define "event-reporters.events-reporter.selectorLabels" -}}
app.kubernetes.io/part-of: events-reporter
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "event-reporters.events-reporter.serviceAccountName" -}}
  {{- if .Values.events.serviceAccount.create }}
    {{- default (include "event-reporters.events-reporter.fullname" .) .Values.events.serviceAccount.name }}
  {{- else }}
    {{- default "default" .Values.events.serviceAccount.name }}
  {{- end }}
{{- end }}

{{/*
Expand the name of the chart.
*/}}
{{- define "event-reporters.rollout-reporter.name" -}}
{{- print "rollout-reporter"}}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "event-reporters.rollout-reporter.fullname" -}}
{{- print "rollout-reporter"}}
{{- end }}

{{/*
Common labels
*/}}
{{- define "event-reporters.rollout-reporter.labels" -}}
helm.sh/chart: {{ include "event-reporters.chart" . }}
{{ include "event-reporters.rollout-reporter.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: Helm
app.kubernetes.io/part-of: rollout-reporter
codefresh.io/internal: "true"
{{- end }}

{{/*
Selector labels
*/}}
{{- define "event-reporters.rollout-reporter.selectorLabels" -}}
app.kubernetes.io/part-of: rollout-reporter
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "event-reporters.rollout-reporter.serviceAccountName" -}}
  {{- if .Values.rollout.serviceAccount.create }}
    {{- default (include "event-reporters.rollout-reporter.fullname" .) .Values.rollout.serviceAccount.name }}
  {{- else }}
    {{- default "default" .Values.rollout.serviceAccount.name }}
  {{- end }}
{{- end }}

{{/*
Expand the name of the chart.
*/}}
{{- define "event-reporters.workflow-reporter.name" -}}
{{- print "workflow-reporter"}}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "event-reporters.workflow-reporter.fullname" -}}
{{- print "workflow-reporter"}}
{{- end }}

{{/*
Common labels
*/}}
{{- define "event-reporters.workflow-reporter.labels" -}}
helm.sh/chart: {{ include "event-reporters.chart" . }}
{{ include "event-reporters.workflow-reporter.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: Helm
app.kubernetes.io/part-of: workflow-reporter
codefresh.io/internal: "true"
{{- end }}

{{/*
Selector labels
*/}}
{{- define "event-reporters.workflow-reporter.selectorLabels" -}}
app.kubernetes.io/part-of: workflow-reporter
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "event-reporters.workflow-reporter.serviceAccountName" -}}
  {{- if .Values.workflow.serviceAccount.create }}
    {{- default (include "event-reporters.workflow-reporter.fullname" .) .Values.workflow.serviceAccount.name }}
  {{- else }}
    {{- default "default" .Values.workflow.serviceAccount.name }}
  {{- end }}
{{- end }}
