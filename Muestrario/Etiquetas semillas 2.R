library(googlesheets4)
library(dplyr)
library(huito)


# ARROZ

# Autenticarse en Google Sheets
gs4_auth()

# Leer los datos desde Google Sheets
url <- "https://docs.google.com/spreadsheets/d/1X5wBN_FrxXZ-XCQjYROYdNjaJcSAwmeBk9zd66utBSI/edit?usp=sharing"
gs <- as_sheets_id(url)
fb <- range_read(gs, sheet = "fb")

# Elegir fuentes
font <- c("Courgette", "Tillana")
huito_fonts(font)

# Crear etiquetas
label1 <- fb %>%
  rename(scientific.name = FACTOR, name = PLOTS) %>%
  mutate(
    number = row_number(),
    barcode = paste(number, gsub("(\\w+\\s+\\w+).*", "\\1", scientific.name), sep = "_"),
    barcode = gsub(" ", "-", barcode)
  ) %>%
  label_layout(size = c(5, 4), border_color = "darkgreen") %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1fM3-_98oz2-dIjDxu9HJUtVa7m731hDn",
    size = c(2.3,2.8),
    position = c(1.25, 3.63)
  ) %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1fo2yzvb6AgUKx6eUsdEkb8RtzTu3dqT3",
    size = c(2.3, 2.8),
    position = c(1.35, 0.7)
  ) %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1vQtmW68NSIsW_pJWfb1cObvx_mtCGZgF",
    size = c(0.65, 0.65),
    position = c(4.6, 3.6)
  ) %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1j74ns-mhktVGevGSVg5xi0PWdkRrXTZa",
    size = c(1.5, 1.5),
    position = c(4.3, 0.7)
  ) %>%
  include_text(value = "Oryza sativa", position = c(2.6, 2.3), size = 13, color = "black", font = font[1]) %>%
  include_text(value = "Arroz INIA 516", position = c(2.5, 2.8), size = 14, color = "black", font = font[2])  # <--- SIN %>%

# Ahora sí ejecuta la vista previa
label1 %>% label_print(mode = "preview")



# ALPISTE

# Elegir fuentes
font <- c("Courgette", "Tillana")
huito_fonts(font)

# Crear etiquetas
label2 <- fb %>%
  rename(scientific.name = FACTOR, name = PLOTS) %>%
  mutate(
    number = row_number(),
    barcode = paste(number, gsub("(\\w+\\s+\\w+).*", "\\1", scientific.name), sep = "_"),
    barcode = gsub(" ", "-", barcode)
  ) %>%
  label_layout(size = c(5, 4), border_color = "darkgreen") %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1fM3-_98oz2-dIjDxu9HJUtVa7m731hDn",
    size = c(2.3,2.8),
    position = c(1.25, 3.63)
  ) %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1eBcV_VU7PK3WMTXoQrgSGqQrE6bwgzJ6",
    size = c(2.3, 2.8),
    position = c(1.35, 0.8)
  ) %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1vQtmW68NSIsW_pJWfb1cObvx_mtCGZgF",
    size = c(0.65, 0.65),
    position = c(4.6, 3.6)
  ) %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1R5mv4FtRxagwet1n4lIFD1yqatDnDsP0",
    size = c(1.5, 1.5),
    position = c(4.3, 0.7)
  ) %>%
  include_text(value = "Phalaris canariensis", position = c(2.6, 2.3), size = 13, color = "black", font = font[1]) %>%
  include_text(value = "Alpiste", position = c(2.5, 2.8), size = 14, color = "black", font = font[2])  # <--- SIN %>%

# Ahora sí ejecuta la vista previa
label2 %>% label_print(mode = "preview")


# Maíz amiláceo INIA 603 - choclero

# Elegir fuentes
font <- c("Courgette", "Tillana")
huito_fonts(font)

# Crear etiquetas
label3 <- fb %>%
  rename(scientific.name = FACTOR, name = PLOTS) %>%
  mutate(
    number = row_number(),
    barcode = paste(number, gsub("(\\w+\\s+\\w+).*", "\\1", scientific.name), sep = "_"),
    barcode = gsub(" ", "-", barcode)
  ) %>%
  label_layout(size = c(5, 4), border_color = "darkgreen") %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1fM3-_98oz2-dIjDxu9HJUtVa7m731hDn",
    size = c(2.3,2.8),
    position = c(1.25, 3.63)
  ) %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1tfX2hmo2fhswNzGqrpfnnqN4iNN1SU1y",
    size = c(2.3, 2.8),
    position = c(1.35, 0.7)
  ) %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1vQtmW68NSIsW_pJWfb1cObvx_mtCGZgF",
    size = c(0.65, 0.65),
    position = c(4.6, 3.6)
  ) %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1BFItaEM0D9Wad1sWp-3n0DsvzKAZKBhN",
    size = c(1.5, 1.5),
    position = c(4.3, 0.7)
  ) %>%
  include_text(value = "Zea mays", position = c(2.6, 2.3), size = 11, color = "black", font = font[1]) %>%
  include_text(value = "INIA 603 - Choclero", position = c(2.5, 2.8), size = 14, color = "black", font = font[2])  # <--- SIN %>%

# Ahora sí ejecuta la vista previa
label3 %>% label_print(mode = "preview")


# Avena forrajera    

# Elegir fuentes
font <- c("Courgette", "Tillana")
huito_fonts(font)

# Crear etiquetas
label4 <- fb %>%
  rename(scientific.name = FACTOR, name = PLOTS) %>%
  mutate(
    number = row_number(),
    barcode = paste(number, gsub("(\\w+\\s+\\w+).*", "\\1", scientific.name), sep = "_"),
    barcode = gsub(" ", "-", barcode)
  ) %>%
  label_layout(size = c(5, 4), border_color = "darkgreen") %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1fM3-_98oz2-dIjDxu9HJUtVa7m731hDn",
    size = c(2.3,2.8),
    position = c(1.25, 3.63)
  ) %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1cijarp7v_Tfxu6RVdmv3HnOm222GDfOB",
    size = c(2.3, 2.8),
    position = c(1.35, 0.8)
  ) %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1vQtmW68NSIsW_pJWfb1cObvx_mtCGZgF",
    size = c(0.65, 0.65),
    position = c(4.6, 3.6)
  ) %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1yLSnN_8b-jsHDoFBVl3jyf-jSyA7TxJ-",
    size = c(1.5, 1.5),
    position = c(4.3, 0.7)
  ) %>%
  include_text(value = "Avena sativa", position = c(2.6, 2.3), size = 13, color = "black", font = font[1]) %>%
  include_text(value = "Avena forrajera", position = c(2.5, 2.8), size = 14, color = "black", font = font[2])  # <--- SIN %>%

# Ahora sí ejecuta la vista previa
label4 %>% label_print(mode = "preview")

# Bestford  
# Elegir fuentes
font <- c("Courgette", "Tillana")
huito_fonts(font)

# Crear etiquetas
label5 <- fb %>%
  rename(scientific.name = FACTOR, name = PLOTS) %>%
  mutate(
    number = row_number(),
    barcode = paste(number, gsub("(\\w+\\s+\\w+).*", "\\1", scientific.name), sep = "_"),
    barcode = gsub(" ", "-", barcode)
  ) %>%
  label_layout(size = c(5, 4), border_color = "darkgreen") %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1fM3-_98oz2-dIjDxu9HJUtVa7m731hDn",
    size = c(2.3,2.8),
    position = c(1.25, 3.63)
  ) %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1R1zmt4DTgknkcBWi5EbcG5uIcF8InC9c",
    size = c(2.3, 2.8),
    position = c(1.35, 0.8)
  ) %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1vQtmW68NSIsW_pJWfb1cObvx_mtCGZgF",
    size = c(0.65, 0.65),
    position = c(4.6, 3.6)
  ) %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1NAwzTRMZy2DI-PXeBN4xdPJCpuQuMJhC",
    size = c(1.5, 1.5),
    position = c(4.3, 0.7)
  ) %>%
  include_text(value = "Lolium hibridum", position = c(2.6, 2.3), size = 13, color = "black", font = font[1]) %>%
  include_text(value = "Bestfor plus", position = c(2.5, 2.8), size = 14, color = "black", font = font[2])  # <--- SIN %>%

# Ahora sí ejecuta la vista previa
label5 %>% label_print(mode = "preview")

# Bizon 
# Elegir fuentes
font <- c("Courgette", "Tillana")
huito_fonts(font)

# Crear etiquetas
label6 <- fb %>%
  rename(scientific.name = FACTOR, name = PLOTS) %>%
  mutate(
    number = row_number(),
    barcode = paste(number, gsub("(\\w+\\s+\\w+).*", "\\1", scientific.name), sep = "_"),
    barcode = gsub(" ", "-", barcode)
  ) %>%
  label_layout(size = c(5, 4), border_color = "darkgreen") %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1fM3-_98oz2-dIjDxu9HJUtVa7m731hDn",
    size = c(2.3,2.8),
    position = c(1.25, 3.63)
  ) %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1YMgX7Fri74oMMQjiruLFIGc9mEzGpipa",
    size = c(2.3, 2.8),
    position = c(1.35, 0.8)
  ) %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1vQtmW68NSIsW_pJWfb1cObvx_mtCGZgF",
    size = c(0.65, 0.65),
    position = c(4.6, 3.6)
  ) %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1VeTSCM9dfDdX0aGI2lWazDFbLu0TU4h1",
    size = c(1.5, 1.5),
    position = c(4.3, 0.7)
  ) %>%
  include_text(value = "Lolium perenne", position = c(2.6, 2.3), size = 13, color = "black", font = font[1]) %>%
  include_text(value = "Bizon", position = c(2.5, 2.8), size = 14, color = "black", font = font[2])  # <--- SIN %>%

# Ahora sí ejecuta la vista previa
label6 %>% label_print(mode = "preview")

# Cebada 
# Elegir fuentes
font <- c("Courgette", "Tillana")
huito_fonts(font)

# Crear etiquetas
label7 <- fb %>%
  rename(scientific.name = FACTOR, name = PLOTS) %>%
  mutate(
    number = row_number(),
    barcode = paste(number, gsub("(\\w+\\s+\\w+).*", "\\1", scientific.name), sep = "_"),
    barcode = gsub(" ", "-", barcode)
  ) %>%
  label_layout(size = c(5, 4), border_color = "darkgreen") %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1fM3-_98oz2-dIjDxu9HJUtVa7m731hDn",
    size = c(2.3,2.8),
    position = c(1.25, 3.63)
  ) %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=167MieemZLWNCD0Oy5wV_Mc8wKhdG7h9R",
    size = c(2.3, 2.8),
    position = c(1.35, 0.8)
  ) %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1vQtmW68NSIsW_pJWfb1cObvx_mtCGZgF",
    size = c(0.65, 0.65),
    position = c(4.6, 3.6)
  ) %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1oEdCfz_Hl-19GtYD3ycx3WdITdKZIRvb",
    size = c(1.5, 1.5),
    position = c(4.3, 0.7)
  ) %>%
  include_text(value = "Hordeum vulgare", position = c(2.6, 2.3), size = 13, color = "black", font = font[1]) %>%
  include_text(value = "Cebada", position = c(2.5, 2.8), size = 14, color = "black", font = font[2])  # <--- SIN %>%

# Ahora sí ejecuta la vista previa
label7 %>% label_print(mode = "preview")

# Cebolla morada
# Elegir fuentes
font <- c("Courgette", "Tillana")
huito_fonts(font)

# Crear etiquetas
label8 <- fb %>%
  rename(scientific.name = FACTOR, name = PLOTS) %>%
  mutate(
    number = row_number(),
    barcode = paste(number, gsub("(\\w+\\s+\\w+).*", "\\1", scientific.name), sep = "_"),
    barcode = gsub(" ", "-", barcode)
  ) %>%
  label_layout(size = c(5, 4), border_color = "darkgreen") %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1fM3-_98oz2-dIjDxu9HJUtVa7m731hDn",
    size = c(2.3,2.8),
    position = c(1.25, 3.63)
  ) %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1ftIWQW_s84cRoJwmOVshlVadKJJ-YjgL",
    size = c(2.3, 2.1),
    position = c(1.35, 0.8)
  ) %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1vQtmW68NSIsW_pJWfb1cObvx_mtCGZgF",
    size = c(0.65, 0.65),
    position = c(4.6, 3.6)
  ) %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=14cy0w-n8Zemz8S83AH55LWMsEmNSTxf7",
    size = c(1.5, 1.5),
    position = c(4.3, 0.7)
  ) %>%
  include_text(value = "Allium cepa", position = c(2.6, 2.3), size = 13, color = "black", font = font[1]) %>%
  include_text(value = "Cebolla morada", position = c(2.5, 2.8), size = 14, color = "black", font = font[2])  # <--- SIN %>%

# Ahora sí ejecuta la vista previa
label8 %>% label_print(mode = "preview")

# Cebolla china
# Elegir fuentes
font <- c("Courgette", "Tillana")
huito_fonts(font)

# Crear etiquetas
label9 <- fb %>%
  rename(scientific.name = FACTOR, name = PLOTS) %>%
  mutate(
    number = row_number(),
    barcode = paste(number, gsub("(\\w+\\s+\\w+).*", "\\1", scientific.name), sep = "_"),
    barcode = gsub(" ", "-", barcode)
  ) %>%
  label_layout(size = c(5, 4), border_color = "darkgreen") %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1fM3-_98oz2-dIjDxu9HJUtVa7m731hDn",
    size = c(2.3,2.8),
    position = c(1.25, 3.63)
  ) %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1_EIWGblx_86wmwYN6pd5BOxcyW9IZUjg",
    size = c(2.3, 2.1),
    position = c(1.35, 0.8)
  ) %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1vQtmW68NSIsW_pJWfb1cObvx_mtCGZgF",
    size = c(0.65, 0.65),
    position = c(4.6, 3.6)
  ) %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1qdbBKFUGANHPo1ic2dCf8YukDb9TFrIg",
    size = c(1.5, 1.5),
    position = c(4.3, 0.7)
  ) %>%
  include_text(value = "Allium fistulosum", position = c(2.6, 2.3), size = 13, color = "black", font = font[1]) %>%
  include_text(value = "Cebolla china", position = c(2.5, 2.8), size = 14, color = "black", font = font[2])  # <--- SIN %>%

# Ahora sí ejecuta la vista previa
label9 %>% label_print(mode = "preview")

# dactilis glomerata

# Elegir fuentes
font <- c("Courgette", "Tillana")
huito_fonts(font)

# Crear etiquetas
label10 <- fb %>%
  rename(scientific.name = FACTOR, name = PLOTS) %>%
  mutate(
    number = row_number(),
    barcode = paste(number, gsub("(\\w+\\s+\\w+).*", "\\1", scientific.name), sep = "_"),
    barcode = gsub(" ", "-", barcode)
  ) %>%
  label_layout(size = c(5, 4), border_color = "darkgreen") %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1fM3-_98oz2-dIjDxu9HJUtVa7m731hDn",
    size = c(2.3,2.8),
    position = c(1.25, 3.63)
  ) %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1wn5sd_KWcswi83IfgJqm3E-6km9Z3spx",
    size = c(2.3, 2.1),
    position = c(1.35, 0.8)
  ) %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1vQtmW68NSIsW_pJWfb1cObvx_mtCGZgF",
    size = c(0.65, 0.65),
    position = c(4.6, 3.6)
  ) %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1foxOTw07c8rjmdfeRTgqgbXAnFyxZ4O-",
    size = c(1.5, 1.5),
    position = c(4.3, 0.7)
  ) %>%
  include_text(value = "Dactilis glomerata", position = c(2.6, 2.3), size = 13, color = "black", font = font[1]) %>%
  include_text(value = "Pasto obillo", position = c(2.5, 2.8), size = 14, color = "black", font = font[2])  # <--- SIN %>%

# Ahora sí ejecuta la vista previa
label10 %>% label_print(mode = "preview")

# Maiz blanco

# Elegir fuentes
font <- c("Courgette", "Tillana")
huito_fonts(font)

# Crear etiquetas
label11 <- fb %>%
  rename(scientific.name = FACTOR, name = PLOTS) %>%
  mutate(
    number = row_number(),
    barcode = paste(number, gsub("(\\w+\\s+\\w+).*", "\\1", scientific.name), sep = "_"),
    barcode = gsub(" ", "-", barcode)
  ) %>%
  label_layout(size = c(5, 4), border_color = "darkgreen") %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1fM3-_98oz2-dIjDxu9HJUtVa7m731hDn",
    size = c(2.3,2.8),
    position = c(1.25, 3.63)
  ) %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=16nLXwyqYQ0EoNfhpWHn0blVrZj8hO24U",
    size = c(2.3, 2.1),
    position = c(1.35, 0.8)
  ) %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1vQtmW68NSIsW_pJWfb1cObvx_mtCGZgF",
    size = c(0.65, 0.65),
    position = c(4.6, 3.6)
  ) %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=17dRI3K6Q8uLa8-hLbMKmzf28fCLMfU6D",
    size = c(1.5, 1.5),
    position = c(4.3, 0.7)
  ) %>%
  include_text(value = "Zea mays", position = c(2.6, 2.3), size = 13, color = "black", font = font[1]) %>%
  include_text(value = "Maiz blanco", position = c(2.5, 2.8), size = 14, color = "black", font = font[2])  # <--- SIN %>%

# Ahora sí ejecuta la vista previa
label11 %>% label_print(mode = "preview")

# Maiz morado INIA 601

# Elegir fuentes
font <- c("Courgette", "Tillana")
huito_fonts(font)

# Crear etiquetas
label12 <- fb %>%
  rename(scientific.name = FACTOR, name = PLOTS) %>%
  mutate(
    number = row_number(),
    barcode = paste(number, gsub("(\\w+\\s+\\w+).*", "\\1", scientific.name), sep = "_"),
    barcode = gsub(" ", "-", barcode)
  ) %>%
  label_layout(size = c(5, 4), border_color = "darkgreen") %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1fM3-_98oz2-dIjDxu9HJUtVa7m731hDn",
    size = c(2.3,2.8),
    position = c(1.25, 3.63)
  ) %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1aAVGzbVMtyuBCaR3EAQTDzH-L9qJ0dmX",
    size = c(2.3, 2.1),
    position = c(1.35, 0.8)
  ) %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1vQtmW68NSIsW_pJWfb1cObvx_mtCGZgF",
    size = c(0.65, 0.65),
    position = c(4.6, 3.6)
  ) %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1Hp0spyJCVH3qhlyM8h-ag-MCWi94tn3T",
    size = c(1.5, 1.5),
    position = c(4.3, 0.7)
  ) %>%
  include_text(value = "Zea mays", position = c(2.6, 2.3), size = 13, color = "black", font = font[1]) %>%
  include_text(value = "Maiz morado INIA 601", position = c(2.5, 2.8), size = 14, color = "black", font = font[2])  # <--- SIN %>%

# Ahora sí ejecuta la vista previa
label12 %>% label_print(mode = "preview")

# Maiz morocho INIA 604

# Elegir fuentes
font <- c("Courgette", "Tillana")
huito_fonts(font)

# Crear etiquetas
label13 <- fb %>%
  rename(scientific.name = FACTOR, name = PLOTS) %>%
  mutate(
    number = row_number(),
    barcode = paste(number, gsub("(\\w+\\s+\\w+).*", "\\1", scientific.name), sep = "_"),
    barcode = gsub(" ", "-", barcode)
  ) %>%
  label_layout(size = c(5, 4), border_color = "darkgreen") %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1fM3-_98oz2-dIjDxu9HJUtVa7m731hDn",
    size = c(2.3,2.8),
    position = c(1.25, 3.63)
  ) %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1IYcy_kWVwWvs1Yp3a22ZRaodDOXRPWAf",
    size = c(2.3, 2.1),
    position = c(1.35, 0.8)
  ) %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1vQtmW68NSIsW_pJWfb1cObvx_mtCGZgF",
    size = c(0.65, 0.65),
    position = c(4.6, 3.6)
  ) %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1nP1MVhumQ_FRnEsSqTi8dlkFN8dA2dbp",
    size = c(1.5, 1.5),
    position = c(4.3, 0.7)
  ) %>%
  include_text(value = "Zea mays", position = c(2.6, 2.3), size = 13, color = "black", font = font[1]) %>%
  include_text(value = "Maiz morocho INIA 604", position = c(2.5, 2.8), size = 14, color = "black", font = font[2])  # <--- SIN %>%

# Ahora sí ejecuta la vista previa
label13 %>% label_print(mode = "preview")

# Puerro

# Elegir fuentes
font <- c("Courgette", "Tillana")
huito_fonts(font)

# Crear etiquetas
label14 <- fb %>%
  rename(scientific.name = FACTOR, name = PLOTS) %>%
  mutate(
    number = row_number(),
    barcode = paste(number, gsub("(\\w+\\s+\\w+).*", "\\1", scientific.name), sep = "_"),
    barcode = gsub(" ", "-", barcode)
  ) %>%
  label_layout(size = c(5, 4), border_color = "darkgreen") %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1fM3-_98oz2-dIjDxu9HJUtVa7m731hDn",
    size = c(2.3,2.8),
    position = c(1.25, 3.63)
  ) %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1-uOOkm4QleJ-K4d7BNNYHK68cvgwkTVZ",
    size = c(2.3, 2.1),
    position = c(1.35, 0.8)
  ) %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1vQtmW68NSIsW_pJWfb1cObvx_mtCGZgF",
    size = c(0.65, 0.65),
    position = c(4.6, 3.6)
  ) %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1j7m7R6iqRtBdc4Pi9ayM9nLfr6hyfVdV",
    size = c(1.5, 1.5),
    position = c(4.3, 0.7)
  ) %>%
  include_text(value = "Allium porrum", position = c(2.6, 2.3), size = 13, color = "black", font = font[1]) %>%
  include_text(value = "Puerro", position = c(2.5, 2.8), size = 14, color = "black", font = font[2])  # <--- SIN %>%

# Ahora sí ejecuta la vista previa
label14 %>% label_print(mode = "preview")

# Maiz quispicanchi falta QR

# Elegir fuentes
font <- c("Courgette", "Tillana")
huito_fonts(font)

# Crear etiquetas
label15 <- fb %>%
  rename(scientific.name = FACTOR, name = PLOTS) %>%
  mutate(
    number = row_number(),
    barcode = paste(number, gsub("(\\w+\\s+\\w+).*", "\\1", scientific.name), sep = "_"),
    barcode = gsub(" ", "-", barcode)
  ) %>%
  label_layout(size = c(5, 4), border_color = "darkgreen") %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1fM3-_98oz2-dIjDxu9HJUtVa7m731hDn",
    size = c(2.3,2.8),
    position = c(1.25, 3.63)
  ) %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1Bd1-gDco9za9ucraRSvVBCHCfe-Wal-M",
    size = c(2.3, 2.1),
    position = c(1.35, 0.8)
  ) %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1vQtmW68NSIsW_pJWfb1cObvx_mtCGZgF",
    size = c(0.65, 0.65),
    position = c(4.6, 3.6)
  ) %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1lqpju3pawAptGwQ3DeuM-dspWFeQ44Jt",
    size = c(1.5, 1.5),
    position = c(4.3, 0.7)
  ) %>%
  include_text(value = "Zea mays", position = c(2.6, 2.3), size = 13, color = "black", font = font[1]) %>%
  include_text(value = "Maiz quispicanchi", position = c(2.5, 2.8), size = 14, color = "black", font = font[2])  # <--- SIN %>%

# Ahora sí ejecuta la vista previa
label15 %>% label_print(mode = "preview")

# Ray grass ingles

# Elegir fuentes
font <- c("Courgette", "Tillana")
huito_fonts(font)

# Crear etiquetas
label16 <- fb %>%
  rename(scientific.name = FACTOR, name = PLOTS) %>%
  mutate(
    number = row_number(),
    barcode = paste(number, gsub("(\\w+\\s+\\w+).*", "\\1", scientific.name), sep = "_"),
    barcode = gsub(" ", "-", barcode)
  ) %>%
  label_layout(size = c(5, 4), border_color = "darkgreen") %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1fM3-_98oz2-dIjDxu9HJUtVa7m731hDn",
    size = c(2.3,2.8),
    position = c(1.25, 3.63)
  ) %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=14EQqv285xEz6tfMGFzFv9XKJ0mniWcH_",
    size = c(2.3, 2.1),
    position = c(1.35, 0.8)
  ) %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1vQtmW68NSIsW_pJWfb1cObvx_mtCGZgF",
    size = c(0.65, 0.65),
    position = c(4.6, 3.6)
  ) %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1KxNSXKMl0I6F28Z4K3-YYfEpYKVkslx1",
    size = c(1.5, 1.5),
    position = c(4.3, 0.7)
  ) %>%
  include_text(value = "Lolium perenne", position = c(2.6, 2.3), size = 13, color = "black", font = font[1]) %>%
  include_text(value = "Ray grass ingles", position = c(2.5, 2.8), size = 14, color = "black", font = font[2])  # <--- SIN %>%

# Ahora sí ejecuta la vista previa
label16 %>% label_print(mode = "preview")

# Trigo
# Elegir fuentes
font <- c("Courgette", "Tillana")
huito_fonts(font)

# Crear etiquetas
label17 <- fb %>%
  rename(scientific.name = FACTOR, name = PLOTS) %>%
  mutate(
    number = row_number(),
    barcode = paste(number, gsub("(\\w+\\s+\\w+).*", "\\1", scientific.name), sep = "_"),
    barcode = gsub(" ", "-", barcode)
  ) %>%
  label_layout(size = c(5, 4), border_color = "darkgreen") %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1fM3-_98oz2-dIjDxu9HJUtVa7m731hDn",
    size = c(2.3,2.8),
    position = c(1.25, 3.63)
  ) %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=13idTmgi8eYL-QB_zoUN-QXkUfBgojffL",
    size = c(2.3, 2.1),
    position = c(1.35, 0.8)
  ) %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1vQtmW68NSIsW_pJWfb1cObvx_mtCGZgF",
    size = c(0.65, 0.65),
    position = c(4.6, 3.6)
  ) %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1eSTUSRjHVpV-gfkYzclbaTS_ub540-9J",
    size = c(1.5, 1.5),
    position = c(4.3, 0.7)
  ) %>%
  include_text(value = "Titricum aestivum", position = c(2.6, 2.3), size = 13, color = "black", font = font[1]) %>%
  include_text(value = "Trigo", position = c(2.5, 2.8), size = 14, color = "black", font = font[2])  # <--- SIN %>%

# Ahora sí ejecuta la vista previa
label17 %>% label_print(mode = "preview")

# Maiz urubamba 560

# Elegir fuentes
font <- c("Courgette", "Tillana")
huito_fonts(font)

# Crear etiquetas
label18 <- fb %>%
  rename(scientific.name = FACTOR, name = PLOTS) %>%
  mutate(
    number = row_number(),
    barcode = paste(number, gsub("(\\w+\\s+\\w+).*", "\\1", scientific.name), sep = "_"),
    barcode = gsub(" ", "-", barcode)
  ) %>%
  label_layout(size = c(5, 4), border_color = "darkgreen") %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1fM3-_98oz2-dIjDxu9HJUtVa7m731hDn",
    size = c(2.3,2.8),
    position = c(1.25, 3.63)
  ) %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1gjFyC3DPKKTNSJt9GBjnv2WAwDAOC9l1",
    size = c(2.3, 2.1),
    position = c(1.35, 0.8)
  ) %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1vQtmW68NSIsW_pJWfb1cObvx_mtCGZgF",
    size = c(0.65, 0.65),
    position = c(4.6, 3.6)
  ) %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1ysz8LGuL1BiEcbhda6udg3x6LDhwp8TB",
    size = c(1.5, 1.5),
    position = c(4.3, 0.7)
  ) %>%
  include_text(value = "Zea mays", position = c(2.6, 2.3), size = 13, color = "black", font = font[1]) %>%
  include_text(value = "Maiz urubamba 560", position = c(2.5, 2.8), size = 14, color = "black", font = font[2])  # <--- SIN %>%

# Ahora sí ejecuta la vista previa
label18 %>% label_print(mode = "preview")

# Wanka grass

# Elegir fuentes
font <- c("Courgette", "Tillana")
huito_fonts(font)

# Crear etiquetas
label19 <- fb %>%
  rename(scientific.name = FACTOR, name = PLOTS) %>%
  mutate(
    number = row_number(),
    barcode = paste(number, gsub("(\\w+\\s+\\w+).*", "\\1", scientific.name), sep = "_"),
    barcode = gsub(" ", "-", barcode)
  ) %>%
  label_layout(size = c(5, 4), border_color = "darkgreen") %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1fM3-_98oz2-dIjDxu9HJUtVa7m731hDn",
    size = c(2.3,2.8),
    position = c(1.25, 3.63)
  ) %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=17Tk2QItUZZ2VGv41rTTSjVmfFYvAj92T",
    size = c(2.3, 2.1),
    position = c(1.35, 0.8)
  ) %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1vQtmW68NSIsW_pJWfb1cObvx_mtCGZgF",
    size = c(0.65, 0.65),
    position = c(4.6, 3.6)
  ) %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1SHqzLsqFs3BtWkrpo85D14JK9s9mQPjT",
    size = c(1.5, 1.5),
    position = c(4.3, 0.7)
  ) %>%
  include_text(value = "Dactili sp.", position = c(2.6, 2.3), size = 13, color = "black", font = font[1]) %>%
  include_text(value = "Wanka grass", position = c(2.5, 2.8), size = 14, color = "black", font = font[2])  # <--- SIN %>%

# Ahora sí ejecuta la vista previa
label19 %>% label_print(mode = "preview")

# Centeno 

# Elegir fuentes
font <- c("Courgette", "Tillana")
huito_fonts(font)

# Crear etiquetas
label20 <- fb %>%
  rename(scientific.name = FACTOR, name = PLOTS) %>%
  mutate(
    number = row_number(),
    barcode = paste(number, gsub("(\\w+\\s+\\w+).*", "\\1", scientific.name), sep = "_"),
    barcode = gsub(" ", "-", barcode)
  ) %>%
  label_layout(size = c(5, 4), border_color = "darkgreen") %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1fM3-_98oz2-dIjDxu9HJUtVa7m731hDn",
    size = c(2.3,2.8),
    position = c(1.25, 3.63)
  ) %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1uNnF0bQe6WjnF2K1dJsFwg04SiG8VPLp",
    size = c(2.3, 2.1),
    position = c(1.35, 0.8)
  ) %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1vQtmW68NSIsW_pJWfb1cObvx_mtCGZgF",
    size = c(0.65, 0.65),
    position = c(4.6, 3.6)
  ) %>%
  include_image(
    value = "https://drive.google.com/uc?export=view&id=1nALXhQZI8vbYv3gsbgEXkTnYRG4ur1Rk",
    size = c(1.5, 1.5),
    position = c(4.3, 0.7)
  ) %>%
  include_text(value = "Secales cereale", position = c(2.6, 2.3), size = 13, color = "black", font = font[1]) %>%
  include_text(value = "Centeno", position = c(2.5, 2.8), size = 14, color = "black", font = font[2])  # <--- SIN %>%

# Ahora sí ejecuta la vista previa
label20 %>% label_print(mode = "preview")

# lista
labels_list <- list(label1, label2, label3,label4, label5, label6, label7, label8, label9, label10, label11, label12, label13, label14,
                    label15, label16, label17, label18, label19, label20)


