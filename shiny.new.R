


ui<- dashboardPage(skin = "blue",   
                   dashboardHeader(titleWidth = 300, title = "COVID-19監測指標"),
                   dashboardSidebar(width = 260, tags$head(tags$style(HTML('.navbar-custom-menu>.navbar-nav>li>.dropdown-menu {width:400px;}'))), 
                                    sidebarMenu(
                                      menuItem("WHO建議監測指標指引", tabName = "severe_flu", icon = icon("dashboard"), startExpanded = TRUE,
                                               menuItem("社區傳染水平", tabName = "community_transmission_level ", icon = icon("th"), startExpanded = TRUE,
                                                        menuItem("Transmission Level", tabName = "tcl", icon = icon("th"), startExpanded = TRUE,
                                                                 menuSubItem("非社區感染等級", tabName = "ntc", icon = icon("th")),
                                                                 menuSubItem("社區感染等級", tabName = "tc", icon = icon("th"))
                                                                 ),
                                                        menuSubItem("每週每十萬人新增確診個案", tabName = "ncp10pw", icon = icon("th")),
                                                        menuSubItem("每週每十萬人新增住院個案", tabName = "nhp10pw", icon = icon("th")),
                                                        menuSubItem("每週每十萬人新增死亡個案", tabName = "ndp10pw", icon = icon("th")),
                                                        menuSubItem("每週篩檢陽性率", tabName = "prpw", icon = icon("th"))
                                                        ),
                                               menuItem("醫療及公衛量能", tabName = "Health_system_response_capacity", icon = icon("th"), startExpanded = TRUE,
                                                        menuSubItem("佔床率", tabName = "hbo", icon = icon("th")),
                                                        menuSubItem("住院疾病致死率趨勢", tabName = "hcf", icon = icon("th")),
                                                        menuSubItem("每週每一千人新增篩檢個案", tabName = "ntptpw", icon = icon("th")),
                                                        menuSubItem("24內對新個案進行追蹤比例", tabName = "i24", icon = icon("th")),
                                                        menuSubItem("民眾對於政策的支持、服從度", tabName = "phsm", icon = icon("th"))
                                                        ),
                                               menuSubItem("Situational level", tabName = "Situational_level", icon = icon("th"))
                                      ),
                                      menuItem("OWID各國監測指標", tabName = "flu_virus", icon = icon("dashboard"), startExpanded = TRUE,
                                               menuSubItem("每週新增確診個案", tabName = "Weekly_new_cases", icon = icon("th")),
                                               menuSubItem("每週每十萬人新增確診個案", tabName = "Weekly_new_cases_per_100000", icon = icon("th")),
                                               menuSubItem("疾病致死率", tabName = "Case_fatality", icon = icon("th")),
                                               menuSubItem("每週每十萬人新增死亡個案", tabName = "Weekly_new_death_per_100000", icon = icon("th")),
                                               menuSubItem("累積死亡率", tabName = "Cumulative_mortality", icon = icon("th")),
                                               menuItem("疫苗施打", tabName = "vaccine", icon = icon("th"), startExpanded = TRUE,
                                                        menuSubItem("疫苗施打狀況", tabName = "vaccine1", icon = icon("th")),
                                                        menuSubItem("配合每週每十萬人新增確診個案", tabName = "vaccine2", icon = icon("th"))
                                                        )
                                      )
                                    )
                   ),
                   dashboardBody(
                     tabItems(
                       tabItem(tabName = "ntc",
                               h1("Transmission Level"),
                               br(),
                               br(),
                               br(),
                               fluidPage(img(src='ntc.png', height = '500px', width ='1100px')
                               )
                       ),
                       tabItem(tabName = "tc",
                               h1("Transmission Level"),
                               br(),
                               br(),
                               br(),
                               fluidPage(img(src='tc.png', height = '500px', width ='1100px')
                               )
                       ),
                       tabItem(tabName = "ncp10pw",
                               h1("New confirmed cases per 100,000 population per week"),
                               br(),
                               br(),
                               br(),
                               fluidPage(
                                 tags$ul(
                                   tags$li(tags$p(tags$b("Description",style = "font-size:36px;")), "–Direct measure of incidence ",style = "font-size:24px;"),
                                   br(),
                                   tags$li(tags$p(tags$b("Major limitations",style = "font-size:36px;")), 
                                           "–Heavily influenced by surveillance system performance, testing policy and laboratory capacity.",
                                           tags$br(),
                                           '–At low levels and in small geographical regions, can be sensitive to minor fluctuations in case counts, particularly due to batch reporting.',style = "font-size:24px;"),
                                   br(),
                                   br(),
                                   br(),
                                   img(src='ncp10.png', height = '125px', width ='500px')
                                 )
                               )
                       ),
                       tabItem(tabName = "nhp10pw",
                               h1("New COVID-19 hospitalizations per 100,000 population per week"),
                               br(),
                               br(),
                               br(),
                               fluidPage(
                                 tags$ul(
                                   tags$li(tags$p(tags$b("Description",style = "font-size:36px;")), "–A subset of all incident cases require hospitalization; thus, this is an indirect indicator of incidence. Unlikely to be subject to surveillance policy changes/differences. ",style = "font-size:24px;"),
                                   br(),
                                   tags$li(tags$p(tags$b("Major limitations",style = "font-size:36px;")), 
                                           "–May be influenced by hospitalization policy.",
                                           tags$br(),
                                           '–Delayed measure of incidence.',style = "font-size:24px;"),
                                   br(),
                                   br(),
                                   br(),
                                   img(src='nhp10.png', height = '125px', width ='500px')
                                 )
                               )
                       ),
                       tabItem(tabName = "ndp10pw",
                               h1("Number of COVID-19-attributed deaths per 100,000 population per week"),
                               br(),
                               br(),
                               br(),
                               fluidPage(
                                 tags$ul(
                                   tags$li(tags$p(tags$b("Description",style = "font-size:36px;")), " –A subset of all incident cases are fatal, and thus this is an indirect indicator of incidence. Minimally influenced by surveillance policy if testing is comprehensive. ",style = "font-size:24px;"),
                                   br(),
                                   tags$li(tags$p(tags$b("Major limitations",style = "font-size:36px;")), "–Delayed measure of incidence.",tags$br(),'–At low levels and in small geographical regions, can be sensitive to minor fluctuations',style = "font-size:24px;"),
                                   br(),
                                   br(),
                                   br(),
                                   img(src='ndp10.png', height = '125px', width ='500px')
                                 )
                               )
                       ),
                       tabItem(tabName = "prpw",
                               h1("Test positivity rate per week (non-sentinel)"),
                               br(),
                               br(),
                               br(),
                               fluidPage(
                                 tags$ul(
                                   tags$li(tags$p(tags$b("Description",style = "font-size:36px;")), "–This may be useful if there are limited sentinel sites. It may capture atypical cases better than sentinel surveillance.",style = "font-size:24px;"),
                                   br(),
                                   tags$li(tags$p(tags$b("Major limitations",style = "font-size:36px;")), 
                                           "–Heavily influenced by testing strategy and capacity",style = "font-size:24px;"),
                                   br(),
                                   br(),
                                   br(),
                                   img(src='pr.png', height = '125px', width ='500px')
                                 )
                               )
                       ),
                       tabItem(tabName = "hbo",
                               h1("Proportion of occupied hospital beds"),
                               br(),
                               br(),
                               br(),
                               fluidPage(
                                 tags$ul(
                                   tags$li(tags$p(tags$b("Description",style = "font-size:36px;")), "–High morbidity and mortality will occur if there is insufficient capacity to hospitalize severe cases. Should count all hospitalizations, not only COVID-19",style = "font-size:24px;"),
                                   br(),
                                   tags$li(tags$p(tags$b("Major limitations",style = "font-size:36px;")), 
                                           "–May be influenced by hospitalization policy, which does not indicate true saturation of hospital capacity.",style = "font-size:24px;"),
                                   br(),
                                   br(),
                                   br(),
                                   img(src='hbo.png', height = '125px', width ='500px')
                                 )
                               )
                       ),
                       tabItem(tabName = "hcf",
                               h1("Case fatality rate of resolved (i.e., outcome known) hospitalized cases"),
                               br(),
                               br(),
                               br(),
                               fluidPage(
                                 tags$ul(
                                   tags$li(tags$p(tags$b("Description",style = "font-size:36px;")), "–Overall impact indicator of adequate COVID-19 care.",style = "font-size:24px;"),
                                   br(),
                                   tags$li(tags$p(tags$b("Major limitations",style = "font-size:36px;")), 
                                           "–Highly dependent on age and various biases.",
                                           tags$br(),
                                           '–Must take into account any changes in case detection or testing strategy.',style = "font-size:24px;"),
                                   br(),
                                   br(),
                                   br(),
                                   img(src='hcf.png', height = '125px', width ='500px')
                                 )
                               )
                       ),
                       tabItem(tabName = "ntptpw",
                               h1("Number of persons tested per 1000 population per week"),
                               br(),
                               br(),
                               br(),
                               fluidPage(
                                 tags$ul(
                                   tags$li(tags$p(tags$b("Description",style = "font-size:36px;")), "–Without sufficient testing, it is difficult to appropriately isolate and treat cases.",style = "font-size:24px;"),
                                   br(),
                                   tags$li(tags$p(tags$b("Major limitations",style = "font-size:36px;")), 
                                           "–Not all laboratories are able to report individuals tested.",style = "font-size:24px;"),
                                   br(),
                                   br(),
                                   br(),
                                   img(src='ntptw.png', height = '125px', width ='500px')
                                 )
                               )
                       ),
                       tabItem(tabName = "i24",
                               h1("Proportion of cases for which an investigation has been conducted within 24 hours of identification"),
                               br(),
                               br(),
                               br(),
                               fluidPage(
                                 tags$ul(
                                   tags$li(tags$p(tags$b("Description",style = "font-size:36px;")), "–This indicates the capacity to identify transmission risks and exposed contacts. Where investigation is not recorded directly, can be measured by proxy indicator-proportion of cases with contacts listed.",style = "font-size:24px;"),
                                   br(),
                                   tags$li(tags$p(tags$b("Major limitations",style = "font-size:36px;")), 
                                           "–May be difficult to obtain timely data.",style = "font-size:24px;"),
                                   br(),
                                   br(),
                                   br(),
                                   img(src='i24.png', height = '125px', width ='500px')
                                 )
                               )
                       ),
                       tabItem(tabName = "phsm",
                               h1("Support for / adherence to PHSMs"),
                               br(),
                               br(),
                               br(),
                               fluidPage(
                                 tags$ul(
                                   tags$li(tags$p(tags$b("Description",style = "font-size:36px;")), "–Qualitative assessment based on observation, media monitoring, perception or behaviour surveys, hotlines, focus groups, etc. Analysis including forecasting of effectiveness of PHSM to be considered, it is important to identify not only the current status but any barriers or enablers to improvement.",style = "font-size:24px;"),
                                   br(),
                                   tags$li(tags$p(tags$b("Major limitations",style = "font-size:36px;")), 
                                           "–May be highly variable between sub-groups and across individual PHSMs and over time.",style = "font-size:24px;"),
                                   br(),
                                   br(),
                                   br(),
                                   img(src='phsm.png', height = '125px', width ='500px')
                                 )
                               )
                       ),
                       tabItem(tabName = "Situational_level",
                               h1("Situational level"),
                               br(),
                               br(),
                               br(),
                               fluidPage( img(src='sl3.png', height = '400px', width ='1100px')
                               )
                       ),
                       tabItem(tabName = "Weekly_new_cases",
                               h1("每週新增確診個案"),
                               fluidRow(box(plotlyOutput("distPlot"),width = 6),box(plotlyOutput("distPlot2"),width = 6),box(plotlyOutput("distPlot3"),width = 6),
                                        box(plotlyOutput("distPlot4"),width = 6),box(plotlyOutput("distPlot5"),width = 6),box(plotlyOutput("distPlot6"),width = 6)
                               )
                       ),
                       tabItem(tabName = "Weekly_new_cases_per_100000",
                               h1("每週每十萬人新增確診個案"),
                               fluidRow(box(plotlyOutput("ncp10Plot"),width = 6),box(plotlyOutput("ncp10Plot2"),width = 6),box(plotlyOutput("ncp10Plot3"),width = 6),
                                        box(plotlyOutput("ncp10Plot4"),width = 6),box(plotlyOutput("ncp10Plot5"),width = 6),box(plotlyOutput("ncp10Plot6"),width = 6)
                               )
                       ),
                       tabItem(tabName = "Case_fatality",
                               h1("疾病致死率"),
                               fluidRow(box(plotlyOutput("cfPlot"),width = 6),box(plotlyOutput("cfPlot2"),width = 6),box(plotlyOutput("cfPlot3"),width = 6),
                                        box(plotlyOutput("cfPlot4"),width = 6),box(plotlyOutput("cfPlot5"),width = 6),box(plotlyOutput("cfPlot6"),width = 6)
                               )
                       ),
                       tabItem(tabName = "Weekly_new_death_per_100000",
                               h1("每週每十萬人新增死亡個案"),
                               fluidRow(box(plotlyOutput("ndp10Plot"),width = 6),box(plotlyOutput("ndp10Plot2"),width = 6),box(plotlyOutput("ndp10Plot3"),width = 6),
                                        box(plotlyOutput("ndp10Plot4"),width = 6),box(plotlyOutput("ndp10Plot5"),width = 6),box(plotlyOutput("ndp10Plot6"),width = 6)
                               )
                       ),
                       tabItem(tabName = "Cumulative_mortality",
                               h1("累積死亡率"),
                               fluidRow(box(plotlyOutput("tfPlot"),width = 6),box(plotlyOutput("tfPlot2"),width = 6),box(plotlyOutput("tfPlot3"),width = 6),
                                        box(plotlyOutput("tfPlot4"),width = 6),box(plotlyOutput("tfPlot5"),width = 6),box(plotlyOutput("tfPlot6"),width = 6)
                               )
                       ),
                       tabItem(tabName = "vaccine1",
                               h1("疫苗施打狀況"),
                               fluidRow(box(plotlyOutput("vacPlot"),width = 6),box(plotlyOutput("vacPlot2"),width = 6),box(plotlyOutput("vacPlot3"),width = 6),
                                        box(plotlyOutput("vacPlot4"),width = 6),box(plotlyOutput("vacPlot5"),width = 6),box(plotlyOutput("vacPlot6"),width = 6)
                               )
                       ),
                       tabItem(tabName = "vaccine2",
                               h1("配合每週每十萬人新增確診個案"),
                               fluidRow(box(plotlyOutput("svacPlot"),width = 6),box(plotlyOutput("svacPlot2"),width = 6),box(plotlyOutput("svacPlot3"),width = 6),
                                        box(plotlyOutput("svacPlot4"),width = 6),box(plotlyOutput("svacPlot5"),width = 6),box(plotlyOutput("svacPlot6"),width = 6)
                               )
                       )
                     )
                   ),
                   title = "COVID-19監測指標"
)

server <- function(input, output) {
  output$distPlot <- renderPlotly({figtw})
  output$distPlot2 <- renderPlotly({fignz})
  output$distPlot3 <- renderPlotly({figaus})
  output$distPlot4 <- renderPlotly({figsin})
  output$distPlot5 <- renderPlotly({figuk})
  output$distPlot6 <- renderPlotly({figisr})
  output$ncp10Plot <- renderPlotly({ncp10tw})
  output$ncp10Plot2 <- renderPlotly({ncp10nz})
  output$ncp10Plot3 <- renderPlotly({ncp10aus})
  output$ncp10Plot4 <- renderPlotly({ncp10sin})
  output$ncp10Plot5 <- renderPlotly({ncp10uk})
  output$ncp10Plot6 <- renderPlotly({ncp10irs})
  output$cfPlot <- renderPlotly({cftw})
  output$cfPlot2 <- renderPlotly({cfnz})
  output$cfPlot3 <- renderPlotly({cfaus})
  output$cfPlot4 <- renderPlotly({cfsin})
  output$cfPlot5 <- renderPlotly({cfuk})
  output$cfPlot6 <- renderPlotly({cfisr})
  output$ndp10Plot <- renderPlotly({ndp10tw})
  output$ndp10Plot2 <- renderPlotly({ndp10nz})
  output$ndp10Plot3 <- renderPlotly({ndp10aus})
  output$ndp10Plot4 <- renderPlotly({ndp10sin})
  output$ndp10Plot5 <- renderPlotly({ndp10uk})
  output$ndp10Plot6 <- renderPlotly({ndp10isr})
  output$tfPlot <- renderPlotly({tftw})
  output$tfPlot2 <- renderPlotly({tfnz})
  output$tfPlot3 <- renderPlotly({tfaus})
  output$tfPlot4 <- renderPlotly({tfsin})
  output$tfPlot5 <- renderPlotly({tfuk})
  output$tfPlot6 <- renderPlotly({tfisr})
  output$vacPlot <- renderPlotly({vtw2})
  output$vacPlot2 <- renderPlotly({vnz2})
  output$vacPlot3 <- renderPlotly({vaus2})
  output$vacPlot4 <- renderPlotly({vsin2})
  output$vacPlot5 <- renderPlotly({vuk2})
  output$vacPlot6 <- renderPlotly({visr2})
  output$svacPlot <- renderPlotly({vtw})
  output$svacPlot2 <- renderPlotly({vnz})
  output$svacPlot3 <- renderPlotly({vaus})
  output$svacPlot4 <- renderPlotly({vsin})
  output$svacPlot5 <- renderPlotly({vuk})
  output$svacPlot6 <- renderPlotly({visr})

}

shinyApp(ui = ui, server = server)














