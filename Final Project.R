Winner<-function(var1,var2){
  baseball=read.csv("baseball.csv",header=TRUE,sep=",")
  attach(baseball)
  lm.data=lm(AB~HA+E+ERA+SO+BB+X3B+H,data=baseball)
  comparisontable=cbind(teamID,lm.data$fitted.values)
  teamnames=c("Kansis City Royals","Chicago White Sox","Chicago Cubs","Cleveland Indians","Minnesota Twins","Detroit Tigers","Boston Red Sox","Tampa Bay Rays","Toronto Blue Jays","Baltimore Orioles","Texas Rangers","Milaukee Brewers",
              "New York Yankees","Oakland Athletics","Seattle Mariners","Los Angeles Angels","Houston Astros","St. Louis Cardinals","Pittsburgh Pirates","Cincinnati Reds","New York Mets","Philedalphia Phillies","Atlanta Braves","Miami Marlins",
              "Washington Nationals","LA Dodgers","San Franscisco Giants","San Diego Padres","Arizona Diamondbacks","Colorado Rockies")
  looktable1=cbind(teamnames,teamID)
  for (i in 1:length(teamID)) if (var1==looktable1[i,1]) varone=looktable1[i,2]
  for (i in 1:length(teamID)) if (var2==looktable1[i,1]) vartwo=looktable1[i,2]
  if(varone>vartwo) print(paste("The",var1, "win!")) else if (vartwo>varone)print(paste("The",var2,"wins!")) else print ("It is a tie")
}




