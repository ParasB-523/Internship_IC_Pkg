
Technology	{
		name				= ""
		date				= "Sep 27 2019"
		dielectric			= 3.45e-05
		unitTimeName			= "ns"
		timePrecision			= 1000
		unitLengthName			= "micron"
		lengthPrecision			= 2000
		gridResolution			= 10
		unitVoltageName			= "V"
		voltagePrecision		= 1000000
		unitCurrentName			= "mA"
		currentPrecision		= 1000000
		unitPowerName			= "mw"
		powerPrecision			= 1000000
		unitResistanceName		= "kohm"
		resistancePrecision		= 1000000
		unitCapacitanceName		= "pf"
		capacitancePrecision		= 1000000
		unitInductanceName		= "nh"
		inductancePrecision		= 100
		minBaselineTemperature		= 25
		nomBaselineTemperature		= 25
		maxBaselineTemperature		= 25
}

Color		43 {
		name				= "43"
		rgbDefined			= 1
		redIntensity			= 180
		greenIntensity			= 175
		blueIntensity			= 255
}

Color		47 {
		name				= "47"
		rgbDefined			= 1
		redIntensity			= 180
		greenIntensity			= 255
		blueIntensity			= 255
}

Tile		"unit" {
		width				= 0.19
		height				= 1.4
}

Layer		"metal1" {
		layerNumber			= 3
		maskName			= "metal1"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "cyan"
		lineStyle			= "solid"
		pattern				= "dot"
		pitch				= 0.14
		defaultWidth			= 0.07
		minWidth			= 0.07
		minSpacing			= 0.065
                minArea                         = 0.0049
		sameNetMinSpacing		= 0.065
		unitMinResistance		= 0.00038
		unitNomResistance		= 0.00038
		unitMaxResistance		= 0.00038
		unitMinCapacitance		= 0.000859
		unitNomCapacitance		= 0.000859
		unitMaxCapacitance		= 0.000859
		unitMinHeightFromSub		= 0.37
		unitNomHeightFromSub		= 0.37
		unitMaxHeightFromSub		= 0.37
		unitMinThickness		= 0.13
		unitNomThickness		= 0.13
		unitMaxThickness		= 0.13
}

Layer		"via1" {
		layerNumber			= 4
		maskName			= "via1"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "43"
		lineStyle			= "solid"
		pattern				= "rectangleX"
		pitch				= 0
		defaultWidth			= 0.07
		minWidth			= 0.07
		minSpacing			= 0.08
		sameNetMinSpacing		= 0.08
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

Layer		"metal2" {
		layerNumber			= 5
		maskName			= "metal2"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "yellow"
		lineStyle			= "solid"
		pattern				= "dot"
		pitch				= 0.19
		defaultWidth			= 0.07
		minWidth			= 0.07
		minSpacing			= 0.07
                minArea                         = 0.0049
		sameNetMinSpacing		= 0.07
		unitMinResistance		= 0.00025
		unitNomResistance		= 0.00025
		unitMaxResistance		= 0.00025
		unitMinCapacitance		= 0.00076
		unitNomCapacitance		= 0.00076
		unitMaxCapacitance		= 0.00076
		unitMinHeightFromSub		= 0.62
		unitNomHeightFromSub		= 0.62
		unitMaxHeightFromSub		= 0.62
		unitMinThickness		= 0.14
		unitNomThickness		= 0.14
		unitMaxThickness		= 0.14
		fatTblDimension			= 6
		fatTblThreshold			= (0,0.0905,0.2705,0.5005,0.9005,1.5005)
		fatTblParallelLengthDimension	= 6
		fatTblParallelLength		= (0,0.3005,0.9005,1.8005,2.7005,4.0005)
		fatTblSpacing			= (0.07,0.07,0.07,0.07,0.07,0.07,
						   0.07,0.09,0.09,0.09,0.09,0.09,
						   0.07,0.09,0.27,0.27,0.27,0.27,
						   0.07,0.09,0.27,0.5,0.5,0.5,
						   0.07,0.09,0.27,0.5,0.9,0.9,
						   0.07,0.09,0.27,0.5,0.9,1.5)
}

Layer		"via2" {
		layerNumber			= 6
		maskName			= "via2"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "blue"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0.07
		minWidth			= 0.07
		minSpacing			= 0.09
		sameNetMinSpacing		= 0.09
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

Layer		"metal3" {
		layerNumber			= 7
		maskName			= "metal3"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "red"
		lineStyle			= "solid"
		pattern				= "wave"
		pitch				= 0.14
		defaultWidth			= 0.07
		minWidth			= 0.07
		minSpacing			= 0.07
                minArea                         = 0.0049
		sameNetMinSpacing		= 0.07
		unitMinResistance		= 0.00025
		unitNomResistance		= 0.00025
		unitMaxResistance		= 0.00025
		unitMinCapacitance		= 0.000747
		unitNomCapacitance		= 0.000747
		unitMaxCapacitance		= 0.000747
		unitMinHeightFromSub		= 0.88
		unitNomHeightFromSub		= 0.88
		unitMaxHeightFromSub		= 0.88
		unitMinThickness		= 0.14
		unitNomThickness		= 0.14
		unitMaxThickness		= 0.14
		fatTblDimension			= 6
		fatTblThreshold			= (0,0.0905,0.2705,0.5005,0.9005,1.5005)
		fatTblParallelLengthDimension	= 6
		fatTblParallelLength		= (0,0.3005,0.9005,1.8005,2.7005,4.0005)
		fatTblSpacing			= (0.07,0.07,0.07,0.07,0.07,0.07,
						   0.07,0.09,0.09,0.09,0.09,0.09,
						   0.07,0.09,0.27,0.27,0.27,0.27,
						   0.07,0.09,0.27,0.5,0.5,0.5,
						   0.07,0.09,0.27,0.5,0.9,0.9,
						   0.07,0.09,0.27,0.5,0.9,1.5)
}

Layer		"via3" {
		layerNumber			= 8
		maskName			= "via3"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "yellow"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0.07
		minWidth			= 0.07
		minSpacing			= 0.09
		sameNetMinSpacing		= 0.09
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

Layer		"metal4" {
		layerNumber			= 9
		maskName			= "metal4"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "green"
		lineStyle			= "solid"
		pattern				= "slash"
		pitch				= 0.28
		defaultWidth			= 0.14
		minWidth			= 0.14
		minSpacing			= 0.14
                minArea                         = 0.0049
		sameNetMinSpacing		= 0.14
		unitMinResistance		= 0.00021
		unitNomResistance		= 0.00021
		unitMaxResistance		= 0.00021
		unitMinCapacitance		= 0.000462
		unitNomCapacitance		= 0.000462
		unitMaxCapacitance		= 0.000462
		unitMinHeightFromSub		= 1.14
		unitNomHeightFromSub		= 1.14
		unitMaxHeightFromSub		= 1.14
		unitMinThickness		= 0.28
		unitNomThickness		= 0.28
		unitMaxThickness		= 0.28
		fatTblDimension			= 5
		fatTblThreshold			= (0,0.2705,0.5005,0.9005,1.5005)
		fatTblParallelLengthDimension	= 5
		fatTblParallelLength		= (0,0.9005,1.8005,2.7005,4.0005)
		fatTblSpacing			= (0.14,0.14,0.14,0.14,0.14,
						   0.14,0.27,0.27,0.27,0.27,
						   0.14,0.27,0.5,0.5,0.5,
						   0.14,0.27,0.5,0.9,0.9,
						   0.14,0.27,0.5,0.9,1.5)
}

Layer		"via4" {
		layerNumber			= 10
		maskName			= "via4"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
		lineStyle			= "solid"
		pattern				= "rectangleX"
		pitch				= 0
		defaultWidth			= 0.14
		minWidth			= 0.14
		minSpacing			= 0.16
		sameNetMinSpacing		= 0.16
		unitMinResistance		= 0.003
		unitNomResistance		= 0.003
		unitMaxResistance		= 0.003
}

Layer		"metal5" {
		layerNumber			= 11
		maskName			= "metal5"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "magenta"
		lineStyle			= "solid"
		pattern				= "backSlash"
		pitch				= 0.28
		defaultWidth			= 0.14
		minWidth			= 0.14
		minSpacing			= 0.14
                minArea                         = 0.0049
		sameNetMinSpacing		= 0.14
		unitMinResistance		= 0.00021
		unitNomResistance		= 0.00021
		unitMaxResistance		= 0.00021
		unitMinCapacitance		= 4.8e-05
		unitNomCapacitance		= 4.8e-05
		unitMaxCapacitance		= 4.8e-05
		unitMinHeightFromSub		= 1.71
		unitNomHeightFromSub		= 1.71
		unitMaxHeightFromSub		= 1.71
		unitMinThickness		= 0.28
		unitNomThickness		= 0.28
		unitMaxThickness		= 0.28
		fatTblDimension			= 5
		fatTblThreshold			= (0,0.2705,0.5005,0.9005,1.5005)
		fatTblParallelLengthDimension	= 5
		fatTblParallelLength		= (0,0.9005,1.8005,2.7005,4.0005)
		fatTblSpacing			= (0.14,0.14,0.14,0.14,0.14,
						   0.14,0.27,0.27,0.27,0.27,
						   0.14,0.27,0.5,0.5,0.5,
						   0.14,0.27,0.5,0.9,0.9,
						   0.14,0.27,0.5,0.9,1.5)
}

Layer		"via5" {
		layerNumber			= 12
		maskName			= "via5"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "47"
		lineStyle			= "solid"
		pattern				= "rectangleX"
		pitch				= 0
		defaultWidth			= 0.14
		minWidth			= 0.14
		minSpacing			= 0.16
		sameNetMinSpacing		= 0.16
		unitMinResistance		= 0.003
		unitNomResistance		= 0.003
		unitMaxResistance		= 0.003
}

Layer		"metal6" {
		layerNumber			= 13
		maskName			= "metal6"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "47"
		lineStyle			= "solid"
		pattern				= "dot"
		pitch				= 0.28
		defaultWidth			= 0.14
		minWidth			= 0.14
		minSpacing			= 0.14
                minArea                         = 0.0049
		sameNetMinSpacing		= 0.14
		unitMinResistance		= 0.00021
		unitNomResistance		= 0.00021
		unitMaxResistance		= 0.00021
		unitMinCapacitance		= 0.000351
		unitNomCapacitance		= 0.000351
		unitMaxCapacitance		= 0.000351
		unitMinHeightFromSub		= 2.28
		unitNomHeightFromSub		= 2.28
		unitMaxHeightFromSub		= 2.28
		unitMinThickness		= 0.28
		unitNomThickness		= 0.28
		unitMaxThickness		= 0.28
		fatTblDimension			= 5
		fatTblThreshold			= (0,0.2705,0.5005,0.9005,1.5005)
		fatTblParallelLengthDimension	= 5
		fatTblParallelLength		= (0,0.9005,1.8005,2.7005,4.0005)
		fatTblSpacing			= (0.14,0.14,0.14,0.14,0.14,
						   0.14,0.27,0.27,0.27,0.27,
						   0.14,0.27,0.5,0.5,0.5,
						   0.14,0.27,0.5,0.9,0.9,
						   0.14,0.27,0.5,0.9,1.5)
}

ContactCode	"via1_0" {
		contactCodeNumber		= 2
		cutLayer			= "via1"
		lowerLayer			= "metal1"
		upperLayer			= "metal2"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.035
		upperLayerEncHeight		= 0.035
		lowerLayerEncWidth		= 0.035
		lowerLayerEncHeight		= 0.035
		minCutSpacing			= 0.08
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"via1_1" {
		contactCodeNumber		= 3
		cutLayer			= "via1"
		lowerLayer			= "metal1"
		upperLayer			= "metal2"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0.035
		lowerLayerEncWidth		= 0.035
		lowerLayerEncHeight		= 0.035
		minCutSpacing			= 0.08
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"via1_3" {
		contactCodeNumber		= 4
		cutLayer			= "via1"
		lowerLayer			= "metal1"
		upperLayer			= "metal2"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.035
		upperLayerEncHeight		= 0.035
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0.035
		minCutSpacing			= 0.08
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"via1_5" {
		contactCodeNumber		= 5
		cutLayer			= "via1"
		lowerLayer			= "metal1"
		upperLayer			= "metal2"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.035
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0.035
		minCutSpacing			= 0.08
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"via2_5" {
		contactCodeNumber		= 7
		cutLayer			= "via2"
		lowerLayer			= "metal2"
		upperLayer			= "metal3"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.035
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0.035
		minCutSpacing			= 0.09
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"via2_6" {
		contactCodeNumber		= 8
		cutLayer			= "via2"
		lowerLayer			= "metal2"
		upperLayer			= "metal3"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.035
		upperLayerEncHeight		= 0.035
		lowerLayerEncWidth		= 0.035
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.09
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"via2_0" {
		contactCodeNumber		= 9
		cutLayer			= "via2"
		lowerLayer			= "metal2"
		upperLayer			= "metal3"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.035
		upperLayerEncHeight		= 0.035
		lowerLayerEncWidth		= 0.035
		lowerLayerEncHeight		= 0.035
		minCutSpacing			= 0.09
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"via2_1" {
		contactCodeNumber		= 10
		cutLayer			= "via2"
		lowerLayer			= "metal2"
		upperLayer			= "metal3"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0.035
		lowerLayerEncWidth		= 0.035
		lowerLayerEncHeight		= 0.035
		minCutSpacing			= 0.09
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"via3_2" {
		contactCodeNumber		= 11
		cutLayer			= "via3"
		lowerLayer			= "metal3"
		upperLayer			= "metal4"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.035
		upperLayerEncHeight		= 0.035
		lowerLayerEncWidth		= 0.035
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.09
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"via3_0" {
		contactCodeNumber		= 12
		cutLayer			= "via3"
		lowerLayer			= "metal3"
		upperLayer			= "metal4"
		isDefaultContact		= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.035
		upperLayerEncHeight		= 0.035
		lowerLayerEncWidth		= 0.035
		lowerLayerEncHeight		= 0.035
		minCutSpacing			= 0.09
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"via4_0" {
		contactCodeNumber		= 13
		cutLayer			= "via4"
		lowerLayer			= "metal4"
		upperLayer			= "metal5"
		isDefaultContact		= 1
		cutWidth			= 0.14
		cutHeight			= 0.14
		upperLayerEncWidth		= 0.13
		upperLayerEncHeight		= 0.13
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.16
		unitMinResistance		= 0.003
		unitNomResistance		= 0.003
		unitMaxResistance		= 0.003
}

ContactCode	"via5_0" {
		contactCodeNumber		= 14
		cutLayer			= "via5"
		lowerLayer			= "metal5"
		upperLayer			= "metal6"
		isDefaultContact		= 1
		cutWidth			= 0.14
		cutHeight			= 0.14
		upperLayerEncWidth		= 0.13
		upperLayerEncHeight		= 0.13
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.16
		unitMinResistance		= 0.003
		unitNomResistance		= 0.003
		unitMaxResistance		= 0.003
}

ContactCode	"Via1Array-0" {
		contactCodeNumber		= 19
		cutLayer			= "via1"
		lowerLayer			= "metal1"
		upperLayer			= "metal2"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.035
		upperLayerEncHeight		= 0.035
		lowerLayerEncWidth		= 0.035
		lowerLayerEncHeight		= 0.035
		minCutSpacing			= 0.08
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"Via1Array-1" {
		contactCodeNumber		= 20
		cutLayer			= "via1"
		lowerLayer			= "metal1"
		upperLayer			= "metal2"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0.035
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0.035
		minCutSpacing			= 0.08
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"Via1Array-1_Enc" {
		contactCodeNumber		= 21
		cutLayer			= "via1"
		lowerLayer			= "metal1"
		upperLayer			= "metal2"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.035
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0.035
		minCutSpacing			= 0.08
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"Via1Array-2" {
		contactCodeNumber		= 22
		cutLayer			= "via1"
		lowerLayer			= "metal1"
		upperLayer			= "metal2"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.035
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0.035
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.08
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"Via1Array-2_Enc" {
		contactCodeNumber		= 23
		cutLayer			= "via1"
		lowerLayer			= "metal1"
		upperLayer			= "metal2"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0.035
		lowerLayerEncWidth		= 0.035
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.08
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"Via1Array-3" {
		contactCodeNumber		= 24
		cutLayer			= "via1"
		lowerLayer			= "metal1"
		upperLayer			= "metal2"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.035
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0.035
		minCutSpacing			= 0.08
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"Via1Array-3_Enc" {
		contactCodeNumber		= 25
		cutLayer			= "via1"
		lowerLayer			= "metal1"
		upperLayer			= "metal2"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0.035
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0.035
		minCutSpacing			= 0.08
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"Via1Array-4" {
		contactCodeNumber		= 26
		cutLayer			= "via1"
		lowerLayer			= "metal1"
		upperLayer			= "metal2"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0.035
		lowerLayerEncWidth		= 0.035
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.08
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"Via1Array-4_Enc" {
		contactCodeNumber		= 27
		cutLayer			= "via1"
		lowerLayer			= "metal1"
		upperLayer			= "metal2"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.035
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0.035
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.08
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"Via2Array-0" {
		contactCodeNumber		= 28
		cutLayer			= "via2"
		lowerLayer			= "metal2"
		upperLayer			= "metal3"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.035
		upperLayerEncHeight		= 0.035
		lowerLayerEncWidth		= 0.035
		lowerLayerEncHeight		= 0.035
		minCutSpacing			= 0.09
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"Via2Array-1" {
		contactCodeNumber		= 29
		cutLayer			= "via2"
		lowerLayer			= "metal2"
		upperLayer			= "metal3"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0.035
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0.035
		minCutSpacing			= 0.09
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"Via2Array-1_Enc" {
		contactCodeNumber		= 30
		cutLayer			= "via2"
		lowerLayer			= "metal2"
		upperLayer			= "metal3"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.035
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0.035
		minCutSpacing			= 0.09
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"Via2Array-2" {
		contactCodeNumber		= 31
		cutLayer			= "via2"
		lowerLayer			= "metal2"
		upperLayer			= "metal3"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.035
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0.035
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.09
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"Via2Array-2_Enc" {
		contactCodeNumber		= 32
		cutLayer			= "via2"
		lowerLayer			= "metal2"
		upperLayer			= "metal3"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0.035
		lowerLayerEncWidth		= 0.035
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.09
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"Via2Array-3" {
		contactCodeNumber		= 33
		cutLayer			= "via2"
		lowerLayer			= "metal2"
		upperLayer			= "metal3"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.035
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0.035
		minCutSpacing			= 0.09
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"Via2Array-3_Enc" {
		contactCodeNumber		= 34
		cutLayer			= "via2"
		lowerLayer			= "metal2"
		upperLayer			= "metal3"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0.035
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0.035
		minCutSpacing			= 0.09
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"Via2Array-4" {
		contactCodeNumber		= 35
		cutLayer			= "via2"
		lowerLayer			= "metal2"
		upperLayer			= "metal3"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0.035
		lowerLayerEncWidth		= 0.035
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.09
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"Via2Array-4_Enc" {
		contactCodeNumber		= 36
		cutLayer			= "via2"
		lowerLayer			= "metal2"
		upperLayer			= "metal3"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.035
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0.035
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.09
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"Via3Array-0" {
		contactCodeNumber		= 37
		cutLayer			= "via3"
		lowerLayer			= "metal3"
		upperLayer			= "metal4"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.035
		upperLayerEncHeight		= 0.035
		lowerLayerEncWidth		= 0.035
		lowerLayerEncHeight		= 0.035
		minCutSpacing			= 0.09
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"Via3Array-1" {
		contactCodeNumber		= 38
		cutLayer			= "via3"
		lowerLayer			= "metal3"
		upperLayer			= "metal4"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.035
		upperLayerEncHeight		= 0.035
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0.035
		minCutSpacing			= 0.09
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"Via3Array-2" {
		contactCodeNumber		= 39
		cutLayer			= "via3"
		lowerLayer			= "metal3"
		upperLayer			= "metal4"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.07
		cutHeight			= 0.07
		upperLayerEncWidth		= 0.035
		upperLayerEncHeight		= 0.035
		lowerLayerEncWidth		= 0.035
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.09
		unitMinResistance		= 0.005
		unitNomResistance		= 0.005
		unitMaxResistance		= 0.005
}

ContactCode	"Via4Array-0" {
		contactCodeNumber		= 40
		cutLayer			= "via4"
		lowerLayer			= "metal4"
		upperLayer			= "metal5"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.14
		cutHeight			= 0.14
		upperLayerEncWidth		= 0.13
		upperLayerEncHeight		= 0.13
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.16
		unitMinResistance		= 0.003
		unitNomResistance		= 0.003
		unitMaxResistance		= 0.003
}

ContactCode	"Via5Array-0" {
		contactCodeNumber		= 41
		cutLayer			= "via5"
		lowerLayer			= "metal5"
		upperLayer			= "metal6"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.14
		cutHeight			= 0.14
		upperLayerEncWidth		= 0.13
		upperLayerEncHeight		= 0.13
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.16
		unitMinResistance		= 0.003
		unitNomResistance		= 0.003
		unitMaxResistance		= 0.003
}
