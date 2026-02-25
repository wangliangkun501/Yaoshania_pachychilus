python3 -m jcvi.compara.catalog ortholog Yp Bk --no_strip_names
python3 -m jcvi.compara.synteny screen --minspan=30 --simple Yp.Bk.anchors Yp.Bk.anchors.new
python3 -m jcvi.graphics.karyotype seqids2 layout2
