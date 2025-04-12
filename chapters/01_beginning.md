# Leaving the Basic Behind

```{note}
# Pragmatic Python Package Managers

Forget juggling [`poetry`](https://python-poetry.org/) and [`pyenv`](https://github.com/pyenv/pyenv). The future is [`uv`](https://docs.astral.sh/uv/), a complete, pragmatic, all-in-one solution for Python’s ecosystem. One ring to rule them all. If your organization is bound to the [`conda`](https://docs.conda.io/) ecosystem, go for [`pixi`](https://pixi.sh/).

Stick with `uv` or `pixi`, and you’ll thank me later.
```

#### Structure Like You Mean It 
> Friends Don’t Let Friends Mess with System Paths
  
If you are battling circular imports or shoving `sys.path` hack to make your code run, congrats—you are slinging mediocre joker code—pure clown nonsense, project structure so tangled they would make a Dane yeet their Carlsberg.

This chapter is about structure: code and project, built for ETC—easy to change, test, onboard. Why? Control. A pragmatic designed system keeps bugs, delays, and costs from screwing your reputation and your company, a distance. Like milk on the fridge door or the trash bin under the kitchen's sink, everything ought to be where it belongs—because losing control’s not an option.

##### 1.1 Structure is Your Danish Kontrol

You are in WC, our favourite quiet office room,  picture this, the toilet paper is across the room. You reach for it—shit gets messy, literally. That is code without structure. In a Danish flat, the bin is under the kitchen sink, milk is on the fridge door, butter is in its slot—order kills chaos. Danes are busy being happy. No time for messy.

A Python project is no different. Misplace a file, and you are out of control: bugs creep, shipping stalls, your reputation tanks, production costs skyrocket. A pragmatic project structure means it is ETC—easy to change, test, onboard. It puts you in charge. No hunting, no cursing. 

Use `uv init --lib` and two `SOLID` principles—`Single Responsibility (S)` and `Dependency Inversion (D)`—to craft a system as tight as a Copenhagen kitchen. Yes, you heard me correct, principles also applies to our project structure as much as they apply to the code we write.


#### Commit or Quit: No Version Control, No Mercy 
> Friends Don’t Let Friends Skip Git

Coming ...
