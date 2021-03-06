scripts
stEloi

		StatisticalScenario new 
		named: #ScenarioA;
		coordinates: (46.1630 @ -1.1389) -> (46.1676 @ -1.1194);
		"(46.16352961038194 @ -1.1302614212036133) -> (46.166851083597415 @ -1.1267745494842527);"
		totalNumberOfBuildings: #determinedByMap; "20"
		totalNumberOfPopulation: 3751;
		totalNumberOfResidences: 2166;
		residencePercentages:{  
			#AppartmentBlockTypeA.
			#AppartmentBlockTypeB.
			#HouseTypeA
		} % { 30.0 . 20.0 . 50.0 }; 
		climateProfile: #UrbanClimateA;
		trendsProfile: #FrenchConsumptionTrends;
		weightsProfile: #UrbanHypothesisA;
		years: 1.
		
		
	UrbanProfileForAppartmentBlock new
		named: #AppartmentBlockTypeA;
		dimensions: (2 floors: 1 corridors: 2 appts);
		appartmentPercentages: {  
			#AppartmentTypeA.
			#AppartmentTypeB.
		} % { 20.0 . 80.0 }.
		
	UrbanProfileForAppartmentBlock new
		named: #AppartmentBlockTypeB;
		dimensions: (2 floors: 1 corridors: 3 appts);
		appartmentPercentages: {  
			#AppartmentTypeA.
			#AppartmentTypeB.
		} % { 50.0 . 50.0 }.
		
	UrbanProfileForAppartment new 
		named: #AppartmentTypeA;
		category: DPEB;
		surface: [50.0 -> 80.0];
		occupantClass: {SingleAdult . Couple . Family} % {40.0 . 30.0 . 30.0};
		numberOfChildren: [1 -> 3]; "valid only for family"
		income: (72000.0 ~ 10000) | [36000.0 -> 100000];
		awareness: {ConsumptionAware . ConsumptionUnaware} % {40.0 . 60.0};
		ownership: true % 20.
	
	UrbanProfileForAppartment new 
		named: #AppartmentTypeB;
		category: DPEC;
		surface: [80.0 -> 110];
		occupantClass: {SingleAdult . Couple . Family} % {40.0 . 30.0. 30.0};
		numberOfChildren: [0 -> 3]; "valid only for family"
		income: (92000.0 ~ 15000) | [66000.0 -> 180000];
		awareness: {ConsumptionAware . ConsumptionUnaware} % {10.0 . 90.0};
		ownership: true % 10.
		
	UrbanProfileForHouse new 
		named: #HouseTypeA;
		category: DPED;
		surface: [90.0 -> 130.0];
		exposure: (5 ~ 1) | [0 -> 5]; 
		occupantClass: {SingleAdult . Couple . Family} % {70.0 . 20.0. 10.0};
		numberOfChildren: [1 -> 3]; "valid only for family"
		income: (72000.0 ~ 10000) | [36000.0 -> 80000];
		awareness: {ConsumptionAware . ConsumptionUnaware} % {15.0 . 85.0};
		ownership: true % 60.
		
		ClimateProfile new 
		named: #UrbanClimateA; 
		medianTemperature: (13.25 ~ 1.5) | [0 -> 32]; 
		seasonalTemperatureVariation: 2.0;
		medianHumidity: (81.16 ~ 4.05) | [0 -> 100];
		seasonalHumidityVariation: 2. 
		
	TrendsProfile new
		named: #FrenchConsumptionTrends;
		seasonal: { 
			#Winter -> 1. 
			#Spring -> 1. 
			#Fall -> 1. 
			#Summer -> 1
		};	daily: {  
			#Monday -> 0.8.
			#Tuesday -> 0.8.
			#Wednesday -> 0.8.
			#Thursday -> 0.8.
			#Friday -> 0.9.
			#Saturday -> 1.
			#Sunday -> 1.
		}; hourly: {  
			#Midnight -> { 0.2 . 0.2 . 0.2 . 0.2 . 0.2 . 0.2 . 0.2 }.
			#Morning -> { 1 . 1 . 1 . 1 .  1 .  1 }.
			#Afternoon -> { 0.5 . 0.5 . 0.5 . 0.5 . 0.5 }.
			#Night -> { 1 . 1 . 1 . 1 . 1 . 1 }
		}.
		
	WeightsProfile new
		named: #UrbanHypothesisA;
		season: [ -0.1 -> 0.1 ];
		day: [ -0.01 -> 0.01 ];
		hour: [ -0.1 -> 0.1 ];
		exposure: [ -0.1 -> 0.1 ]; 
		occupants: [ 0 -> 0.05 ]; 
		income: [ -0.05 -> 0.05  ]; 
		ownership: [ -0.05 -> 0.05 ]; 
		awareness: [ -0.1 -> 0.1 ]; 
		temperature: [ -0.4 -> 0.4 ]; 
		humidity: [ -0.09 ->  0.04 ]. 