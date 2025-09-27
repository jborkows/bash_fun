source conf.sh
stat $TEST_FILE | tee $DIFF_PREFIX."$INDEX" 
sleep 1
