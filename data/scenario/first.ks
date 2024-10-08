 *start
 *title
 ;メッセージレイヤを非表示にしておく
 @layopt layer=message0 visible=false

 ;背景画像を設定
 [image layer="base" page="fore" storage=title.png]
 ;[image layer=1 storage=title.png visible=true x=630 y=70]

 [button x=650 y=600 graphic="start_button.png" target=*first]

 ;[button x=900 y=600 graphic="title/button_load.png" target=*loadmenu]

 [s]

 *loadmenu
 [cm]
 [showload]

 [jump target=*title]
 [s]

 *first
 [cm]
 [freeimage layer=1]
 ;背景画像の切り替え実行
 [bg storage=hune_hune.png time=1000]
 [position width="1570" top="600" height="300"]
 @layopt layer=message0 visible=true
 [cm]

 *touzyou
 ;一人目のキャラクター登場
 [chara_new name="risu" storage="chara/risu/normal.png" jname="りす？"]
 ;[chara_show name="risu"]
 敵の船を自分もろとも破壊して、味方の船を逃がそう！[l][r]
 [bg storage=sennai.png time=1000]
 [chara_new name="kuma" storage="chara/kuma/bakuhakuma.png" jname="おっさんくま"]
 [chara_show name="kuma"]
 [cm]
 ここは敵の戦艦の火薬庫だ。[l][r]
 俺はおっさんくま。[l][r]
 仲間の乗った船を逃がすために、現在敵の船に潜入している。[l][r]
 [cm]

 ドタドタ。[l][r]
 敵の足音が聞こえる。[l][r]
 敵は俺を探しているようだ。[l][r]
 早く爆破しなければ...。[l][r]
 [cm]

 この船を爆破すれば、敵は仲間に追い付けないだろう。[l][r]
 俺の命なんて無くなってもいい。所詮ここで絶える命だったということだ。[l][r]
 [bg storage=donobakudannisu.png time=1000]
 [chara_hide name="kuma"]
 [cm]

 ;爆弾選択
 さて、どの爆弾を爆破させようか。[l][r]
 [link target=*aka_no_bakudan]【１】赤の爆弾[endlink][r]
 [link target=*ao_no_bakudan]【２】青の爆弾[endlink][r]
 [link target=*ki_no_bakudan] 【３】黄の爆弾[endlink][r] 
 [s]

 ;赤の爆弾ルート
 *aka_no_bakudan
 [cm]
 赤の爆弾を選択[l][r]
 [bg storage=aka_kidou.png time=1000]
 [cm]
 赤の爆弾が爆発した...![l][r]
 [bg storage=saraba.png time=1000]
 [cm]
 仲間のために、この船の者には死んでもらおう。[l][r]

 @jump target=*bakuhatu

 ;青の爆弾ルート1
 *ao_no_bakudan
 [cm]
 青の爆弾を選択[l][r]
 [bg storage=ao_kidou.png time=1000]
 [cm]
 ...。[l][r]
 [bg storage=ao_not_kidou.png time=1000]
 @jump target=*no_bakuhatu

 ;黄色の爆弾ルート
 *ki_no_bakudan
 [cm]
 黄の爆弾を選択[l][r]
 [bg storage="ki_kidou.png" time=1000]
 爆発？[l][r]


 @jump target=*title

 ;----------------------------------------
 ;青の爆弾ルート2
 *no_bakuhatu
 [cm]
 青の爆弾を起動したが、爆発しなかった。[l][r]
 [bg storage="kuma_hakken.png" time=1000]
 [cm]
 見つけたぞ、こっちにおっさんくまがいる！[l][r]
 [cm]
 見つかっちまったか。[l] [r]
 ドガッ[l][r]
 [cm]
 [bg storage="teki_syurai.png" time=1000]
 ！！[l][r]
 [mask effect="fadeInDownBig" time=2000]
 [bg storage="kuma_utareru.png" time=500]
 [mask_off]
 [cm]
 くまは撃たれてしまった...。[l][r]
 .[l]
 .[l]
 .[l]
 [cm]
 撃たれてしまったが、問題ない。[l][r]
 [cm]
 私はただでは死なんぞ！[l][r]
 [cm]
 [bg storage="katya.png" time=500]
 くまは銃を取り出した...![l][r]
 [mask effect="fadeInDownBig" time=500]
 [bg storage="teki_taosu.png" time=100]
 [mask_off]
 [cm]
 敵「ウッ！」[l][r]
 [cm]
 [mask effect="fadeInDownBig" time=1000]
 [bg storage="kuma_taoreteru.png" time=500]
 [mask_off]
 ...。[l][r]
 [bg storage="bakudan_korokoro.png" time=1000]
 くま「ん？」[l][r]
 [cm]
 [bg storage="bakudan_motu.png" time=1000]
 これは...![l][r]
 この爆弾を使えば、この船を爆破できる。[l][r]
 仲間のために死んでもらうぜ。[l][r]

 @jump target=*bakuhatu
 
 ;-----------------------------------------

 *bakuhatu
 [bg storage="hune_bakuhatu.png" time=1000]
 [quake count=5 time=300 hmax=20]
 [cm]
 敵の船はおっさんくま諸共爆発した。[l][r]

 *bakuhatu_end
 [cm]
 無事、敵の船は破壊できた。[l][r]
 おっさんくまは仲間のために散ったのだ。[l][r]
 @jump target=*title

 *no_bakuhatu_end


 *end