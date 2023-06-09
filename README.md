# CS753_ASR - ConST (Cross-modal Contrastive Learning for Speech Translation)

Tweaks and Corresponding results are mentioned in this doc: [Tweaks and Results](https://docs.google.com/document/d/1fcuTXIInNOBO4xkz0fIZ36wIWW10BGcI-DeCfYFVWPs/edit?usp=sharing)

***********To reproduce the original results, made some changes to original ConST to make it work. Changes are made in ConST/ConST/scripts/train_en2x.sh and ConST/fairseq/tasks/speech_to_text_triplet_with_extra_mt.py . These changes are essential for ConST to work, with latest versions of pytorch and fairseq.***********


Please follow the instructions to install requirements and also download data from the original ConST repository. [ConST](https://github.com/ReneeYe/ConST)

MuST-C Dataset is approx. 1TB, and En-De MuST-C data is approximately 80GB, and training with approx 30GB GPU takes atleast a week.
The tweaks and results were using roughly 1/10 th of the data, approx. 25000 instances. This training would take atleast a day with the given GPU memory.

After downloading the data, please use bpe.sh if you want to use Byte Pair Encoding.

modified_train_scipt_1.sh contains the training script with contrastive loss applied both before and after the Transformer Encoder.
modified_train_scipt_2.sh contains the training script with modified number of attention heads and Transformer Encoder-Decoder layers.

The contrastive loss is applied before the transformer encoder and we hypothesize that augumenting another contrastive loss after the Transformer Encoder (and before the Transformer Decoder) would be helpful to get the high level speech and text representations near to each other, and that would improve the performanace.


