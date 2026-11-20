
import json
import os
import numpy as np
import pandas as pd


LOCAL_DIR_R1_TRAIN = 'data/dynasent-v1.1-round01-yelp-train.jsonl'
LOCAL_DIR_R2_TRAIN = 'data/dynasent-v1.1-round02-dynabench-train.jsonl'

LOCAL_DIR_R1_VAL = 'data/dynasent-v1.1-round01-yelp-dev.jsonl'
LOCAL_DIR_R2_VAL = 'data/dynasent-v1.1-round02-dynabench-dev.jsonl'

LOCAL_DIR_R1_TEST = 'data/dynasent-v1.1-round01-yelp-test.jsonl'
LOCAL_DIR_R2_TEST = 'data/dynasent-v1.1-round02-dynabench-test.jsonl'

TERNARY_LABELS = ('positive', 'negative', 'neutral')



def load_dataset(*src_filenames, labels=None):
    data = []
    for filename in src_filenames:
        with open(filename) as f:
            for line in f:
                d = json.loads(line)
                if labels is None or d['gold_label'] in labels:
                    data.append(d)
    return data


def create_df(r1, r2):
    df = pd.DataFrame({'text' : [d['sentence'] for d in r1] + [d['sentence'] for d in r2],
                            'round': [1] * len(r1) + [2] * len(r2),
                            'label' : [d['gold_label'] for d in r1] + [d['gold_label'] for d in r2]})
    return df


