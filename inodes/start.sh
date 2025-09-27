source conf.sh
rm -r $TEST_FILE 2> /dev/null || true
rm -r $DIFF_PREFIX* 2> /dev/null || true
touch $TEST_FILE
