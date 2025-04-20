source ../utils/display.sh
stepTitle Working with input arguments expansion

subTitle Naive expansion 
displayFile first.sh
evalFunction "bash first.sh foo 'bar zoo' 'ooo  xxx'"

subTitle Naive expansion - adding quotas
displayFile first_all_in_quota.sh
evalFunction "bash first_all_in_quota.sh foo 'bar zoo' 'ooo  xxx'"

subTitle Fixed
displayFile fixed.sh
evalFunction "bash fixed.sh foo 'bar zoo' 'ooo  xxx'"
