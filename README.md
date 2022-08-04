# LoopMyUndervloting
### This undervolt file __infinitely__ repeat checking undervolt status, and applying it.

## How to use?
- First, put the directory named ["UnderVolt"](https://github.com/ForestHouse2316/LoopMyUndervloting/tree/main/UnderVolt) into `C:\`\
  So the basic path will be `C:\UnderVolt\`
- Open the file [UnderVolt.ps1](https://github.com/ForestHouse2316/LoopMyUndervloting/blob/main/UnderVolt/UnderVolt.ps1) and edit the offset values. (Green box)\
  Check out the comments written in the file to know the way to set those values.\
  These are the IDs of the setting item.\
  _(34 = CoreOffset, 83 = iGPU, 102 = CoreIccMax, 106 = CacheIccMax, 47 & 48 = TurboBoost(Short)PowerMax, 66 = TurboBoostPowerTimeWindow)_
![Failed to load](https://github.com/ForestHouse2316/LoopMyUndervloting/blob/main/Document/ps1%20offset.png)
- Press `Win` + `R` to open execute window, and type `taskschd.msc`. Don't forget to press Enter!
- Load the schedule preset file [UnderVolt.xml](https://github.com/ForestHouse2316/LoopMyUndervloting/blob/main/UnderVolt/UnderVolt.xml)\
  Or you can make shedule yourself. Just add trigger "log-on" and make it execute [C:\UnderVolt\UnderVolt.vbs](https://github.com/ForestHouse2316/LoopMyUndervloting/blob/main/UnderVolt/UnderVolt.vbs)\
  And make sure that this schedule should started __only once__. Set the options not to executed several times.

## Files

### [Initialize.ps1](https://github.com/ForestHouse2316/LoopMyUndervloting/blob/main/UnderVolt/Initialize.ps1)
Reset all values (changed by UnderVolt.ps1) to 0\
> _(Voltage offsets only)_

### [UnderVolt.ps1](https://github.com/ForestHouse2316/LoopMyUndervloting/blob/main/UnderVolt/UnderVolt.ps1)
Undervolt your computer using powershell

### [UnderVolt.vbs](https://github.com/ForestHouse2316/LoopMyUndervloting/blob/main/UnderVolt/UnderVolt.vbs)
Hide the powershell window when it's executed by task scheduler

### [UnderVolt.xml](https://github.com/ForestHouse2316/LoopMyUndervloting/blob/main/UnderVolt/UnderVolt.xml)
Preset file of task scheduler
