library(googleVis)
library(RJSONIO)
library(gdata)
library(reshape2)
shinyServer(function(input,output) {
url11<-reactive({
base1=yahoo.read(adresse(input$s1)) 
 })

url12<-reactive({
  base1=yahoo.read(adresse(input$s2)) 
})
url13<-reactive({
  base1=yahoo.read(adresse(input$s3)) 
})
url14<-reactive({
  base1=yahoo.read(adresse(input$s4)) 
})
url15<-reactive({
  base1=yahoo.read(adresse(input$s5)) 
})
url16<-reactive({
  base1=yahoo.read(adresse(input$s6)) 
})
url17<-reactive({
  base1=yahoo.read(adresse(input$s7)) 
})
url18<-reactive({
  base1=yahoo.read(adresse(input$s8)) 
})
url19<-reactive({
  base1=yahoo.read(adresse(input$s9)) 
})

url110<-reactive({
  base1=yahoo.read(adresse(input$s10)) 
})
url21=reactive({
  base(url11())
  
})

url22=reactive({
  base(url12())
  
})

url23=reactive({
  base(url13())
  
})

url24=reactive({
  base(url14())
  
})

url25=reactive({
  base(url15())
  
})

url26=reactive({
  base(url16())
  
})

url27=reactive({
  base(url17())
  
})
url28=reactive({
  base(url18())
  
})

url29=reactive({
  base(url19())
  
})

url210=reactive({
  base(url110())
  
})
#######
url31=reactive({
  bas(url11())
})
url32=reactive({
  bas(url12())
})
url33=reactive({
  bas(url13())
})
url34=reactive({
  bas(url14())
})
url35=reactive({
  bas(url15())
})
url36=reactive({
  bas(url16())
})
url37=reactive({
  bas(url17())
})
url38=reactive({
  bas(url18())
})
url39=reactive({
  bas(url19())
})
url310=reactive({
  bas(url110())
})
output$var11 =renderValueBox({
  valueBox(paste(VaRnormalEqwt(url21(),notional = 1,expected.return=0)),"Value at Risk à 1 jour")
})
output$var21 =renderValueBox({
  valueBox(paste0(round(sqrt(7),3)*VaRnormalEqwt(url21(),notional = 1,expected.return=0)),"Value at Risk à 7 jour")
})
output$var31 =renderValueBox({
  valueBox(paste0(round(sqrt(30),3)*VaRnormalEqwt(url21(),notional = 1,expected.return=0)),"Value at Risk à 1 mois")
})

#output$p1=renderTable(url1())
output$plot11=renderGvis({
  gvisAnnotationChart(url11(), 
                      datevar="Date",
                      numvar="Close",
                      options=list(
                        width=450, height=350,
                        fill=10, displayExactValues=TRUE,
                        colors="['#0000ff','#00ff00']"))
}) 

#######???
output$var12 =renderValueBox({
  valueBox(paste(VaRnormalEqwt(url22(),notional = 1,expected.return=0)),"Value at Risk à 1 jour")
})
output$var22 =renderValueBox({
  valueBox(paste0(round(sqrt(7),3)*VaRnormalEqwt(url22(),notional = 1,expected.return=0)),"Value at Risk à 7 jour")
})
output$var32 =renderValueBox({
  valueBox(paste0(round(sqrt(30),3)*VaRnormalEqwt(url22(),notional = 1,expected.return=0)),"Value at Risk à 1 mois")
})

#output$p1=renderTable(url1())
output$plot12=renderGvis({
  gvisAnnotationChart(url12(), 
                      datevar="Date",
                      numvar="Close",
                      options=list(
                        width=450, height=350,
                        fill=10, displayExactValues=TRUE,
                        colors="['#0000ff','#00ff00']"))
}) 

#######
output$var13 =renderValueBox({
  valueBox(paste(VaRnormalEqwt(url23(),notional = 1,expected.return=0)),"Value at Risk à 1 jour")
})
output$var23 =renderValueBox({
  valueBox(paste0(round(sqrt(7),3)*VaRnormalEqwt(url23(),notional = 1,expected.return=0)),"Value at Risk à 7 jour")
})
output$var33 =renderValueBox({
  valueBox(paste0(round(sqrt(30),3)*VaRnormalEqwt(url23(),notional = 1,expected.return=0)),"Value at Risk à 1 mois")
})

#output$p1=renderTable(url1())
output$plot13=renderGvis({
  gvisAnnotationChart(url13(), 
                      datevar="Date",
                      numvar="Close",
                      options=list(
                        width=450, height=350,
                        fill=10, displayExactValues=TRUE,
                        colors="['#0000ff','#00ff00']"))
}) 

#########
output$var14 =renderValueBox({
  valueBox(paste(VaRnormalEqwt(url24(),notional = 1,expected.return=0)),"Value at Risk à 1 jour")
})
output$var24 =renderValueBox({
  valueBox(paste0(round(sqrt(7),3)*VaRnormalEqwt(url24(),notional = 1,expected.return=0)),"Value at Risk à 7 jour")
})
output$var34 =renderValueBox({
  valueBox(paste0(round(sqrt(30),3)*VaRnormalEqwt(url24(),notional = 1,expected.return=0)),"Value at Risk à 1 mois")
})

#output$p1=renderTable(url1())
output$plot14=renderGvis({
  gvisAnnotationChart(url14(), 
                      datevar="Date",
                      numvar="Close",
                      options=list(
                        width=450, height=350,
                        fill=10, displayExactValues=TRUE,
                        colors="['#0000ff','#00ff00']"))
}) 
########
output$var15 =renderValueBox({
  valueBox(paste(VaRnormalEqwt(url25(),notional = 1,expected.return=0)),"Value at Risk à 1 jour")
})
output$var25=renderValueBox({
  valueBox(paste0(round(sqrt(7),3)*VaRnormalEqwt(url25(),notional = 1,expected.return=0)),"Value at Risk à 7 jour")
})
output$var35 =renderValueBox({
  valueBox(paste0(round(sqrt(30),3)*VaRnormalEqwt(url25(),notional = 1,expected.return=0)),"Value at Risk à 1 mois")
})

#output$p1=renderTable(url1())
output$plot15=renderGvis({
  gvisAnnotationChart(url15(), 
                      datevar="Date",
                      numvar="Close",
                      options=list(
                        width=450, height=350,
                        fill=10, displayExactValues=TRUE,
                        colors="['#0000ff','#00ff00']"))
}) 

output$var16 =renderValueBox({
  valueBox(paste(VaRnormalEqwt(url26(),notional = 1,expected.return=0)),"Value at Risk à 1 jour")
})
output$var26 =renderValueBox({
  valueBox(paste0(round(sqrt(7),3)*VaRnormalEqwt(url26(),notional = 1,expected.return=0)),"Value at Risk à 7 jour")
})
output$var36 =renderValueBox({
  valueBox(paste0(round(sqrt(30),3)*VaRnormalEqwt(url26(),notional = 1,expected.return=0)),"Value at Risk à 1 mois")
})

#output$p1=renderTable(url1())
output$plot16=renderGvis({
  gvisAnnotationChart(url16(), 
                      datevar="Date",
                      numvar="Close",
                      options=list(
                        width=450, height=350,
                        fill=10, displayExactValues=TRUE,
                        colors="['#0000ff','#00ff00']"))
}) 

######
output$var17 =renderValueBox({
  valueBox(paste(VaRnormalEqwt(url27(),notional = 1,expected.return=0)),"Value at Risk à 1 jour")
})
output$var27 =renderValueBox({
  valueBox(paste0(round(sqrt(7),3)*VaRnormalEqwt(url27(),notional = 1,expected.return=0)),"Value at Risk à 7 jour")
})
output$var37 =renderValueBox({
  valueBox(paste0(round(sqrt(30),3)*VaRnormalEqwt(url27(),notional = 1,expected.return=0)),"Value at Risk à 1 mois")
})

#output$p1=renderTable(url1())
output$plot17=renderGvis({
  gvisAnnotationChart(url17(), 
                      datevar="Date",
                      numvar="Close",
                      options=list(
                        width=450, height=350,
                        fill=10, displayExactValues=TRUE,
                        colors="['#0000ff','#00ff00']"))
}) 
#######
output$var18 =renderValueBox({
  valueBox(paste(VaRnormalEqwt(url28(),notional = 1,expected.return=0)),"Value at Risk à 1 jour")
})
output$var28 =renderValueBox({
  valueBox(paste0(round(sqrt(7),3)*VaRnormalEqwt(url28(),notional = 1,expected.return=0)),"Value at Risk à 7 jour")
})
output$var38=renderValueBox({
  valueBox(paste0(round(sqrt(30),3)*VaRnormalEqwt(url28(),notional = 1,expected.return=0)),"Value at Risk à 1 mois")
})

#output$p1=renderTable(url1())
output$plot18=renderGvis({
  gvisAnnotationChart(url18(), 
                      datevar="Date",
                      numvar="Close",
                      options=list(
                        width=450, height=350,
                        fill=10, displayExactValues=TRUE,
                        colors="['#0000ff','#00ff00']"))
}) 

output$var19 =renderValueBox({
  valueBox(paste(VaRnormalEqwt(url29(),notional = 1,expected.return=0)),"Value at Risk à 1 jour")
})
output$var29 =renderValueBox({
  valueBox(paste0(round(sqrt(7),3)*VaRnormalEqwt(url29(),notional = 1,expected.return=0)),"Value at Risk à 7 jour")
})
output$var39 =renderValueBox({
  valueBox(paste0(round(sqrt(30),3)*VaRnormalEqwt(url29(),notional = 1,expected.return=0)),"Value at Risk à 1 mois")
})

#output$p1=renderTable(url1())
output$plot19=renderGvis({
  gvisAnnotationChart(url19(), 
                      datevar="Date",
                      numvar="Close",
                      options=list(
                        width=450, height=350,
                        fill=10, displayExactValues=TRUE,
                        colors="['#0000ff','#00ff00']"))
}) 

#######
output$var110 =renderValueBox({
  valueBox(paste(VaRnormalEqwt(url210(),notional = 1,expected.return=0)),"Value at Risk à 1 jour")
})
output$var210 =renderValueBox({
  valueBox(paste0(round(sqrt(7),3)*VaRnormalEqwt(url210(),notional = 1,expected.return=0)),"Value at Risk à 7 jour")
})
output$var310 =renderValueBox({
  valueBox(paste0(round(sqrt(30),3)*VaRnormalEqwt(url21(),notional = 1,expected.return=0)),"Value at Risk à 1 mois")
})

#output$p1=renderTable(url1())
output$plot110=renderGvis({
  gvisAnnotationChart(url110(), 
                      datevar="Date",
                      numvar="Close",
                      options=list(
                        width=450, height=350,
                        fill=10, displayExactValues=TRUE,
                        colors="['#0000ff','#00ff00']"))
}) 
output$plot21=renderGvis({
                    gvisGauge(url31(), 
                      options=list(min=-1, max=1, greenFrom=0.25,
                                   greenTo=1, yellowFrom=-0.25, yellowTo=0.25,
                                   redFrom=-1, redTo=-0.25, width=400, height=300))
})
output$plot22=renderGvis({
  gvisGauge(url32(), 
            options=list(min=-1, max=1, greenFrom=0.25,
                         greenTo=1, yellowFrom=-0.25, yellowTo=0.25,
                         redFrom=-1, redTo=-0.25, width=400, height=300))
})

output$plot23=renderGvis({
  gvisGauge(url33(), 
            options=list(min=-1, max=1, greenFrom=0.25,
                         greenTo=1, yellowFrom=-0.25, yellowTo=0.25,
                         redFrom=-1, redTo=-0.25, width=400, height=300))
})

output$plot24=renderGvis({
  gvisGauge(url34(), 
            options=list(min=-1, max=1, greenFrom=0.25,
                         greenTo=1, yellowFrom=-0.25, yellowTo=0.25,
                         redFrom=-1, redTo=-0.25, width=400, height=300))
})

output$plot25=renderGvis({
  gvisGauge(url35(), 
            options=list(min=-1, max=1, greenFrom=0.25,
                         greenTo=1, yellowFrom=-0.25, yellowTo=0.25,
                         redFrom=-1, redTo=-0.25, width=400, height=300))
})
output$plot26=renderGvis({
  gvisGauge(url36(), 
            options=list(min=-1, max=1, greenFrom=0.25,
                         greenTo=1, yellowFrom=-0.25, yellowTo=0.25,
                         redFrom=-1, redTo=-0.25, width=400, height=300))
})
output$plot27=renderGvis({
  gvisGauge(url37(), 
            options=list(min=-1, max=1, greenFrom=0.25,
                         greenTo=1, yellowFrom=-0.25, yellowTo=0.25,
                         redFrom=-1, redTo=-0.25, width=400, height=300))
})

output$plot28=renderGvis({
  gvisGauge(url38(), 
            options=list(min=-1, max=1, greenFrom=0.25,
                         greenTo=1, yellowFrom=-0.25, yellowTo=0.25,
                         redFrom=-1, redTo=-0.25, width=400, height=300))
})

output$plot29=renderGvis({
  gvisGauge(url39(), 
            options=list(min=-1, max=1, greenFrom=0.25,
                         greenTo=1, yellowFrom=-0.25, yellowTo=0.25,
                         redFrom=-1, redTo=-0.25, width=400, height=300))
})

output$plot210=renderGvis({
  gvisGauge(url310(), 
            options=list(min=-1, max=1, greenFrom=0.25,
                         greenTo=1, yellowFrom=-0.25, yellowTo=0.25,
                         redFrom=-1, redTo=-0.25, width=400, height=300))
})
output$t1=renderText({"Cette application est un tableau de bord dynamique qui permet de 
                     suivre l'évolution d'un certain nombre d'actions. Il est à noter que
                     les données sont prises en temps réel. Nous avons construit une fonction
                     permettant l'extraction des données de la page yahoo finance"})

output$t2=renderText({"La Value-at-Risk correspond au montant des pertes qui ne devraient pas être
dépassées pour un niveau de confiance donné sur un horizon temporel donné.
  Le niveau de confiance choisi est en général de 95 ou 99%.
En effet, la VaR permet de répondre à l'affirmation suivante :
« Nous sommes certains, à un seuil donné (dans notre cas 95%), que nous n'allons pas perdre plus de V
  euros sur les N prochains jours ».
  La valeur V correspond à la VaR.
  "})
output$t3=renderText({"Le premier graphique reprèsente l'évolution du prix journalier de l'action 
à la clôture du marché.
  "})

output$t4=renderText({"Le second graphique est constitué de 3 gauges. Il représente la variation relative du pris
prix journalier de l'action à l'ouverture et la fermeture du marché ainsi que celle du volume échangé
  "})
})
  

