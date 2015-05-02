## Is today a German Holiday?
This simple Giant Swarm application answers that question, and nothing more.

### Install
Checkout the code by doing the following:

    https://github.com/giantswarm/german-holiday.git
    
Change into the directory:

    cd german-holiday
    
### Run Locally
Run the application locally by doing the following:

    make docker-run
    
You can check if it's running by using this URL in your browser:

    http://192.168.59.103:5000/
    
### Push It to Giant Swarm
Now you can deploy your application:

    make swarm-up
    
You can now view your application status by doing a:

    swarm status
    
When the app is running, access it at:

    http://<username>-holiday.gigantic.io
    
### Is it a German Holiday?
Probably.
