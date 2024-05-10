# beating PERUCHAMPS

## Setup:

First install [chocolatey](https://chocolatey.org/install)
Then run `choco install make`
when all is installed, open a command prompt in the root folder and run the following command tasks:
* `make install` <- It will create an env called _breitong_ using the requeriments.txt file and install [pre-commit](https://pre-commit.com)
* `conda activate breitong`

__If you are using a new library, pleas do not forget add it to requeriments.txt__


Thats all

### Some Instructions:

-------
If yo wanna use notebooks:
run:
`kedro run jupyter notebook` or `kedro run jupyter lab`
The connect to kernel and put your toke from you favorite IDE, else, use it directly from web.

--------

If you wanna make a commit, please first run:
`make lint`

---------

Remember: No pipeline is implemented yet


![lalalala](https://i.pinimg.com/originals/a2/25/af/a225af917c429eab61d02bf2d3a3136b.gif)
