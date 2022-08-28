# https://datascience.stackexchange.com/questions/2403/data-science-without-knowledge-of-a-specific-topic-is-it-worth-pursuing-as-a-ca/2406#2406

draw.ellipse <- function(center,angle,semimajor,semiminor,radius,h,s,v,...) {
  shape <- rbind(c(cos(angle),-sin(angle)),c(sin(angle),cos(angle))) %*% diag(c(semimajor,semiminor))
  tt <- seq(0,2*pi,length.out=1000)
  foo <- matrix(center,nrow=2,ncol=length(tt),byrow=FALSE) + shape%*%(radius*rbind(cos(tt),sin(tt)))
  polygon(foo[1,],foo[2,],col=hsv(h,s,v,alpha=0.5),border="black",...)
}
name <- function(x,y,label,cex=1.2,...) text(x,y,label,cex=cex,...)

len=1080
cex_factor=len/600

png("Venn.png",width=len,height=len)
opar <- par(mai=c(0,0,0,0),lwd=3,font=2)
plot(c(0,100),c(0,90),type="n",bty="n",xaxt="n",yaxt="n",xlab="",ylab="")
draw.ellipse(center=c(30,30),angle=0.75*pi,semimajor=2,semiminor=1,radius=20,h=60/360,s=.068,v=.976)
draw.ellipse(center=c(70,30),angle=0.25*pi,semimajor=2,semiminor=1,radius=20,h=83/360,s=.482,v=.894)
draw.ellipse(center=c(48,40),angle=0.7*pi,semimajor=2,semiminor=1,radius=20,h=174/360,s=.397,v=.8)
draw.ellipse(center=c(52,40),angle=0.3*pi,semimajor=2,semiminor=1,radius=20,h=200/360,s=.774,v=.745)

name(50,90,"The Data Scientist Venn Diagram",pos=1,cex=2*cex_factor)
name(8,62,"Communi-\ncation",cex=1.5*cex_factor,pos=3)
name(30,78,"Statistics",cex=1.5*cex_factor)
name(70,78,"Programming",cex=1.5*cex_factor)
name(92,62,"Business",cex=1.5*cex_factor,pos=3)

name(10,45,"Hot\nAir",cex=cex_factor)
name(90,45,"The\nAccountant",cex=cex_factor)
name(33,65,"The\nData\nNerd",cex=cex_factor)
name(67,65,"The\nHacker",cex=cex_factor)
name(27,50,"The\nStats\nProf",cex=cex_factor)
name(73,50,"The\nIT\nGuy",cex=cex_factor)
name(50,55,"R\nCore\nTeam",cex=cex_factor)
name(38,38,"The\nGood\nConsultant",cex=cex_factor)
name(62,38,"Drew\nConway's\nData\nScientist",cex=cex_factor)
name(50,24,"The\nperfect\nData\nScientist!",cex=cex_factor)
name(31,18,"Comp\nSci\nProf",cex=cex_factor)
name(69,18,"The\nNumber\nCruncher",cex=cex_factor)
name(42,11,"Head\nof IT",cex=cex_factor)
name(58,11,"Ana-\nlyst",cex=cex_factor)
name(50,5,"The\nSalesperson",cex=cex_factor)
par(opar)
dev.off()