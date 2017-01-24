# README
This project answers the following questions

# Contents
- [Question 1 - proudest achievement](#question-1)
- [Question 2 - interesting technical article](#question-2)
- [Question 3 - flatten arrays](#question-3)
- [Question 4 - create a rugby squad](#question-4)

## Question 1
**What's your proudest achievement? Something you've done in work, some random side project, code or otherwise. Just make sure you explain what it is that makes you so proud of it.**

From a professional point of view my proudest achievement is building a tool that enabled our designer to brand our public facing software. The previous system for branding the user interface of the software was error prone and time consuming. There was a need to improved this.

With a rewrite of the public facing software it was clear that we would need an improved system for branding the software for each of our clients. The old system involved cutting and pasting HTML and CSS into forms. This worked but needed a rethink.

I built a new app specifically for use by our in house designer. I was working on the client facing application at the same time so I was very familiar with the HTML and CSS. The new branding application had multiple fields for setting CSS properties for borders, background images and colours. There were colour pickers for easy selection of colours. Easy image upload fields for backgrounds.

The development was done iteratively. I worked very closely with the designers to ensure that the application met their needs. This was a rewarding process as we discovered ways of making it more useful.

The application allowed the designers to copy existing designs between customer accounts. This was something that the old system could not do. It copied all the CSS properties and made copies of all images stored on S3. This made it very easy for the designer to design on test accounts and get design approval and easily roll the design out on the client's production account.

From a coding point of view the thing I like best about this is the the way the various colours are generated from a single brand colour. The design of the client facing application has various elements that are tints and shaded of the main colour. I used the SASS functions to create these colours automatically. Ultimately all the properties were fed into an ERB that generated the required CSS file for each client account. That CSS file was then cached until the next time the brand was changed.

The application cut the time for creating a brand down from 4 hours to around 1 hour. This freed our designer up for other work. This also had a positive effect on sales as demo brands could be created more easily for prospective clients.

## Question 2
**What's the most interesting technical article you've read recently? What did you like about it and why should we take a look at it?**

It’s always your fault - David Heinemeier Hansson

https://m.signalvnoise.com/its-always-your-fault-43bbf22ad683#.c2crue65r

This is a short little article that made me think. On some occasions when things go wrong I have seen blame being thrown around. People panic and worry about their job security so I guess this is understandable. I find this very unproductive. A culture of blame can make the work environment very unpleasant.

I find that finding the problem and working together to find a solution more productive. Once that is done it is important to figure out how to stop it happening again. For example if a bug gets into production is it the fault of the programmer or is there a problem with inadequate testing.

The article says you should try and find out where you are to blame. To think about what you could have done better to avoid the problem. If you are part of a system that failed what changes to the system can you make eliminate the issue. If it's not your code should there be more code reviews or more automated testing and is there something you can do to make this happen.

This kind of introspection is good. Asking the question "what could I have done better?" can result in big improvements.

## Question 3
**Write some code that will flatten an array of arbitrarily nested arrays of integers into a flat array of integers. e.g. `[[1,2,[3]],4]` -> `[1,2,3,4]`. This is an opportunity to show us your understanding of computer science fundamentals.**

This is implemented in the arrays_controller in this project. I have implemented a private method called flatten_array. This takes an array as a parameter and returns a flattened array. The method is recursive. This enables it to deal with any level of nesting. To see it in action run the Rails app and go to http://localhost:3000/arrays

I have added some tests for this in spec/controllers/arrays_controller_spec.rb

## Question 4
**Given a file (`rugby_athletes.json` in this directory), containing a JSON encoded list of Squads and Athletes, plus a squad ID, output an entirely new squad of 15 for a rugby team using the following criteria
  - No players in the team should be injured
  - The team should be a valid Rugby Union team - (2 props, 1 hooker, 2 locks, 2 flankers, 1 Number Eight, 1 Scrum Half, 1 Out Half, 2 Centres, 2 Wingers, 1 Full Back)
  - The output should contain at least the following - squad name, squad ID and a list of the players with their position, eg 'prop - Colm Doyle'**

This is implemented in the squads_controller in this project. There is a private method that takes an array hashes containing all the athletes. It removes the injured players. Based on valid_squad hash which defines how many players of each type should be on a team it finds the correct number of players of each position to make up a full team. It currently takes the first players for each position. Therefore the team will always be the same.

The squad ID is calculated from the largest squad_id + 1. If there was a database for this app this would obviously be automatically generated.

This could be randomized or other criteria could be used like the last_played timestamp could be used.  To see it in action run the Rails app and go to http://localhost:3000/squads

I have added some tests for this in spec/controllers/squads_controller_spec.rb
