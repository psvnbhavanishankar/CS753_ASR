# CS753_ASR

Made some changes to original ConST to make it work. Changes are made in ConST/ConST/scripts/train_en2x.sh and ConST/fairseq/tasks/speech_to_text_triplet_with_extra_mt.py . These changes are essential for ConST to work, with latest fairseq.


Tweaks and Corresponding results are mentioned in this doc: [Tweaks and Results](https://docs.google.com/document/d/1fcuTXIInNOBO4xkz0fIZ36wIWW10BGcI-DeCfYFVWPs/edit?usp=sharing)

Please follow the instructions to install requirements and also download data from the original ConST repository. [ConST](https://github.com/ReneeYe/ConST)

En-De MuST-C data is approximately 80GB, and training with approx 30GB GPU takes a week.
The tweaks and results were using roughly 1/10 th of the data, approx. 25000 instances. This training would take atleast a day with the given GPU memory.
