+++
title = "{{ replace .TranslationBaseName "-" " " | title }}"
date = "{{ .Date }}"
slug = "{{ .Name }}"
author = "JurassikDev34"
authorTwitter = "jurassikdev34" #do not include @
cover = ""
tags = ["aforismo", "filosofía"]
categories = ["aforismos"]
description = "Una reflexión crítica sobre la banalización del pensamiento profundo."
+showFullContent = false
readingTime = false
hideComments = false
+++




+++
title = "{{ replace .Name "-" " " | title }}"
date = "{{ .Date }}"
slug = "{{ .Name }}"
tags = ["aforismo", "filosofía"]
categories = ["aforismos"]
description = "Una reflexión crítica sobre la banalización del pensamiento profundo."
+++

![imagen representativa](/images/{{ .Name }}.png)

{{ replace .Name "-" " " | title }}

{{/* 
Escriba aquí su aforismo. Sea claro, breve, contundente y filosóficamente cargado.
*/}}

