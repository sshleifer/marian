MD=$HOME/'marian/opus_en_fr'
MODEL_PATH=$MD/'opus.bpe32k-bpe32k.transformer.model1.npz.best-perplexity.npz'
VOCAB_YAML='opus.bpe32k-bpe32k.vocab.yml'
run_en_fr () {
    build/marian-decoder -m $MODEL_PATH -v \
    $MD/$VOCAB_YAML $MD/$VOCAB_YAML \
    #--log-level trace \
    <<< $1 #| \
    #    $MD/postprocess.sh
}