require 'dotenv'

config = <<EOF
language: ruby
rvm:
- 1.9.3
after_success:
- "[ \\"$TRAVIS_BRANCH\\" == \\"master\\" ] && curl -v -X DELETE -u $GITHUB_USER:$GITHUB_PASSWORD \\"https://api.github.com/repos/$TRAVIS_REPO_SLUG/git/refs/tags/CURRENT\\""
- "[ \\"$TRAVIS_BRANCH\\" == \\"master\\" ] && curl -v -X POST -d '{\\"ref\\":\\"refs/tags/CURRENT\\",\\"sha\\":\\"'$TRAVIS_COMMIT'\\"}'  --header \\"Content-Type:application/json\\" -u $GITHUB_USER:$GITHUB_PASSWORD \\"https://api.github.com/repos/$TRAVIS_REPO_SLUG/git/refs\\""
branches:
  except:
  - CURRENT
notifications:
  irc:
    channels:
    - irc.freenode.net#theodi
    template:
    - "%{repository} %{branch} - %{message} %{build_url}"
    on_success: change
    on_failure: always
EOF

File.open('.travis.yml', 'w') do |file|
  file.write config
end

env = Dotenv.load

env.each_pair do |key, value|
  `travis encrypt #{key}=#{value} --add`
end