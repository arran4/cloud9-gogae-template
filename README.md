# GOGAE on Cloud9

Using google app engine on Cloud9 currenlty requires you to compile or download
Python 2.7 and PIL in your workspace. You can then use the terminal to start,
stop and deploy google app engine applications.

To make this step easier we created an install script and this GAE project
template.


## Installation

You have two options to add GAE support.

1. Add GAE support to an exsiting Cloud9 workspace
2. Create a new GAE application based on this project template

### Add GAE support to your existing Cloud9 workspace

You can easily add GAE support to any Cloud9 project by running the compile script
from this project template:

1. Open a terminal window
2. Execute the compile script (this will take a few minutes):
```
curl https://raw.github.com/arran4/cloud9-gae-template/master/compile-gae.sh | bash
```

### Create a new GAE application based on this project template

You can also create a new GAE application by simply cloning this template. This
is convenient because it already includes a small hello world app to immediately 
test it.

1. Got to your Cloud9 dashboard <https://c9.io/dashboard.html>
2. Select `create new workspace` -> `clone from url`
3. Use `git://github.com/arran4/cloud9-gae-template.git` as URL
4. Open the project
5. In the project open a new Terminal window
6. Execute the compile script (this will take a few minutes)
```
./compile-gae.sh
```

## Run the app

Once everything is compiled and installed you can use all gae python scripts in 
the terminal. However to run the app server locally you need to make sure that
it is listening on the Cloud9 port and ip address so our proxy can find it.

```
dev_appserver.py -a $IP -p $PORT .
```
