
driver <- RSelenium:rsDriver(browser=c("firefox"))
remote_driver <- driver[["client"]]
#remote_driver$open()


RSelenium:remote_driver$navigate("https://tassidicambio.bancaditalia.it/timeSeries")
Sys.sleep(10)
RSelenium:date <- remote_driver$findElement(using = "xpath",  "//*[@id='dailyTab-panel']/div/form/div[1]/div")
RSelenium:date$clickElement()
RSelenium:date1 <- remote_driver$findElement(using = "xpath","//*[@id='dailyTab-panel']/div/form/div[1]/div/div/input")
RSelenium:date1$clearElement()
RSelenium:date1$clickElement()
RSelenium:date1$sendKeysToElement(list("01/01/2020", key = "enter"))


RSelenium:date3 <- remote_driver$findElement(using = "xpath",  "//*[@id='dailyTab-panel']/div/form/div[2]/div/div/input")
RSelenium:date3$clearElement()
RSelenium:date3$clickElement()

r=format(Sys.Date(), format = "%d/%m/%Y")
RSelenium:date3$sendKeysToElement(list(r, key = "enter"))
#currecy

RSelenium:button =remote_driver$findElement(using =  "xpath","//*[@id='dailyTab-panel']/div/form/div[4]/div/odin-selection-summary/a")

RSelenium:button$clickElement()

RSelenium:form=remote_driver$findElement(using =  "xpath","/html/body/ngb-modal-window/div/div/ng-component/div[2]/div[1]/div/div/input")
RSelenium:form$clickElement()
RSelenium:form$sendKeysToElement(list("United", key = "enter"))
Sys.sleep(4)
RSelenium:baseusd=remote_driver$findElement(using =  "xpath","//*[@id='center']/div/div[4]/div[3]/div/div/div[2]/div[1]")
RSelenium:baseusd$clickElement()

RSelenium:submit1= remote_driver$findElement(using =  "xpath","/html/body/ngb-modal-window/div/div/ng-component/div[2]/div[3]/div/button")
RSelenium:submit1$clickElement()
Sys.sleep(5)

RSelenium:search= remote_driver$findElement(using =  "xpath","/html/body/odin-app/ng-component/main/section/div/bdi-tab-view/ngb-tabset/div/div[1]/div/form/div[5]/div/button[1]")
RSelenium:search$clickElement()
RSelenium:Sys.sleep(8)
RSelenium:downloadcsv=remote_driver$findElement(using =  "xpath","/html/body/odin-app/ng-component/main/section/div/div[3]/div/button[3]")
RSelenium:downloadcsv$clickElement()
