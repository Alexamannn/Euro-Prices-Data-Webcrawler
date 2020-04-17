
Sys.sleep(5)
date <- remote_driver$findElement(using = "xpath",  "//*[@id='dailyTab-panel']/div/form/div[1]/div")
date$clickElement()
date1 <- remote_driver$findElement(using = "xpath","//*[@id='dailyTab-panel']/div/form/div[1]/div/div/input")
date1$clearElement()
date1$clickElement()
date1$sendKeysToElement(list("01/01/2020", key = "enter"))


date3 <- remote_driver$findElement(using = "xpath",  "//*[@id='dailyTab-panel']/div/form/div[2]/div/div/input")
date3$clearElement()
date3$clickElement()

r=format(Sys.Date(), format = "%d/%m/%Y")
date3$sendKeysToElement(list(r, key = "enter"))
#currecy

button =remote_driver$findElement(using =  "xpath","//*[@id='dailyTab-panel']/div/form/div[4]/div/odin-selection-summary/a")

button$clickElement()

form=remote_driver$findElement(using =  "xpath","/html/body/ngb-modal-window/div/div/ng-component/div[2]/div[1]/div/div/input")
form$clickElement()
form$sendKeysToElement(list("United", key = "enter"))
Sys.sleep(4)
baseusd=remote_driver$findElement(using =  "xpath","//*[@id='center']/div/div[4]/div[3]/div/div/div[2]/div[1]")
baseusd$clickElement()

submit1= remote_driver$findElement(using =  "xpath","/html/body/ngb-modal-window/div/div/ng-component/div[2]/div[3]/div/button")
submit1$clickElement()
Sys.sleep(5)

search= remote_driver$findElement(using =  "xpath","/html/body/odin-app/ng-component/main/section/div/bdi-tab-view/ngb-tabset/div/div[1]/div/form/div[5]/div/button[1]")
search$clickElement()
Sys.sleep(8)
downloadcsv=remote_driver$findElement(using =  "xpath","/html/body/odin-app/ng-component/main/section/div/div[3]/div/button[3]")
downloadcsv$clickElement()


