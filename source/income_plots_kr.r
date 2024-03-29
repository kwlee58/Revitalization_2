#jpeg(file="Sales_annual_bxp.jpg",width=480,height=480)
household<-results.7$income_type=="household"
total<-results.7$income_type=="total"
quartz(width=9,height=5,dpi=72)
layout(matrix(1:2,nrow=1))
boxplot(log(results.7[,4:6][household,]),names=c("2008","2009","2010"),main="연도별 농가소득(가구당보고)",ylab="log(소득)")
boxplot(log(results.7[,4:6][total,]),names=c("2008","2009","2010"),main="연도별 농가소득(총계보고)",ylab="log(소득)")
#dev.off()
#library(lattice)
#jpeg(file="RnD_annual_hist.jpg",width=480,height=480)
#histogram(~Input08+Input09+Input10,data=RnD, layout=c(1,3), xlab="Budget spent", main="Annual R&D Budget", strip=strip.custom(factor.levels=c("2008","2009","2010")))
#dev.off()
#jpeg(file="Sales_by_grade_bxp.jpg",width=640,height=640)
quartz(width=9,height=9,dpi=72)
layout(matrix(1:4,nrow=2,byrow=T))
layout.show(4)
boxplot(log(income08)~grade,data=results.7, subset=household, main="인센티브 등급별 농가소득(가구당보고)",sub="2008", ylab="log(소득)")
boxplot(log(income09)~grade,data=results.7, subset=household, main="인센티브 등급별 농가소득(가구당보고)",sub="2009", ylab="log(소득)")
boxplot(log(income10)~grade,data=results.7, subset=household, main="인센티브 등급별 농가소득(가구당보고)",sub="2010", ylab="log(소득)")
boxplot(log(income.total)~grade,data=results.7, subset=household, main="인센티브 등급별 농가소득(가구당보고)",sub="08~10", ylab="log(소득)")
quartz(width=9,height=9,dpi=72)
layout(matrix(1:4,nrow=2,byrow=T))
layout.show(4)
boxplot(log(income08)~grade,data=results.7, subset=total, main="인센티브 등급별 농가소득(총계보고)",sub="2008", ylab="log(소득)")
boxplot(log(income09)~grade,data=results.7, subset=total, main="인센티브 등급별 농가소득(총계보고)",sub="2009", ylab="log(소득)")
boxplot(log(income10)~grade,data=results.7, subset=total, main="인센티브 등급별 농가소득(총계보고)",sub="2010", ylab="log(소득)")
boxplot(log(income.total)~grade,data=results.7, subset=total, main="인센티브 등급별 농가소득(총계보고)",sub="08~10", ylab="log(소득)")
#dev.off()
#jpeg(file="Sales_by_Region_bxp.jpg",width=640,height=640)
quartz(width=9,height=9,dpi=72)
layout(matrix(1:4,nrow=2,byrow=T))
layout.show(4)
boxplot(log(income08)~Region,data=results.7, subset=household, main="권역별 농가소득(가구당보고)",sub="2008", names=c("영남", "중부", "호남"), ylab="log(소득)")
boxplot(log(income09)~Region,data=results.7, subset=household, main="권역별 농가소득(가구당보고)",sub="2009", names=c("영남", "중부", "호남"), ylab="log(소득)")
boxplot(log(income10)~Region,data=results.7, subset=household, main="권역별 농가소득(가구당보고)",sub="2010", names=c("영남", "중부", "호남"), ylab="log(소득)")
boxplot(log(income.total)~Region,data=results.7, subset=household, main="권역별 농가소득(가구당보고)",sub="08~10", names=c("영남", "중부", "호남"), ylab="log(소득)")
quartz(width=9,height=9,dpi=72)
layout(matrix(1:4,nrow=2,byrow=T))
layout.show(4)
boxplot(log(income08)~Region,data=results.7, subset=total, main="권역별 농가소득(총계보고)",sub="2008", names=c("영남", "중부", "호남"), ylab="log(소득)")
boxplot(log(income09)~Region,data=results.7, subset=total, main="권역별 농가소득(총계보고)",sub="2009", names=c("영남", "중부", "호남"), ylab="log(소득)")
boxplot(log(income10)~Region,data=results.7, subset=total, main="권역별 농가소득(총계보고)",sub="2010", names=c("영남", "중부", "호남"), ylab="log(소득)")
boxplot(log(income.total)~Region,data=results.7, subset=total, main="권역별 농가소득(총계보고)",sub="08~10", names=c("영남", "중부", "호남"), ylab="log(소득)")
#dev.off()