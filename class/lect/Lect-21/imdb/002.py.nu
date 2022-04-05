  1: import os
  2: 
  3: train_dir = "./aclImdb/train"
  4: sample_file = os.path.join(train_dir, 'pos/1181_9.txt')
  5: with open(sample_file) as f:
  6:   print(f.read())
