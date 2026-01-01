{{- /*
Helper: port name based on protocol
*/ -}}
{{- define "traefik-external-services.portName" -}}
{{- if eq .protocol "https" -}}https{{- else -}}http{{- end -}}
{{- end -}}

{{- /*
Helper: entryPoint selection
*/ -}}
{{- define "traefik-external-services.entryPoint" -}}
{{- if eq .protocol "https" -}}websecure{{- else -}}web{{- end -}}
{{- end -}}
