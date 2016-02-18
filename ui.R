library(shiny)
library(shinydashboard)
shinyUI(dashboardPage(
  dashboardHeader(title = "ESSAI Trading"),
  dashboardSidebar(
    sidebarMenu(
      menuItem("Sociétés Financières",tabName = "sf"),
              
    
      menuItem("Technologie",tabName = "tech"),
              
      menuItem("Télécommunication",tabName = "telecom"),
      menuItem("Biens de consommation",tabName = "bc"),
      menuItem("Industrie",tabName = "indus"),
      menuItem("Matériaux de base",tabName = "mb"),
      menuItem("Pétrole et gaz",tabName = "pg"),
      menuItem("Santé",tabName = "st"),
      menuItem("Services aux collectivités",tabName = "sc"),
      menuItem("Services aux consommateurs",tabName = "scon"),
      menuItem("Aide",tabName="ai")
  
    )
  ),
  dashboardBody(
    tabItems(
   tabItem(tabName = "sf",
           fluidRow( selectInput("s1", "choisir action:",
                                 choices =list(
                                   "ABC Arbitrage"="ABCA.PA",
                                   "ACANTHE DEVELOPMNT"="ACAN.PA",
                                   "AXA"=	"CS.PA",
                                   "BNP PARIBAS SA"="BNP.PA",
                                   "BOURSE DIRECT"="BSD.PA",
                                   "COURTOIS"="COUR.PA",
                                   "DEXIA"	="DXB.F",
                                   "EURONEXT"="ENX.PA",
                                   "IDI"	="IDIP.PA",
                                   "UFFB"="UFF.PA"
                                   
                                 ),selected = "ABCA.PA")),
    fluidRow(
      valueBoxOutput("var11"),
      valueBoxOutput("var21"),
      valueBoxOutput("var31")
      #valueBoxOutput("var3")
      ),
    fluidRow(
    box(htmlOutput("plot11")),
    box(htmlOutput("plot21")))
     # box(tableOutput("p1") )
      #box(htmlOutput("plot3", heigh))
    
),
tabItem(tabName = "tech",
        fluidRow(selectInput("s2", "choisir action:",
                             choices =list(
                               "ALCATEL-LUCENT"="ALU.PA",
                               "ATOS"="ATO.PA",
                               "CAST"="PC9.F",
                               "INFOTEL"="INF.PA",
                               "KEYRUS"="KEY.PA",
                               "LECTRA"="LET.F",
                               "LECTRA"="LSS.PA",
                               "COHERIS"="COH.PA",
                               "INFOTEL"="INF.PA",
                               "NETGEM"="NTG.PA"
                               
                             ),selected = "ALU.PA")),
        fluidRow(
          valueBoxOutput("var12"),
          valueBoxOutput("var22"),
          valueBoxOutput("var32")
          #valueBoxOutput("var3")
        ),
        fluidRow(
          box(htmlOutput("plot12")),
            box ( htmlOutput("plot22"))
          # box(tableOutput("p1") )
          #box(htmlOutput("plot3", height = 250))
              )
           ),
tabItem(tabName = "telecom",
        fluidRow(selectInput("s3", "choisir action:",
                             choices =list(
                               "AFONE"="AFO.PA",
                               "ORANGE"="ORA.PA"
                               
                             ),selected = "AFO.PA")),
        fluidRow(
          valueBoxOutput("var13"),
          valueBoxOutput("var23"),
          valueBoxOutput("var33")
          #valueBoxOutput("var3")
        ),
        fluidRow(
          box(htmlOutput("plot13")),
          box(htmlOutput("plot23"))
          # box(tableOutput("p1") )
          #box(htmlOutput("plot3", height = 250))
        )),
tabItem(tabName = "bc",
        fluidRow( selectInput("s4", "choisir action:",
                              choices =list(
                                "A.S.T GROUPE"="ASP.PA",
                                "ATARI"="ATA.PA",
                                "BIC"="BB.PA",
                                "CHRISTIAN DIOR"="CDI.PA",
                                "DANONE"="BN.PA",
                                "L'OREAL"="OR.PA",
                                "PEUGEOT"="UG.PA",
                                "RENAULT"="RNO.PA",
                                "VALEO"="FR.PA",
                                "VILMORIN & CIE"="RIN.PA"
                                
                              ),selected = "ASP.PA")),
        fluidRow(
          valueBoxOutput("var14"),
          valueBoxOutput("var24"),
          valueBoxOutput("var34")
          #valueBoxOutput("var3")
        ),
        fluidRow(
          box(htmlOutput("plot14")),
           box(htmlOutput("plot24"))
          # box(tableOutput("p1") )
          #box(htmlOutput("plot3", height = 250))
        )),
tabItem(tabName = "indus",
        fluidRow( selectInput("s5", "choisir action:",
                              choices =list(
                                "ACTIA GROUP"="ATI.PA",
                                "AEROPORTS DE PARIS"=	"ADP.PA",
                                "AIRBUS GROUP NV"=	"AIR.PA",
                                "BOUYGUES"=	"EN.PA",
                                "DERICHEBOURG"=	"DBG.PA",
                                "FINANCIERE ODET"	="ODET.PA",
                                "HERIGE"=	"HERIG.PA",
                                "NERGECO"	="NERG.PA",
                                "PRECIA"=	"PREC.PA",
                                "STEF"=	"STF.PA"
                                
                              ),selected = "ATI.PA")),
        fluidRow(
          valueBoxOutput("var15"),
          valueBoxOutput("var25"),
          valueBoxOutput("var35")
          #valueBoxOutput("var3")
        ),
        fluidRow(
           box(htmlOutput("plot15")),
          box(htmlOutput("plot25"))
          # box(tableOutput("p1") )
          #box(htmlOutput("plot3", height = 250))
        )),
tabItem(tabName = "mb",
        fluidRow(  selectInput("s6", "choisir action:",
                               choices =list(
                                 "AIR LIQUIDE"	="AI.PA",
                                 "ENCRES DUBUIT"=	"DBT.PA",
                                 "EURO RESSOURCES"	="EUR.PA",
                                 "JACQUET METAL SCE"=	"JCQ.PA",
                                 "ORAPI"	="ORAP.PA",
                                 "PLASTIQUES DU VAL"=	"PVL.PA",
                                 "EXACOMPTA CLAIREFO"=	"EXAC.PA",
                                 "PCAS"=	"PCA.PA",
                                 "RECYLEX"	="RX.PA",
                                 "ARKEMA"=	"AKE.PA",
                                 "BOURBON"	="GBB.PA"
                                 
                                 
                               ),selected = "AI.PA")),
        fluidRow(
          valueBoxOutput("var16"),
          valueBoxOutput("var26"),
          valueBoxOutput("var36")
          #valueBoxOutput("var3")
        ),
        fluidRow(
          box(htmlOutput("plot16")),
            box( htmlOutput("plot26"))
          # box(tableOutput("p1") )
          #box(htmlOutput("plot3", height = 250))
        )),
tabItem(tabName = "pg",
        fluidRow( selectInput("s7", "choisir action:",
                              choices =list(
                                "ESSO"=	"ES.PA",
                                "TECHNIP"=	"TEC.PA",
                                "TOTAL"	="FP.PA",
                                "TOTAL GABON"	="EC.PA",
                                "CGG"	="CGG.PA",
                                "MAUREL ET PROM"=	"MAU.PA",
                                "MCPHY ENERGY"=	"MCPHY.PA",
                                "MPI"	="MPI.PA"
                                
                              ),selected = "EPS.PA")),
        fluidRow(
          valueBoxOutput("var17"),
          valueBoxOutput("var27"),
          valueBoxOutput("var37")
          #valueBoxOutput("var3")
        ),
        fluidRow(
          box(htmlOutput("plot17")),
             box(htmlOutput("plot27"))
          # box(tableOutput("p1") )
          #box(htmlOutput("plot3", height = 250))
        )),
tabItem(tabName = "st",
        fluidRow(  selectInput("s8", "choisir action:",
                               choices =list(
                                 "AB SCIENCE"=	"AB.PA",
                                 "KORIAN"=	"KORI.PA",
                                 "BIOMERIEUX"	="EYW.F",
                                 "GUERBET"=	"GBT.PA",
                                 "ORPEA"	="ORP.PA",
                                 "VIRBAC SA"	="VIRP.PA",
                                 "SARTORIUS STEDIM"=	"DIM.PA",
                                 "EUROMEDIS GROUP"=	"EMG.PA",
                                 "GENFIT"=	"GNFT.PA",
                                 "POXEL"	="POXEL.PA"
                                 
                               ),selected = "AB.PA")),
        fluidRow(
          valueBoxOutput("var18"),
          valueBoxOutput("var28"),
          valueBoxOutput("var38")
          #valueBoxOutput("var3")
        ),
        fluidRow(
          box(htmlOutput("plot18")),
              box(htmlOutput("plot28"))
          # box(tableOutput("p1") )
          #box(htmlOutput("plot3", height = 250))
        )),
tabItem(tabName = "sc",
        fluidRow(selectInput("s9", "choisir action:",
                             choices =list(
                               "ALBIOMA"	="ABIO.PA",
                               "PARIS CHAU URBAIN"=	"CHAU.PA",
                               "ENGIE"=	"ENGI.PA",
                               "EDF"	="EDF.PA",
                               "SUEZ ENVIRONNEMENT"=	"SEV.PA",
                               "VEOLIA ENVIRNNEMENT"=	"VIE.PA",
                               "AREVA"	="AREVA.PA",
                               "FUTUREN"	="FTRN.PA",
                               "FLO(GROUPE)"	="FLO.PA",
                               "CFAO"=	"CFAO.PA",
                               "ETAM DEVELOPPEMENT"	="TAM.PA",
                               "EUROPCAR"=	"EUCAR.PA",
                               "KERING"=	"KER.PA"
                             ),selected = "ABIO.PA")),
        fluidRow(
          valueBoxOutput("var19"),
          valueBoxOutput("var29"),
          valueBoxOutput("var39")
          #valueBoxOutput("var3")
        ),
        fluidRow(
          box(htmlOutput("plot19"),
            box(htmlOutput("plot29"))
          # box(tableOutput("p1") )
          #box(htmlOutput("plot3", height = 250))
        ))),
tabItem(tabName = "scon",
        fluidRow(selectInput("s10", "choisir action:",
                             choices =list(
                               "ELIOR"	="ELIOR.PA",
                               "PUBLICIS GROUPE"=	"PUB.PA",
                               "CARREFOUR"=	"CA.PA",
                               "VIDELIO"	="VDLO.PA",
                               "VIVENDI"	="VIV.PA"
                               
                             ),selected = "ELIOR.PA")),
        fluidRow(
          valueBoxOutput("var110"),
          valueBoxOutput("var210"),
          valueBoxOutput("var310")
          #valueBoxOutput("var3")
        ),
        fluidRow(
          box(htmlOutput("plot110")),
             box(htmlOutput("plot210"))
          # box(tableOutput("p1") )
          #box(htmlOutput("plot3", height = 250))
        )),
tabItem(tabName = "ai",
        fluidRow(
        box("A propos",textOutput("t1")),
        box("Définition de la VaR",textOutput("t2")),
        box("Graphique 1",textOutput("t3")),
        box("Graphique 2",textOutput("t4"))

)
)
)
)
)
)


