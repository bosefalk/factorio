

IronGearWheel <- function(s = 1){
  iron = 2
  copper = 0
  return(data.frame("iron" = iron*s, "copper" = copper*s))
}

Pipe <- function(s = 1){
  iron = 1
  copper = 0
  return(data.frame("iron" = iron*s, "copper" = copper*s))
}

SciencePack1 <- function(s = 1){
  
  req = IronGearWheel()
  iron = req['iron']
  copper = req['copper']
  
  iron = iron +0
  copper = copper + 1
  return(data.frame("iron" = iron*s, "copper" = copper*s))
}

CopperCable <- function(s = 1){
  
  iron = 0
  copper = 1
  return(data.frame("iron" = iron*s, "copper" = copper*s))
}

ElectronicCircuit <- function(s = 1){
  
  req = 3 * CopperCable()
  iron = req['iron']
  copper = req['copper']
  
  iron = iron + 1
  copper = copper + 0
  return(data.frame("iron" = iron*s, "copper" = copper*s))
}

Inserter <- function(s = 1){
  
  req = ElectronicCircuit() + IronGearWheel()
  iron = req['iron']
  copper = req['copper']
  
  iron = iron + 1
  copper = copper + 0
  return(data.frame("iron" = iron*s, "copper" = copper*s))

}

TransportBelt <- function(s = 1){
  
  req = IronGearWheel()
  iron = req['iron']
  copper = req['copper']
  
  iron = iron + 1
  copper = copper + 0
  return(data.frame("iron" = iron*s, "copper" = copper*s))
}

SciencePack2 <- function(s = 1){
  
  req = Inserter() + TransportBelt()
  iron = req['iron']
  copper = req['copper']
  
  iron = iron + 0
  copper = copper + 0
  return(data.frame("iron" = iron*s, "copper" = copper*s))

}

SciencePack3 <- function(s = 1){
  
  req = AdvancedCircuit() + EngineUnit() + ElectricMiningDrill()
  iron = req['iron']
  copper = req['copper']
  
  iron = iron + 0
  copper = copper + 0
  return(data.frame("iron" = iron*s, "copper" = copper*s))
  
}

AdvancedCircuit <- function(s = 1){
  
  req = 2 * ElectronicCircuit() + 4 * CopperCable()
  iron = req['iron']
  copper = req['copper']
  
  iron = iron + 0
  copper = copper + 0
  return(data.frame("iron" = iron*s, "copper" = copper*s))
  
}

EngineUnit <- function(s = 1){
  
  req = IronGearWheel() + 2 * Pipe()
  iron = req['iron']
  copper = req['copper']
  
  iron = iron + 0
  copper = copper + 0
  return(data.frame("iron" = iron*s, "copper" = copper*s))
  
}

ElectricMiningDrill <- function(s = 1){
  
  req = 3 * ElectronicCircuit() + 5*IronGearWheel()
  iron = req['iron']
  copper = req['copper']
  
  iron = iron + 10
  copper = copper + 0
  return(data.frame("iron" = iron*s, "copper" = copper*s))
  
}


