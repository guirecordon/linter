# Glamourly - If you want to glamorize anything you write on your computer, you need to get Glamourly

<br />
<p align="center">
  <a href="https://github.com/guirecordon/tic-tac-toe">
    <img src="images/microverse-logo.webp" alt="Logo" width="100" height="100">
  </a>

  <h3 align="center">Linter</h3>

  <p align="center">
    This project is a part of the Microverse Ruby curriculum
    <br />
    <a href="https://github.com/guirecordon/linter"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/guirecordon/linter/issues">Report Bug</a>
    ·
    <a href="https://github.com/guirecordon/linter/issues">Request Feature</a>
  </p>
</p>

## Usage

1. Run the line below in your terminal to clone this repo to your computer <br>
    `git clone git@github.com:guirecordon/linter.git`

2. When you open the repo, you will see a txt file called user.txt.
   Remove the example text and paste your own text (email, essay, etc) into the body of the user.txt file 

3. From the command line, from the root directory (the main linter repo folder), run the following:
   `ruby bin/main.rb`

## Development

Glamourly is designed to help users improve their writing skills by expanding their vocabulary.

I got the idea after I came across this vocabulary diagram I found online: 

<img src="images/increase_your_vocabulary_diagram.jpg">

I designated the words inside of the innermost circle level 1. They should be avoided at all costs. The user gets a red linter "error" if they try to use one of those.

<img src="images/level1-error.png">

I designated the words in the middle circle level 2. Because they are already more descriptive adjectives, instead of a red linter "error", the user is simply asked to consider replacing them with even more sophisticated options. The user is then prompted with a couple of suggestions taken from words inside of the outer layer of the diagram above.

<img src="images/level2-error.png">

The two last lines display the sum of occurrences of level 1 and level 2 errors. 

<img src="images/summary.png">

At this point, the user is faced with humorous linter messages that suggest the assassination of the language and attempts to bore the readers. It is supposed to be burlesque, no offense is intended. (I hope you noticed I used the word "burlesque"—thanks Glamourly for improving my writing ;D)

Another reason why the linter errors sound purposedly dramatic is to pick up on the seemingly overdramatic nature of linter error names that pop up in one's command line (things like 'fatal', 'offenses', etc) 

<img src="images/hemmingway.png">

Lastly, if the user manages to avoid all of level 1 and 2 words, he or she is granted the "Hemmingway" badge and is greeted for a job well done.


## Contributing


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
