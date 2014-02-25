Travisify
---------

Creates a .travis.yml file, including CURRENT tagging. Also, automatically loads from .env and encrypts into the travis.yml file.

Usage
-----

    git clone git@github.com:theodi/travisify.git
    cd travisify
    gem install travisify.gem
    cd /path/to/your_project
    travisify
    
(We'll eventually get this published to Rubygems to make this process a bit more frictionless)
    
You can also specify services to include (see http://docs.travis-ci.com/user/database-setup/ for a full list) as a comma seperated list like so:

    travisify --services x,y,z
    
Travisify will also try and pick up the current ruby version from rvm, but you can specify additional ruby versions to test again like so:

    travisify --rubies x,y,z
    
(See http://docs.travis-ci.com/user/ci-environment/#Ruby-versions-implementations for supported versions)

License
-------

This code is open source under the MIT license. See the LICENSE.md file for 
full details.

