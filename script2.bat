
java -version
embulk example test
echo "test"
embulk guess test\seed.yml -o config.yml
embulk preview config.yml
embulk run config.yml
