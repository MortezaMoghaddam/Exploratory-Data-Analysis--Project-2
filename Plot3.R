Bal<- NEI[NEI$fips=="24510",]

aggTotalsBal <- aggregate(Bal[c("Emissions")], list(year = Bal$year), sum)

png("plot3.png",width=480,height=480,units="px",bg="transparent")

B <- ggplot(Bal,aes(factor(year),Emissions,fill=type)) +
            geom_bar(stat="identity") +
            theme_bw() + guides(fill=FALSE)+
            facet_grid(.~type,scales = "free",space="free") + 
            labs(x="year", y=expression("Total PM2.5 Emission (Tons)")) + 
            labs(title=expression("PM2.5 Emissions, Baltimore City "))

print(B)

dev.off()
