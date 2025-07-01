---
title: "{{ replace .TranslationBaseName "-" " " | title }}"
date: "{{ .Date }}"
slug: "{{ .Name }}"
author: "JurassikDev34"
authorTwitter: "jurassikdev34"
cover: "/images/aforismos/{{ .Name }}.png"
tags:
  - aforismo
  - filosofía
categories:
  - aforismos
description: "Una reflexión crítica sobre la banalización del pensamiento profundo."
showFullContent: false
hideComments: false
---


{{ replace .Name "-" " " | title }}

{{/*
Escriba aquí su aforismo. Sea claro, breve, contundente y filosóficamente cargado.
*/}}
