# Scoring
An application to analyse knowledge spread on technologies in a team.

Imaging you want to understand strong and developmental areas within a group
of people. This tool can be used to analyse a teams knowlegde.

## INPUT
Fill details in the file "input.txt". Every line start with a technologie,
and appends a score per person. Higher is better. For example like this:

    Docker 1 3 5
    Vim    3 2 1
    HTML   5 4 5

This means:
- There are three people in the team, because there are 3 columns.
- There are three technologies being analysed, because there are 3 lines.
- Knowledge on Docker is varying from low (1) to higher (5).
- Knowlege on HTML is pretty high.

## LIMITATIONS
Please make sure:
- Every line starts with a "technology".
- There are at least two lines.
- Every technology is followed by two or more scores, separated by a
  (white)space.
- A technology is one word.
- A score is one number, without periods or commas.

More samples make a more interesting result, I would suggest listing seven or
more technologies, and four or more scores/people.

## ANALYSE
You can hook up a commit to CI, travis-ci.yml has been provided.
You can also manually run the scripts. Using Docker is the most logical:
     
    docker tag $(docker build . -q) scoring
    docker run scoring

## OUTPUT
An example output can look like this:

    # Analysis of technology knowledge.

    Our team can clearly work with Git.
    We all feel insecure about Python.
    We are most similarly knowledgable on Puppet.
    Our expertise level differs most for Packer.
    The team may miss some knowledge about Packer.
    Not everybody in the team has knowledge on Packer.

## PRESENTING
The output is displayed in MarkDown format, you can use reveal-md to
present the output, or simply "cat" it. It's quite readable.
