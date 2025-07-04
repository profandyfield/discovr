# Colours

ong <- "#d47500"
ong_dk <- "#d35400"
red <- "#CA3E34"
red_dk <- "#912D25"
grn <- "#82b1b0"
grn_dk <- "#427479"
blu <- "#136CB9"
blu_dk <- "#2C5577"
bwn <- "#F3E2C4"
bwn_dk <- "#775418"
gry <- "#868e96"
gry_dk <- "#2F4F4F"
purp <- "#6F709F"



# set fontawesome icon class

set_svg <- function(x){
  svg <- htmltools::HTML(x)
  class(svg) <- c("fontawesome", class(svg))
  svg
}

# set fontawesome icon size and fill properties

set_svg_props <- function(x, fill, height){
  x <- gsub("fill: fill", paste("fill:", fill), x)
  if(height != 1){
    x <- gsub("height: 1em", paste0("height:", height, "em"), x)
  }
  set_svg(x)
}

# set fontawesome print properties

knit_print.fontawesome <- function(x, ...) { # nocov start
  if (requireNamespace("knitr", quietly = TRUE)) {
    knitr::knit_print(as.character(x), ...)
  }
}

# extract svg code


alien <- function(fill = red, height = 1){
  code <- "<svg style=\"height: 1em; top:.04em; position: relative; fill: fill;\" viewBox=\"0 0 448 512\"><path d=\"M224,0C100.28125,0,0,88.0293,0,232.45117c0,111.77735,134.21484,224.59766,194.86328,269.875a48.71553,48.71553,0,0,0,58.27344,0C313.78516,457.04883,448,344.22852,448,232.45117,448,88.0293,347.6875,0,224,0Zm9.99219,476.68359a16.71415,16.71415,0,0,1-19.98633,0C171.30859,444.80859,32,332.99609,32,232.45117,32,114.42773,110.95312,32,224,32s192,82.42773,192,200.45117C416,332.99609,276.69141,444.80859,233.99219,476.68359ZM368,212H320a79.999,79.999,0,0,0-80,80v12a16.00079,16.00079,0,0,0,16,16h48a80.00021,80.00021,0,0,0,80-80V228A15.99954,15.99954,0,0,0,368,212Zm-64,76H272.166A48.06494,48.06494,0,0,1,320,244h31.834A48.06645,48.06645,0,0,1,304,288ZM128,212H80a15.99954,15.99954,0,0,0-16,16v12a80.00021,80.00021,0,0,0,80,80h48a16.00079,16.00079,0,0,0,16-16V292A79.999,79.999,0,0,0,128,212Zm16,76a48.06645,48.06645,0,0,1-47.834-44H128a48.06494,48.06494,0,0,1,47.834,44Z\"/></svg>"
    set_svg_props(code, fill, height)
}

bug <- function(fill = bwn_dk, height = 1){
  code <- "<svg style=\"height: 1em; top:.04em; position: relative; fill: fill;\" viewBox=\"0 0 576 512\"><path d=\"M192,320h32V224H192Zm160,0h32V224H352ZM544,112H512a32.03165,32.03165,0,0,0-32,32v16H416V128h32a32.03165,32.03165,0,0,0,32-32V64a32.03165,32.03165,0,0,0-32-32H416a32.03165,32.03165,0,0,0-32,32H352a32.03165,32.03165,0,0,0-32,32v32H256V96a32.03165,32.03165,0,0,0-32-32H192a32.03165,32.03165,0,0,0-32-32H128A32.03165,32.03165,0,0,0,96,64V96a32.03165,32.03165,0,0,0,32,32h32v32H96V144a32.03165,32.03165,0,0,0-32-32H32A32.03165,32.03165,0,0,0,0,144V288a32.03165,32.03165,0,0,0,32,32H64v32a32.03165,32.03165,0,0,0,32,32h32v64a32.03165,32.03165,0,0,0,32,32h80a32.03165,32.03165,0,0,0,32-32V416a32.03165,32.03165,0,0,0-32-32h96a32.03165,32.03165,0,0,0-32,32v32a32.03165,32.03165,0,0,0,32,32h80a32.03165,32.03165,0,0,0,32-32V384h32a32.03165,32.03165,0,0,0,32-32V320h32a32.03165,32.03165,0,0,0,32-32V144A32.03165,32.03165,0,0,0,544,112ZM416,64h32V96H416ZM128,96V64h32V96ZM240,448H160V384h32v32h48Zm176,0H336V416h48V384h32ZM544,288H480v64H96V288H32V144H64V256H96V192h96V96h32v64H352V96h32v96h96v64h32V144h32Z\"/></svg>"
    set_svg_props(code, fill, height)
}

cat_space <- function(fill = blu_dk, height = 1.5){
  code <- "<svg style=\"height: 1em; top:.04em; position: relative; fill: fill;\" viewBox=\"0 0 640 512\"><path d=\"M512,176a16,16,0,1,0-16-16A15.9908,15.9908,0,0,0,512,176ZM576,32.72461V32l-.46094.3457C548.81445,12.30469,515.97461,0,480,0s-68.81445,12.30469-95.53906,32.3457L384,32v.72461C345.35156,61.93164,320,107.82422,320,160c0,.38086.10938.73242.11133,1.11328A272.01015,272.01015,0,0,0,96,304.26562V176A80.08413,80.08413,0,0,0,16,96a16,16,0,0,0,0,32,48.05249,48.05249,0,0,1,48,48V432a80.08413,80.08413,0,0,0,80,80H352a32.03165,32.03165,0,0,0,32-32,64.0956,64.0956,0,0,0-57.375-63.65625L416,376.625V480a32.03165,32.03165,0,0,0,32,32h32a32.03165,32.03165,0,0,0,32-32V316.77539A160.036,160.036,0,0,0,640,160C640,107.82422,614.64844,61.93164,576,32.72461ZM480,32a126.94015,126.94015,0,0,1,68.78906,20.4082L512,80H448L411.21094,52.4082A126.94015,126.94015,0,0,1,480,32Zm64,64v64a64,64,0,0,1-128,0V96l21.334,16h85.332ZM480,480H448V351.99609A15.99929,15.99929,0,0,0,425.5,337.377L303.1875,391.75a100.1169,100.1169,0,0,0-67.25-84.89062,7.96929,7.96929,0,0,0-10.09375,5.76562l-3.875,15.5625a8.16346,8.16346,0,0,0,5.375,9.5625C252,346.875,272,375.625,272,401.90625V448h48a32.03165,32.03165,0,0,1,32,32H144c-26.94531,0-48.13086-22.27344-47.99609-49.21875.63671-127.52734,101.31054-231.53516,227.36914-238.14063A160.02931,160.02931,0,0,0,480,320Zm0-192A128.14414,128.14414,0,0,1,352,160c0-32.16992,12.334-61.25391,32-83.76367V160a96,96,0,0,0,192,0V76.23633C595.666,98.74609,608,127.83008,608,160A128.14414,128.14414,0,0,1,480,288ZM432,160a16,16,0,1,0,16-16A15.9908,15.9908,0,0,0,432,160ZM162.94531,68.76953l39.71094,16.56055,16.5625,39.71094a5.32345,5.32345,0,0,0,9.53906,0l16.5586-39.71094,39.71484-16.56055a5.336,5.336,0,0,0,0-9.541l-39.71484-16.5586L228.75781,2.957a5.325,5.325,0,0,0-9.53906,0l-16.5625,39.71289-39.71094,16.5586a5.336,5.336,0,0,0,0,9.541Z\"/></svg>"
  set_svg_props(code, fill, height)
}

robot <- function(fill = red, height = 1){
  code <- "<svg style=\"height: 1em; top:.04em; position: relative; fill: fill;\" viewBox=\"0 0 640 512\"><path d=\"M192,416h64V384H192ZM576,224H544V192a95.99975,95.99975,0,0,0-96-96H336V16a16,16,0,0,0-32,0V96H192a95.99975,95.99975,0,0,0-96,96v32H64a31.99908,31.99908,0,0,0-32,32V384a32.00033,32.00033,0,0,0,32,32H96a95.99975,95.99975,0,0,0,96,96H448a95.99975,95.99975,0,0,0,96-96h32a32.00033,32.00033,0,0,0,32-32V256A31.99908,31.99908,0,0,0,576,224ZM96,384H64V256H96Zm416,32a64.18916,64.18916,0,0,1-64,64H192a64.18916,64.18916,0,0,1-64-64V192a63.99942,63.99942,0,0,1,64-64H448a63.99942,63.99942,0,0,1,64,64Zm64-32H544V256h32ZM416,192a64,64,0,1,0,64,64A64.07333,64.07333,0,0,0,416,192Zm0,96a32,32,0,1,1,32-32A31.97162,31.97162,0,0,1,416,288ZM384,416h64V384H384Zm-96,0h64V384H288ZM224,192a64,64,0,1,0,64,64A64.07333,64.07333,0,0,0,224,192Zm0,96a32,32,0,1,1,32-32A31.97162,31.97162,0,0,1,224,288Z\"/></svg>"
    set_svg_props(code, fill, height)
}

bmu <- function(fill = red, height = 1){
  code <- "<svg style=\"height: 1em; top:.04em; position: relative; fill: fill;\" viewBox=\"0 0 512 512\"><path d=\"M191.99609,256V224.70117L165.90545,256Zm79.99268,128V352h-32.001v32ZM352.001,352H320v32h32.001ZM319.97851,224.66016V256h26.118ZM177.57183,167.02734A64.00122,64.00122,0,0,1,226.73934,144h58.51351a64.00476,64.00476,0,0,1,49.16556,23.02539L355.2335,192H396.891l-37.88983-45.46289a95.38141,95.38141,0,0,0-46.73971-30.17773A71.2745,71.2745,0,0,0,327.98657,72a72.08234,72.08234,0,0,0-72.0022-72h-.0332A72.08235,72.08235,0,0,0,183.949,72a71.28375,71.28375,0,0,0,15.73486,44.375A95.36539,95.36539,0,0,0,152.989,146.53906L115.10312,192h41.65752ZM255.95117,32l.01758.002.01562-.002a40,40,0,1,1,0,80l-.01562-.00195L255.95117,112a40,40,0,1,1,0-80ZM130.09186,224H88.43629c-13.88714,16.6582-14.895,26.08984-15.74071,32h32.874C107.681,250.08984,107.30406,251.3418,130.09186,224ZM320,320h32.001V309.96875A55.675,55.675,0,0,0,434.45271,288H320Zm32.001,96.002V416H159.98535a63.99914,63.99914,0,0,0-64.002,64v16a15.99979,15.99979,0,0,0,16.00049,16H399.99268a16.001,16.001,0,0,0,16.00048-16V480A64.00039,64.00039,0,0,0,352.001,416.002ZM127.98437,480a32.03716,32.03716,0,0,1,32.001-32H351.99121a32.03716,32.03716,0,0,1,32.001,32ZM381.90423,224c22.75656,27.30469,22.4128,26.0957,24.52419,32h32.87014c-.85745-5.99219-1.91607-15.41211-15.73681-32ZM159.99512,309.95508V320h32.001V288H77.54143a55.62546,55.62546,0,0,0,14.5981,19.02734,56.12409,56.12409,0,0,0,67.85559,2.92774Zm0,74.04492h32.001V352h-32.001ZM509.791,140.416l-29.78607-12.41993-12.4203-29.7832a3.99315,3.99315,0,0,0-7.15451,0l-12.4203,29.7832L418.2237,140.416a4.00079,4.00079,0,0,0,0,7.15625l29.78607,12.41992,12.4203,29.7832a3.99315,3.99315,0,0,0,7.15451,0l12.4203-29.7832L509.791,147.57227a4.00237,4.00237,0,0,0,0-7.15625ZM95.9873,48a4.37811,4.37811,0,0,0-2.211-3.57812L63.99023,32.002,51.56993,2.21875a3.99315,3.99315,0,0,0-7.15451,0L31.99512,32.002,2.20905,44.42188a4.00078,4.00078,0,0,0,0,7.15429L31.99512,63.99609l12.4203,29.78516a3.99315,3.99315,0,0,0,7.15451,0l12.4203-29.78516L93.7763,51.57617A4.38313,4.38313,0,0,0,95.9873,48Z\"/></svg>"
  set_svg_props(code, fill, height)
}

rproj <- function(fill = blu, height = 1){
  code <- "<svg style=\"height: 1em; top:.04em; position: relative; fill: fill;\" viewBox=\"0 0 581 512\"><path d=\"M581 226.6C581 119.1 450.9 32 290.5 32S0 119.1 0 226.6C0 322.4 103.3 402 239.4 418.1V480h99.1v-61.5c24.3-2.7 47.6-7.4 69.4-13.9L448 480h112l-67.4-113.7c54.5-35.4 88.4-84.9 88.4-139.7zm-466.8 14.5c0-73.5 98.9-133 220.8-133s211.9 40.7 211.9 133c0 50.1-26.5 85-70.3 106.4-2.4-1.6-4.7-2.9-6.4-3.7-10.2-5.2-27.8-10.5-27.8-10.5s86.6-6.4 86.6-92.7-90.6-87.9-90.6-87.9h-199V361c-74.1-21.5-125.2-67.1-125.2-119.9zm225.1 38.3v-55.6c57.8 0 87.8-6.8 87.8 27.3 0 36.5-38.2 28.3-87.8 28.3zm-.9 72.5H365c10.8 0 18.9 11.7 24 19.2-16.1 1.9-33 2.8-50.6 2.9v-22.1z\"/></svg>"
    set_svg_props(code, fill, height)
}

user_astronaut <- function(fill = red, height = 1){
  code <- "<svg style=\"height: 1em; top:.04em; position: relative; fill: fill;\" viewBox=\"0 0 448 512\"><path d=\"M288 128H160c-35.3 0-64 28.7-64 64v16c0 61.8 50.2 112 112 112h32c61.8 0 112-50.2 112-112v-16c0-35.3-28.7-64-64-64zm32 80c0 44.1-35.9 80-80 80h-32c-44.1 0-80-35.9-80-80v-16c0-17.6 14.3-32 32-32h128c17.7 0 32 14.4 32 32v16zm-128-32l-12 36-36 12 36 12 12 36 12-36 36-12-36-12-12-36zm112 224H144c-26.5 0-48 21.5-48 48v56c0 4.4 3.6 8 8 8h16c4.4 0 8-3.6 8-8v-56c0-8.8 7.2-16 16-16h160c8.8 0 16 7.2 16 16v56c0 4.4 3.6 8 8 8h16c4.4 0 8-3.6 8-8v-56c0-26.5-21.5-48-48-48zm-32 48c-8.8 0-16 7.2-16 16s7.2 16 16 16 16-7.2 16-16-7.2-16-16-16zm-96 0c-8.8 0-16 7.2-16 16v40c0 4.4 3.6 8 8 8h16c4.4 0 8-3.6 8-8v-40c0-8.8-7.2-16-16-16zm183.2-119.7c20.3-20.1 35.9-44.8 45.7-72.3H416c8.8 0 16-7.2 16-16v-96c0-8.8-7.2-16-16-16h-11.2C378.5 53.5 307.6 0 224 0S69.5 53.5 43.2 128H32c-8.8 0-16 7.2-16 16v96c0 8.8 7.2 16 16 16h11.2c9.7 27.5 25.4 52.2 45.7 72.3C37.1 347 0 396.2 0 454.4V504c0 4.4 3.6 8 8 8h16c4.4 0 8-3.6 8-8v-49.6c0-51.6 38.5-94 88.3-101C150.2 372.7 185.8 384 224 384s73.8-11.3 103.7-30.6c49.8 6.9 88.3 49.3 88.3 101V504c0 4.4 3.6 8 8 8h16c4.4 0 8-3.6 8-8v-49.6c0-58.2-37.1-107.4-88.8-126.1zM224 352c-88.2 0-160-71.8-160-160S135.8 32 224 32s160 71.8 160 160-71.8 160-160 160z\"/></svg>"
  set_svg_props(code, fill, height)
}


user_visor <- function(fill = red, height = 1){
  code <- "<svg style=\"height: 1em; top:.04em; position: relative; fill: fill;\" viewBox=\"0 0 448 512\"><path d=\"M98.50586,152.8457a127.91341,127.91341,0,0,0,250.98828.002C360.37305,145.69141,368,133.97266,368,120V104c0-19.57422-14.38672-35.14648-32.98047-38.58008C313.04883,26.54688,271.834,0,224,0S134.95312,26.54688,112.98242,65.41992C94.38867,68.85352,80,84.42578,80,104v16C80,133.9707,87.62695,145.69141,98.50586,152.8457ZM224,224c-41.63281,0-76.834-26.8457-90.0957-64H314.0957C300.834,197.1543,265.63281,224,224,224Zm0-192c28.24023,0,53.42188,12.50586,71.00977,32H152.99023C170.57812,44.50586,195.75977,32,224,32ZM112,104a8.01545,8.01545,0,0,1,8-8H328a8.01545,8.01545,0,0,1,8,8v16a8.01545,8.01545,0,0,1-8,8H120a8.01545,8.01545,0,0,1-8-8ZM322.875,352h-.125a3.9709,3.9709,0,0,0-3.03125,1.39062c-19.8125,22.98438-31.8125,53.09376-35.6875,89.5a3.9982,3.9982,0,0,0,6.4375,3.57813c24.84375-19.32813,33.75-23.8125,37.03125-24.8125a6.629,6.629,0,0,1,1.375-.375c2.625,2.32813,8.1875,8.57813,19.875,25.03125A3.94519,3.94519,0,0,0,352,448a4.06435,4.06435,0,0,0,1.28125-.20312A4.01157,4.01157,0,0,0,356,443.875c-1.15625-35.32812-11.28125-65.70312-30.0625-90.29688A4.02082,4.02082,0,0,0,322.875,352Zm-9.28125-64c-28.6875,0-42.5,16-89.59375,16s-60.8125-16-89.59375-16A134.43133,134.43133,0,0,0,0,422.40625V464a48.01238,48.01238,0,0,0,48,48H400a48.01238,48.01238,0,0,0,48-48V422.40625A134.43133,134.43133,0,0,0,313.59375,288ZM416,464a16.041,16.041,0,0,1-16,16H48a16.041,16.041,0,0,1-16-16V422.40625A102.47984,102.47984,0,0,1,134.40625,320C153.99922,320,173.5,336,224,336c50.40625,0,69.99922-16,89.59375-16A102.47984,102.47984,0,0,1,416,422.40625Z\"/></svg>"
  set_svg_props(code, fill, height)
}

rstudio <- function(height = 1){
  img_text <- "<img src=\"./images/rstudio_logo.png\" alt = \"The R-project logo.\" class=\"inline-image\">"
  htmltools::HTML(img_text)
}

pencil <- function(height = 1, fill = grn_dk){
  code <- "<svg style=\"height: 1em; top:.04em; position: relative; fill: fill;\" viewBox=\"0 0 512 512\"><path d=\"M493.255 56.236l-37.49-37.49c-24.993-24.993-65.515-24.994-90.51 0L12.838 371.162.151 485.346c-1.698 15.286 11.22 28.203 26.504 26.504l114.184-12.687 352.417-352.417c24.992-24.994 24.992-65.517-.001-90.51zM164.686 347.313c6.249 6.249 16.379 6.248 22.627 0L368 166.627l30.059 30.059L174 420.745V386h-48v-48H91.255l224.059-224.059L345.373 144 164.686 324.687c-6.249 6.248-6.249 16.378 0 22.626zm-38.539 121.285l-58.995 6.555-30.305-30.305 6.555-58.995L63.255 366H98v48h48v34.745l-19.853 19.853zm344.48-344.48l-49.941 49.941-82.745-82.745 49.941-49.941c12.505-12.505 32.748-12.507 45.255 0l37.49 37.49c12.506 12.506 12.507 32.747 0 45.255z\"/></svg>"
  set_svg_props(code, fill, height)
}

qmark <- function(height = 1, fill = ""){
  code <- "<svg style=\"height: 1em; top:.04em; position: relative; fill: fill;\" viewBox=\"0 0 384 512\"><path d=\"M200.343 0C124.032 0 69.761 31.599 28.195 93.302c-14.213 21.099-9.458 49.674 10.825 65.054l42.034 31.872c20.709 15.703 50.346 12.165 66.679-8.51 21.473-27.181 28.371-31.96 46.132-31.96 10.218 0 25.289 6.999 25.289 18.242 0 25.731-109.3 20.744-109.3 122.251V304c0 16.007 7.883 30.199 19.963 38.924C109.139 360.547 96 386.766 96 416c0 52.935 43.065 96 96 96s96-43.065 96-96c0-29.234-13.139-55.453-33.817-73.076 12.08-8.726 19.963-22.917 19.963-38.924v-4.705c25.386-18.99 104.286-44.504 104.286-139.423C378.432 68.793 288.351 0 200.343 0zM192 480c-35.29 0-64-28.71-64-64s28.71-64 64-64 64 28.71 64 64-28.71 64-64 64zm50.146-186.406V304c0 8.837-7.163 16-16 16h-68.292c-8.836 0-16-7.163-16-16v-13.749c0-86.782 109.3-57.326 109.3-122.251 0-32-31.679-50.242-57.289-50.242-33.783 0-49.167 16.18-71.242 44.123-5.403 6.84-15.284 8.119-22.235 2.848l-42.034-31.872c-6.757-5.124-8.357-14.644-3.62-21.677C88.876 60.499 132.358 32 200.343 32c70.663 0 146.089 55.158 146.089 127.872 0 96.555-104.286 98.041-104.286 133.722z\"/></svg>"
  set_svg_props(code, fill, height)
}

info <- function(height = 1, fill = gry_dk){
  code <- "<svg style=\"height: 1em; top:.04em; position: relative; fill: fill;\" viewBox=\"0 0 512 512\"><path d=\"M256 40c118.621 0 216 96.075 216 216 0 119.291-96.61 216-216 216-119.244 0-216-96.562-216-216 0-119.203 96.602-216 216-216m0-32C119.043 8 8 119.083 8 256c0 136.997 111.043 248 248 248s248-111.003 248-248C504 119.083 392.957 8 256 8zm-36 344h12V232h-12c-6.627 0-12-5.373-12-12v-8c0-6.627 5.373-12 12-12h48c6.627 0 12 5.373 12 12v140h12c6.627 0 12 5.373 12 12v8c0 6.627-5.373 12-12 12h-72c-6.627 0-12-5.373-12-12v-8c0-6.627 5.373-12 12-12zm36-240c-17.673 0-32 14.327-32 32s14.327 32 32 32 32-14.327 32-32-14.327-32-32-32z\"/></svg>"
  set_svg_props(code, fill, height)
}

warning <- function(height = 1, fill = red_dk){
  code <- "<svg style=\"height: 1em; top:.04em; position: relative; fill: fill;\" viewBox=\"0 0 512 512\"><!--! Font Awesome Pro 6.2.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2022 Fonticons, Inc. --><path d=\"M256 360c-13.25 0-23.1 10.74-23.1 24c0 13.25 10.75 24 23.1 24c13.25 0 23.1-10.75 23.1-24C280 370.7 269.3 360 256 360zM256 320c8.843 0 15.1-7.156 15.1-16V160c0-8.844-7.155-16-15.1-16S240 151.2 240 160v144C240 312.8 247.2 320 256 320zM504.3 397.3L304.5 59.38C294.4 42.27 276.2 32.03 256 32C235.8 32 217.7 42.22 207.5 59.36l-199.9 338c-10.05 16.97-10.2 37.34-.4218 54.5C17.29 469.5 35.55 480 56.1 480h399.9c20.51 0 38.75-10.53 48.81-28.17C514.6 434.7 514.4 414.3 504.3 397.3zM476.1 435.1C472.7 443.5 464.8 448 455.1 448H56.1c-8.906 0-16.78-4.484-21.08-12c-4.078-7.156-4.015-15.3 .1562-22.36L235.1 75.66C239.4 68.36 247.2 64 256 64c0 0-.0156 0 0 0c8.765 .0156 16.56 4.359 20.86 11.64l199.9 338C480.1 420.7 481.1 428.8 476.1 435.1z\"/></svg>"
  set_svg_props(code, fill, height)
}



redundant_decimals <- function(digits = 2){
  paste0(".", paste0(rep(0, digits), collapse = ""), collapse = "")
}


get_row <- function(tidyobject, row, digits = 2, p_digits = 3){
  n <- nrow(tidyobject)
  dp <- paste0("%.", digits, "f")
  p_dp <- paste0("%.", p_digits, "f")


  tidyobject |>
    dplyr::rename(
      df = contains("df"),
      p.value = contains("p.value")
    ) |>
    insight::standardize_names(style = "broom") |>
    dplyr::mutate(
      row_number = 1:n,
      p.value = ifelse(p.value < 0.001, "*p* < 0.001", paste("*p* =", sprintf(p_dp, p.value))),
      ci = paste0("[", sprintf(dp, conf.low), ", ", sprintf(dp, conf.high), "]"),
      across(.cols = where(is.double), \(x) sprintf(dp, x))
    ) |>
    dplyr::filter(row_number == row)
}


report_pars <- function(tidyobject, row, digits = 2, p_digits = 3, fixed = TRUE, df_r = NULL, glm = F){
  row <- get_row(tidyobject, row, digits, p_digits)

  if(glm){
    stat = "*z*"
  } else {
    stat = "*t*"
  }

  if(!is.null(df_r)){
    t_text <- paste0(", ", stat, "(", df_r, ") = ")
  } else {
    t_text <- paste(",", stat, "= ")
  }

  if(fixed){
    paste0(row$estimate, " ", row$ci, t_text, row$statistic, ", ", row$p.value)
  } else {
    if(is.na(row$conf.low) | is.na(row$conf.high)){
      row$estimate
    } else {
      paste(row$estimate, row$ci)
    }

  }
}


report_aov <- function(aov_obj, row = 1, digits = 2, p_digits = 3){
  nrow <- nrow(aov_obj)
  dp <- paste0("%.", digits, "f")
  p_dp <- paste0("%.", p_digits, "f")


  aov_row <- aov_obj |>
    dplyr::mutate(
      p = ifelse(`Pr(>F)` < 0.001, "*p* < 0.001", paste("*p* =", sprintf(p_dp,`Pr(>F)`))),
      dplyr::across(
        where(is.double), \(x) sprintf(dp, x)
      ),
      row_no = 1:nrow
    ) |>
    dplyr::filter(row_no == row)

  paste0("*F*(", aov_row$NumDF, ", ", aov_row$DenDF, ") = ", aov_row$`F value`, ", ", aov_row$p)
}


report_glancef <- function(glance_obj, digits = 2, p_digits = 3){
  dp <- paste0("%.", digits, "f")
  p_dp <- paste0("%.", p_digits, "f")

  row <- glance_obj |>
    dplyr::mutate(
      p.value = ifelse(p.value < 0.001, "*p* < 0.001", paste("*p* =", sprintf(p_dp, p.value))),
      across(.cols = where(is.double), \(x) sprintf(dp, x)),
      dplyr::across(
        contains("df"), \(x) gsub(redundant_decimals(digits), "", x)
      )
    )

  paste0("*F*(", row$df, ", ", row$df.residual, ") = ", row$statistic, ", ", row$`p.value`)

}

report_aov_compare <- function(aov_obj, row = 2, digits = 2, p_digits = 3){
  nrow <- nrow(aov_obj)
  dp <- paste0("%.", digits, "f")
  p_dp <- paste0("%.", p_digits, "f")

  aov_row <- aov_obj |>
    dplyr::mutate(
      p = ifelse(`p.value` < 0.001, "*p* < 0.001", paste("*p* =", sprintf(p_dp,`Pr(>F)`))),
      dplyr::across(
        where(is.double), \(x) sprintf(dp, x)
      ),
      dplyr::across(
        contains("df"), \(x) gsub(redundant_decimals(digits), "", x)
      ),
      row_no = 1:nrow
    ) |>
    dplyr::filter(row_no == row)

  paste0("*F*(", aov_row$df, ", ", aov_row$df.residual, ") = ", aov_row$statistic, ", ", aov_row$p)
}

report_aovf <- function(aov_obj, row = 1, digits = 2, p_digits = 3){
  nrow <- nrow(aov_obj)
  dp <- paste0("%.", digits, "f")
  p_dp <- paste0("%.", p_digits, "f")


  aov_row <- aov_obj |>
    tibble::as_tibble() |>
    dplyr::mutate(
      p = ifelse(`Pr(>F)` < 0.001, "*p* < 0.001", paste("*p* =", sprintf(p_dp,`Pr(>F)`))),
      dplyr::across(
        where(is.double), \(x) sprintf(dp, x)
      ),
      dplyr::across(
        contains("df"), \(x) gsub(redundant_decimals(digits), "", x)
      ),
      row_no = 1:nrow
    )

  paste0("*F*(", aov_row$Df[row], ", ", aov_row$Df[nrow], ") = ", aov_row$`F value`[row], ", ", aov_row$p[row])
}

report_es <- function(es_obj, col, row = 1, digits = 2){
  nrow <- nrow(es_obj)
  dp <- paste0("%.", digits, "f")

  par <- ifelse(grepl("Cohen", col), "$\\hat{d}$",
                ifelse(grepl("Hedges", col), "$\\hat{g}$",
                       ifelse(grepl("Omega", col), "$\\hat{\\omega}_p$",
                              ifelse(grepl("Odds", col), "$\\hat{OR}$",
                              "$\\hat{\\eta}_p$"))))

  es_row  <- es_obj |>
    tibble::as_tibble() |>
    dplyr::rename(
      es = !!{col}
    ) |>
    dplyr::mutate(
      dplyr::across(
        where(is.double), \(x) sprintf(dp, x)),
      row_no = 1:nrow
    )

  paste0(par, " = ", es_row$es[row], " [", es_row$CI_low[row], ", ", es_row$CI_high[row], "]")
}

get_par <- function(tidyob, row, col = "estimate", digits = 2){
  val <- tidyob |>
    dplyr::select(!!col) |>
    dplyr::pull()

  dp <- paste0("%.", digits, "f")
  sprintf(dp, val[row])
}

report_afx <- function(afx_obj, row = 1, digits = 2, p_digits = 3){
  nrow <- nrow(afx_obj)
  dp <- paste0("%.", digits, "f")
  p_dp <- paste0("%.", p_digits, "f")


  afx_row <- afx_obj |>
    tibble::as_tibble() |>
    dplyr::rename_with(.fn = \(x) tolower(gsub(" ", "_", x = x))) |>
    dplyr::mutate(
      p = ifelse(`pr(>f)` < 0.001, "*p* < 0.001", paste("*p* =", sprintf(p_dp,`pr(>f)`))),
      dplyr::across(
        contains("df"), \(x) ifelse(grepl("\\.", x), sprintf(dp, x), x)
      ),
      f = sprintf(dp, f),
      row_no = 1:nrow
    ) |>
    dplyr::filter(row_no == row)

  paste0("*F*(", afx_row$num_df, ", ", afx_row$den_df, ") = ", afx_row$f, ", ", afx_row$p)
}

report_se <- function(se_obj, row = 1, digits = 2, p_digits = 3){
  nrow <- nrow(se_obj)
  dp <- paste0("%.", digits, "f")
  p_dp <- paste0("%.", p_digits, "f")


  se_row <- se_obj |>
    dplyr::mutate(
      p = ifelse(p.value < 0.001, "*p* < 0.001", paste("*p* =", sprintf(p_dp, p.value))),
      dplyr::across(
        contains("df"), \(x) ifelse(grepl("\\.", x), sprintf(dp, x), x)
      ),
      f = sprintf(dp, F.ratio),
      row_no = 1:nrow
    ) |>
    dplyr::filter(row_no == row)

  paste0("*F*(", se_row$df1, ", ", se_row$df2, ") = ", se_row$f, ", ", se_row$p)
}

get_bf <- function(bf = m1, digits = 2){
  dp <- paste0("%.", digits, "f")

  bf_val <- BayesFactor::extractBF(bf,  onlybf = T)
  sprintf(dp, bf_val)
}


report_aov_nlme <- function(aov_obj, row = 1, digits = 2, p_digits = 3){
  nrow <- nrow(aov_obj)
  dp <- paste0("%.", digits, "f")
  p_dp <- paste0("%.", p_digits, "f")


  aov_row <- aov_obj |>
    dplyr::mutate(
      p = ifelse(`p-value` < 0.001, "*p* < 0.001", paste("*p* =", sprintf(p_dp,`p-value`))),
      f = sprintf(dp, `F-value`),
      row_no = 1:nrow
    ) |>
    dplyr::filter(row_no == row)

  paste0("*F*(", aov_row$numDF, ", ", aov_row$denDF, ") = ", aov_row$f, ", ", aov_row$p)
}

report_em <- function(em_obj, row = 1, digits = 2, p_digits = 3){
  em_obj <- tibble::as_tibble(em_obj)
  nrow <- nrow(em_obj)
  dp <- paste0("%.", digits, "f")
  p_dp <- paste0("%.", p_digits, "f")


  em_row <- em_obj |>
    dplyr::mutate(
      p = ifelse(p.value < 0.001, "*p* < 0.001", paste("*p* =", sprintf(p_dp, p.value))),
      dplyr::across(
        where(is.numeric), \(x) ifelse(grepl("\\.", x), sprintf(dp, x), x)
      ),
      row_no = 1:nrow
    ) |>
    dplyr::filter(row_no == row)

  paste0("$\\hat{b}$ = ", em_row$estimate, ", *t*(", em_row$df, ") = ", em_row$t.ratio, ", ", em_row$p)
}