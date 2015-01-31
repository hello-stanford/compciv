mkdir -p ./data-hold/{names-by-state,names-nationwide} 

cd data-hold/names-by-state && \
   curl -O http://stash.compciv.org/ssa_baby_names/namesbystate.zip && \
   unzip -o namesbystate.zip && rm namesbystate.zip && cd ../..

cd data-hold/names-nationwide && \
  curl -O http://stash.compciv.org/ssa_baby_names/names.zip && \
  unzip -o names.zip && rm names.zip && cd ../..

