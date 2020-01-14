#!/usr/bin/env python
# coding: utf-8

import pandas as pd
import sys

# It would be more robust to use argparse or click, but we want this to be simple
if len(sys.argv) < 3:
    sys.exit("Please invoke with two arguments: input and output paths")

input_path = sys.argv[1]
output_path = sys.argv[2]


# Read in the data
df = pd.read_csv(input_path)
df.head()


# Select only flights to Austin (AUS)
df = df[df['DEST'] == 'DFW']
df.head()


# Save the result
df.to_csv(output_path, index=False)
