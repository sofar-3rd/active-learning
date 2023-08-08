
C=0.1

START="2013-01"
END="2018-12"
TS=$(date "+%m.%d-%H.%M.%S")

nohup python -u relabel.py	                                \
            --data gen_apigraph_drebin                      \
            --mdate 20230517                                \
            --benign_zero                                   \
            --train_start 2012-01                           \
            --train_end 2012-12                             \
            --test_start ${START}                           \
            --test_end ${END}                               \
            --classifier svm                                \
            --svm-c ${C}                                    \
            --result experiments/020_revision/svm_results/plain_apigraph_svmc${C}_test_${START}_${END}.csv \
            --log_path experiments/020_revision/svm_results/plain_apigraph_svmc${C}_test_${START}_${END}_${TS}.log \
            >> experiments/020_revision/svm_results/plain_apigraph_svmc${C}_test_${START}_${END}_${TS}.log &
        