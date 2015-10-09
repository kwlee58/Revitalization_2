#jpeg(file="Leaders_annual_bxp.jpg",width=480,height=480)
quartz(width=9,height=9,dpi=72)
boxplot(log(results.7[,14:16]),names=c("2008","2009","2010"),main="연도별 기업 유치",ylab="log(기업유치)")
#dev.off()
#library(lattice)
#jpeg(file="RnD_annual_hist.jpg",width=480,height=480)
#histogram(~Input08+Input09+Input10,data=RnD, layout=c(1,3), xlab="Budget spent", main="Annual R&D Budget", strip=strip.custom(factor.levels=c("2008","2009","2010")))
#dev.off()
#jpeg(file="Leaders_by_grade_bxp.jpg",width=640,height=640)
quartz(width=9,height=9,dpi=72)
layout(matrix(1:4,nrow=2,byrow=T))
layout.show(4)
boxplot(log(corp08)~grade,data=results.7, main="인센티브 등급별 기업 유치",sub="2008",ylab="log(기업유치)")
boxplot(log(corp09)~grade,data=results.7, main="인센티브 등급별 기업 유치",sub="2009",ylab="log(기업유치)")
boxplot(log(corp10)~grade,data=results.7, main="인센티브 등급별 기업 유치",sub="2010",ylab="log(기업유치)")
boxplot(log(corp.total)~grade,data=results.7, main="인센티브 등급별 기업 유치",sub="08~10",ylab="log(기업유치)")
#dev.off()
#jpeg(file="Leaders_by_Region_bxp.jpg",width=640,height=640)
quartz(width=9,height=9,dpi=72)
layout(matrix(1:4,nrow=2,byrow=T))
layout.show(4)
boxplot(log(corp08)~Region,data=results.7, main="권역별 기업 유치",sub="2008", names=c("영남", "중부", "호남"),ylab="log(기업유치)")
boxplot(log(corp09)~Region,data=results.7, main="권역별 기업 유치",sub="2009", names=c("영남", "중부", "호남"),ylab="log(기업유치)")
boxplot(log(corp10)~Region,data=results.7, main="권역별 기업 유치",sub="2010", names=c("영남", "중부", "호남"),ylab="log(기업유치)")
boxplot(log(corp.total)~Region,data=results.7, main="권역별 기업 유치",sub="08~10", names=c("영남", "중부", "호남"), ylab="log(기업유치)")
#dev.off()