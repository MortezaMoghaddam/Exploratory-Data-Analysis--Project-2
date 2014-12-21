
Bal<- NEI[NEI$fips=="24510",]

aggTotalsBal <- aggregate(Bal[c("Emissions")], list(year = Bal$year), sum)

png("plot2.png",width=480,height=480,units="px",bg="transparent")

barplot(
  aggTotalsBal$Emissions,
  names.arg=aggTotalsBal$year,
  xlab="Year",
  ylab="PM2.5 Emissions",
  main="Total PM2.5 Emissions Around USA"
)

dev.off()
