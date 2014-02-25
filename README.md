Travisify
---------

Creates a .travis.yml file, including CURRENT tagging. Also, automatically loads from .env and encrypts into the travis.yml file.

Usage
-----

    cd /path/to/your_project
    /path/to/travisify
    
You can also specify services to include (see http://docs.travis-ci.com/user/database-setup/ for a full list) as a comma seperated list like so:

    /path/to/travisify --services x,y,z

You can also create an alias for travisify by adding a line to your bash profile like so:

    echo alias travisify="/path/to/travisify" >> ~/.bash_profile

License
-------

This code is open source under the MIT license. See the LICENSE.md file for 
full details.

