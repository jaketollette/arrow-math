## Overview

This is a small application written in ruby that does calculations on kinetic energy, momentum, and the types of game that can successfully be taken with that system.

## Code Example

There are only two classes in the application (not including the tests). Arrow and Bow. The Arrow class takes an arrow's weight in grains and a bow object (or any object that responds to a "speed" method). The bow has only one attribute which is "speed" in feet per second. Most archer's know the speed of their bow and the weight of their arrows. Given a bow speed and arrow weight, you can calculate the KE and momentum. The type of game that can be taken is based off of the KE and a chart found on Carbon Arrow University.

```ruby
  bow = Bow.new(250)
  arrow = Arrow.new(400, bow)

  arrow.kinetic_energy
  arrow.momentum
  arrow.game_type

```

## Motivation

I wrote this application as a test and a learning experience. I'm an avid hunter, specifically a bowhunter, and so I use the math all the time. I'm also learning more about OOD and wanted to try a small project that uses single responsibilty and dependency injection. I also wanted more practice with writing tests. So... That's why the project exists.

## Installation

Just clone or obtain however you'd like, open a terminal window in the project's directory, and type ```ruby interface.rb```. You'll be prompted by the interface to run the script.

## License

Do whatever you want with it.