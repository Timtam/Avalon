require('pairsbykeys')
function stations_getspeedwalksbyroomid(roomid)
rettbl={}
for name,id in pairsByKeys(stations) do
if id==roomid then
rettbl[#rettbl+1]=name
end
end
return rettbl
end

abt="raum/b3870144ea3bbbe607804126f3b9c39e"
ale="raum/3ad9d9e430091b746159a1f2f9b0a85a"
alo="raum/e4fdca13e0ce2426c14221923d632606"
aloz="raum/097f6fb19bff88530b738f2bfe0bbca2"
amp="raum/e75e105053625dce0f77ce56e879f25c"
amphaf="raum/33629ffcefb2c08a5300379e03ca1d78"
apf="raum/516ceebb2bd54e59eb3bddd6b4519da0"
ash="raum/0e88b5bc7e8fb99c9ad6648af2cc6bbb"
ashz="raum/02ce2ff2b6aeb3cedb12fe94f460375c"
aug="raum/5c4729dd518971211d80e300b3cad21c"
camp="raum/8cc3a00b4e5e23c0eb37c3651b305ad4"
cor="raum/d40620bc448ec9ef50da45c8669d08a3"
corz="raum/e43e39a401794260080bd8750d5a0618"
dhun="raum/e004dda09968e9a63464ea2191c6cede"
gwen="raum/5c8450f4ee0ad1e55a0f44f8c78a2a68"
hol="raum/c565529eba8cd3d895f8b655c9887f39"
ilme="raum/fc982966d5469bea1cd5fe8266997d58"
jas="raum/828ebb06d8a937078d9e60d12833e3d0"
jer="raum/e688785d8598c6d3111e8b59d1262dc2"
kap="raum/34cf4ff9bf5b78637527632b727031c0"
ker="raum/cd559901a2abd4bb5abf4b94e03caf52"
lim="raum/8b1b11b86e425b2d294c51cf4fa9fb26"
lor="raum/74688eb5925421882cdac14816da908b"
los="raum/337aa69225378494ce4dc7fb0c9ea90c"
loshaf="raum/5b6339ba77f2a76b4abe286c940c78fb"
min="raum/1363d90eb536ec54b8e893d46d73a598"
mos="raum/a1ce5765b0568f98dde987fdf9749ca4"
nuel="raum/dcf94ff3e035aa03992c851656e958c4"
ril="raum/2759daa74ac2124b61ca8ce2fc8fe5a6"
san="raum/9677492e37dc76e4b21b25510f9945f1"
see="raum/51023cd5e5ae352dd197ca431a276f4f"
siedlung="raum/f34ca159045f297cd45d667e1852d5ab"
skal="raum/0f0102c1b06ce6279e809d5da3af02f5"
sol="raum/4dcd12d34937f70e6663c3c08fc270d1"
teich="raum/42b0bf70c4cc2757c0f43a24eb522944"
tempel="raum/4fd73582eb0349d5e216b35044bc5490"
tief="raum/3b9843eaba4a9021990cdf4e6ffa87c5"
tin="raum/70f3d751ed30fc18d5657849bbf8e931"
tinschmied="raum/47acbba45a73652cab06466ec20686dc"
toe="raum/488b2fbd12ae3419d9c7cb392a3f779d"
tol="raum/0e15167756cacc054c033751d387272b"
tolhaf="raum/c4f3980a3bb496da0d4646f4195625d6"
umi="raum/3f269e1432e735846f68838e82cc3f8f"
us="raum/db9501a54afc76b2046acd9b74264e9a"
uw_oben="raum/ea6e4bf47829217cddc775896ba171d0"
uw="raum/3399a4ad659c3e478a13ab13c10c3a03"
ver="raum/3e3b7d45fe19f21941cbb708faf3da20"
wal="raum/d51b6dc32c681867d4168ceb5408f8ce"

stations={}
stations.abt_alo=abt
stations.abt_apf=abt
stations.abt_cor=abt
stations.abt_min=abt
stations.abt_teich=abt
stations.abt_tor=abt
stations.abt_us=abt
stations.affe_gol="raum/9fcfd30ba7223d45ce9cecf224faa66b"
stations.ale_haf=ale
stations.ale_jer=ale
stations.ale_los=ale
stations.ale_schmied=ale
stations.alo_abt=alo
stations.alo_apf=alo
stations.alo_ash=alo
stations.alo_barde=alo
stations.alo_cor=alo
stations.alo_form=alo
stations.alo_min=alo
stations.alo_orks=alo
stations.alo_papierfalter=alo
stations.alo_san=alo
stations.alo_teich=alo
stations.alo_tor=alo
stations.alo_us=alo
stations.alo_wahrsager=alo
stations.aloz_baecker="raum/097f6fb19bff88530b738f2bfe0bbca2"
stations.aloz_bank=aloz
stations.aloz_gast1="raum/097f6fb19bff88530b738f2bfe0bbca2"
stations.aloz_haendler=aloz
stations.aloz_leder=aloz
stations.aloz_magier1=aloz
stations.aloz_magier2=aloz
stations.amp_aug=amp
stations.amp_haf=amp
stations.amp_ker=amp
stations.amp_umi=amp
stations.apf_abt=apf
stations.apf_alo=apf
stations.apf_ash=apf
stations.apf_cor=apf
stations.apf_min=apf
stations.apf_teich=apf
stations.apf_us=apf
stations.arg_ruw="raum/d6fa8bda433d41d3bb6ea24d52d0351d"
stations.ash_alo=ash
stations.ash_apf=ash
stations.ash_barde=ash
stations.ash_dichter=ash
stations.ash_druide=ash
stations.ash_form=ash
stations.ash_min=ash
stations.ash_san=ash
stations.ash_teich=ash
stations.ash_tor=ash
stations.ash_us=ash
stations.ash_wlm=ash
stations.ashz_bank=ashz
stations.ashz_gast="raum/02ce2ff2b6aeb3cedb12fe94f460375c"
stations.ashz_haendler="raum/02ce2ff2b6aeb3cedb12fe94f460375c"
stations.ashz_magier=ashz
stations.ashz_post=ashz
stations.ashz_wlm=ashz
stations.aug_amp=aug
stations.aug_bank=aug
stations.aug_haf=aug
stations.aug_ker=aug
stations.aug_mos=aug
stations.baecker_aloz="raum/f8f9e9059a7816fe410b03e1e29e2b9f"
stations.bank_aloz="raum/1d69ce4b15bd02f4b94d8259c20ac567"
stations.bank_aug="raum/80623eb8d90046ad2a76a39714d7493e"
stations.bank_ashz="raum/b2b59cdcef2d62792c6b8224f161403d"
stations.bank_corz="raum/04b7d55df416e3dbd5276b14d4276f1a"
stations.bank_ilme="raum/44f0bc731a6c345759b1859f1f12d666"
stations.bank_jas="raum/9ea9dec24cdbc8f999982d48591aa365"
stations.bank_jer="raum/e60306e79b263b6b12bf1ca6bd6ad296"
stations.bank_lor="raum/cbf604133bc570ff889d090402787cc0"
stations.bank_min="raum/a4f92dfb105aa948520c4ce4c7fc9883"
stations.bank_skal="raum/f9f98ba451a4136698628df6ed6725d2"
stations.bank_wal="raum/d2107ba67442f336ed8fe2c2ae57b0eb"
stations.barde_alo="raum/1c302a5cf22d90bb22637ce51586eadc"
stations.barde_ash="raum/6da4291daf02cede2e6b4bf77e121003"
stations.barde_hol="raum/aa55145c1921ad6b5fe2c507df329180"
stations.barde_ker="raum/a367bd1c73a75a5071a541a8a0c12e26"
stations.barde_lor="raum/a27b0166f12df8d8da00dbd7881634e9"
stations.barde_los="raum/848ed855fbb73b72b3bde39e20b3e481"
stations.barde_min="raum/100db20df2eccaa3960b40e75d153195"
stations.barde_ril="raum/d1560104d74cb49d4602b4f4b969e5ad"
stations.barde_ruw="raum/d2aa50ad01baf605f5e92a47e814dfcf"
stations.barde_san="raum/c1cd9335a2dd1e71ee50c60eaba4f14d"
stations.barde_skal="raum/c31e1ad35e825c85a2ad09e5ec4bf7a8"
stations.barde_sol="raum/d8ce50677d754b8dbdd58b80b0712608"
stations.barde_tin="raum/b7b1beb946b25bdc47bddcab6579e991"
stations.barde_tol="raum/350250fc59347acbda9b914b82fbe134"
stations.barde_us="raum/454500e19bdf9c2c9a53d26dee5339e2"
stations.bote_min="raum/f3d2b779c1e2b864a82abd23b7786d6b"
stations.camp_druide=camp
stations.camp_kap=camp
stations.camp_mine=camp
stations.camp_see=camp
stations.camp_skal=camp
stations.camp_tempel=camp
stations.camp_tief=camp
stations.camp_uw=camp
stations.cor_abt=cor
stations.cor_alo=cor
stations.cor_apf=cor
stations.cor_druide=cor
stations.cor_form=cor
stations.cor_min=cor
stations.cor_san=cor
stations.cor_teich=cor
stations.cor_tor=cor
stations.cor_us=cor
stations.corz_bank=corz
stations.corz_haendler=corz
stations.corz_magier=corz
stations.corz_post=corz
stations.corz_wlm=corz
stations.dhun_min=dhun
stations.dhun_nuel=dhun
stations.dhun_us=dhun
stations.dhun_uw=dhun
stations.dichter_ash="raum/07e730bb54564fd4c15a3e4e7d8e325d"
stations.dinsel_jas="raum/4405d3cc8b5a9de94d8683b2e7fa38b6"
stations.dk_uw="raum/c9654fc89fd112b98001fce9a7757f1c"
stations.dol_druide="raum/e706292e95fc6035903700e9e032ef05"
stations.dol_haf="raum/e706292e95fc6035903700e9e032ef05"
stations.druide_ash="raum/46d7a8dcd021e019a6b3aba51638a5e3"
stations.druide_camp="raum/6fa2a223044358a4ef98d146d4622182"
stations.druide_cor="raum/14ba12f0b709eda0508cdaefea6403ad"
stations.druide_dol="raum/9426a04dc59df931f10d9c7573c92ccf"
stations.druide_lim="raum/c209604ad7892060be488de3cd8dabb3"
stations.druide_lor="raum/64ecce583b1d9fecd364c1e3ff1edd2a"
stations.druide_los="raum/92ba66ebbe407c119ec8e6b92c86dd0a"
stations.druide_min="raum/c4186a47f2115139c6e7261f06277eac"
stations.druide_sol="raum/98d2c77d43d9090528adb1d740d14349"
stations.druide_tol="raum/858557b70ce054fc1fd3f8b5c08aff5e"
stations.druide_us="raum/516bd1b3cd28efc9ee950c20a7326faf"
stations.farm_hol="raum/af886c0398c1a7633d67b25ecd21f315"
stations.form_alo="raum/b21d34351bb7e15e2d892dc8655a079e"
stations.form_ash="raum/c4494c4dca579cf62f6af1dcc6e0b65e"
stations.form_cor="raum/59af42e64f5e09afa77d670147430c3b"
stations.form_min="raum/fec14a5d61754d7d899ec62d15527aa2"
stations.form_sol="raum/a070d55ba96aa72706f9369a7d44bd6c"
stations.form_tol="raum/caa9d6a78d7f9c7fd34774cc9b4e049a"
stations.form_us="raum/9c68db550b53110505961914c47c4df5"
stations.gast1_aloz="raum/b3e12f5b9b9e4330fee7a36526cc1377"
stations.gast1_min="raum/1aa8679dae51c2b17b6b9c1883c9ef0a"
stations.gast_ashz="raum/107e0608db24dee1136396c8ef609310"
stations.gol_affe="raum/015ca4c68d90adbf6cd212253cd1706a"
stations.gol_mine="raum/015ca4c68d90adbf6cd212253cd1706a"
stations.gwen_haf=gwen
stations.gwen_jagd=gwen
stations.gwen_magier=gwen
stations.gwen_schmied=gwen
stations.gwen_siedlung=gwen
stations.gwen_tin=gwen
stations.haendler_aloz="raum/7a71c11e797bc94301b6ba15ee48124d"
stations.haendler_ashz="raum/ccb82ff23c8a469373789a071b80149c"
stations.haendler_corz="raum/5391ea97794e4d4e7c8ca5f734f9910f"
stations.haendler_ilme="raum/76390f82483218c4f34638f78a519d8b"
stations.haendler_jas="raum/134946a87d61d0524fe28a431ff926e7"
stations.haendler_jer="raum/a3a026a79f2cc4fddb0847cd46b1fadb"
stations.haendler_lor="raum/0f9c55bf250e4ad816cdceede226a054"
stations.haendler_min="raum/7dedeeebd064e446df9720d2665b0fd7"
stations.haendler_skal="raum/96bdfcdf4a7e0b169800ec3d4504ac39"
stations.haendler_us="raum/4ef6d4918856d027cf1d728aacc432c4"
stations.haendler_wal="raum/14d8914348ed7beb7294706b3c260bae"
stations.haf_ale=loshaf
stations.haf_amp=amphaf
stations.haf_aug=amphaf
stations.haf_dol="raum/93804619cea283877cde3fd8a8581333"
stations.haf_gwen="raum/10881e7e62b006afee9816649642327f"
stations.haf_hol="raum/63ab4d672c1bb5fbac5bc23f3b31396b"
stations.haf_ilme=tolhaf
stations.haf_jer=loshaf
stations.haf_ker=amphaf
stations.haf_lor="raum/51c6d00a73fae493f310ba99895a8f1e"
stations.haf_sol="raum/2bb629d877a810d8746ce7fc51884fee"
stations.haf_tol=tolhaf
stations.haf_umi=amphaf
stations.haf_uw="raum/94c562aea6a4c8dbfa806a300e606a67"
stations.haf_ver=loshaf
stations.hain_sol="raum/45f6cb3c6a8b3a90ab146ec7c8c2a985"
stations.her_hol="raum/fbb85ec48b6ccccbdc957882e1436a2c"
stations.hol_barde=hol
stations.hol_farm=hol
stations.hol_haf=hol
stations.hol_her=hol
stations.hol_jagd=hol
stations.hol_koch=hol
stations.hol_lim=hol
stations.hol_mine=hol
stations.htoe_wtoe="raum/37238d5027e07dd53dff22692785455e"
stations.ilme_bank=ilme
stations.ilme_haendler=ilme
stations.ilme_haf=ilme
stations.ilme_magier1=ilme
stations.ilme_magier2=ilme
stations.ilme_post=ilme
stations.ilme_tol="raum/fc982966d5469bea1cd5fe8266997d58"
stations.ilme_uw=ilme
stations.imker_min="raum/4306f333c6a0c4cdc26472e8eed13235"
stations.jagd_gwen="raum/6913ea429bac1520415ae076e4dc85a8"
stations.jagd_hol="raum/04fb02fd8d0e5212bc144eda154b05fd"
stations.jagd_tin="raum/6913ea429bac1520415ae076e4dc85a8"
stations.jas_bank=jas
stations.jas_dinsel=jas
stations.jas_haendler=jas
stations.jas_magier=jas
stations.jas_moor=jas
stations.jas_post=jas
stations.jas_schmied=jas
stations.jas_tempel=jas
stations.jas_toe=jas
stations.jas_uw=jas
stations.jer_ale=jer
stations.jer_bank=jer
stations.jer_haendler=jer
stations.jer_haf=jer
stations.jer_los=jer
stations.jer_magier=jer
stations.jer_schmied=jer
stations.jer_ver=jer
stations.kap_camp=kap
stations.kap_tempel=kap
stations.kap_uw=kap
stations.ker_amp=ker
stations.ker_aug=ker
stations.ker_barde=ker
stations.ker_haf=ker
stations.ker_magier=ker
stations.ker_mos=ker
stations.ker_run=ker
stations.koch_hol="raum/6675b678e153063003c188f8c021b05a"
stations.leder_aloz="raum/05f376d741238d1ba03483b425d29076"
stations.lederer_min="raum/e056d17d21ec278b3df3541aee285604"
stations.lim_druide="raum/8b1b11b86e425b2d294c51cf4fa9fb26"
stations.lim_hol="raum/8b1b11b86e425b2d294c51cf4fa9fb26"
stations.lim_muehle=lim
stations.lim_schmied=lim
stations.lor_bank=lor
stations.lor_barde=lor
stations.lor_druide=lor
stations.lor_haendler=lor
stations.lor_haf=lor
stations.lor_magier=lor
stations.lor_mine=lor
stations.los_ale=los
stations.los_barde=los
stations.los_druide=los
stations.los_jer=los
stations.los_magier=los
stations.los_ver=los
stations.magier_ashz="raum/005e3b60dcc45f42e00d7e8e95384f94"
stations.magier_corz="raum/635097e0d11f371677321c8d28563c7d"
stations.magier_gwen="raum/3a49f9dde3a766f8114413854705fb4e"
stations.magier_jas="raum/8b4655acf85e25c2c38cf46f89155cbc"
stations.magier_jer="raum/d616460ea86fcaf9fa4a5eea80850029"
stations.magier_ker="raum/2ab3287b5ad6181cbf56aa14cd4c7151"
stations.magier_lor="raum/59a3a571aa59ab91a917ee0dbb88747e"
stations.magier_los="raum/d616460ea86fcaf9fa4a5eea80850029"
stations.magier_ril="raum/312f337dfbb1c03b2ca6bb88357dae93"
stations.magier_skal="raum/2490c20f06708ed4addb4fc51ca816dd"
stations.magier_umi="raum/35a74d1c95eecadbaec816059407ca74"
stations.magier1_aloz="raum/73228bc5fb6f8dc01692a0179ff64685"
stations.magier1_ilme="raum/3bdfb9b7a849acade8dfbe95094cef8f"
stations.magier1_min="raum/7219693e9924b6396a7416a5d6efb6b5"
stations.magier1_tol="raum/3bdfb9b7a849acade8dfbe95094cef8f"
stations.magier2_aloz="raum/5a763dd5120b0c73bd1f37a35ec10ad4"
stations.magier2_ilme="raum/00981bf47fa9ab872770071450b168e5"
stations.magier2_min="raum/8a27d49f514fc549ebcf06678b82f64c"
stations.magier2_tol="raum/00981bf47fa9ab872770071450b168e5"
stations.magier3_min="raum/2b3183b7d87c288e131177d2489b2744"
stations.min_abt=min
stations.min_alo=min
stations.min_apf=min
stations.min_ash=min
stations.min_bank=min
stations.min_barde=min
stations.min_bote=min
stations.min_cor=min
stations.min_dhun=min
stations.min_druide=min
stations.min_form=min
stations.min_gast1="raum/1363d90eb536ec54b8e893d46d73a598"
stations.min_haendler=min
stations.min_imker=min
stations.min_lederer=min
stations.min_magier1=min
stations.min_magier2=min
stations.min_magier3=min
stations.min_post=min
stations.min_san=min
stations.min_schlucht=min
stations.min_schmied=min
stations.min_teich=min
stations.min_tor=min
stations.min_us=min
stations.min_wlm1=min
stations.min_wlm2=min
stations.mine_camp="raum/2dadb3b04353297e3d570b797c26e77e"
stations.mine_gol="raum/87008bdc3ba56efa1ca520b015701dcf"
stations.mine_hol="raum/9ed8f65d6b60683ef545cc85b3818e41"
stations.mine_lor="raum/920e14f6bdb889346521a46d281d36cd"
stations.mine_ruw="raum/9e410143fdd6b61240794f7e0ca4afbf"
stations.mine_tin="raum/c453618c9e5c1fc4e21465114eadb883"
stations.mine_us="raum/57fb1988f4257901d9c8fbf15be170b8"
stations.mine_uw="raum/e980371278aaf492c636fe9217b813e8"
stations.moor_jas="raum/a80d2d97e77a5d6f7f2bf9c2d2d19364"
stations.mos_aug=mos
stations.mos_ker=mos
stations.muehle_lim="raum/82dfb814ead873764262de7e97b1c39d"
stations.nuel_dhun=nuel
stations.nuel_us=nuel
stations.nuel_uw=nuel
stations.orks_alo="raum/5bc897b006a7f64bd8ac5606382df2b6"
stations.papierfalter_alo="raum/c2b98600fcedfc6d50dac98f665c47f9"
stations.por_ril="raum/d54cd830e2e89f97d28ed47e89e46995"
stations.por_uw="raum/e63b887cab42a5455a25e0cb0ed2417f"
stations.post_ashz="raum/3e5e2fbb4cbf27eedaf8988e994ebb20"
stations.post_corz="raum/47f7ae8bc73e63130d553c7525d5c647"
stations.post_ilme="raum/80c9a7ae717170ecc9bbf36179c65d06"
stations.post_jas="raum/88ad6ce6f1e513dcd183048db306a360"
stations.post_min="raum/1a0f901489449df0d68ca3c4e0a96796"
stations.post_ril="raum/22913a107af377e7d8693810175444b7"
stations.post_skal="raum/85cf388c659b5a0f7e50bdd840f6837f"
stations.post_wal="raum/a0081825fc22e3f5b5df95ad167b21e9"
stations.ril_barde=ril
stations.ril_magier=ril
stations.ril_por=ril
stations.ril_post=ril
stations.run_ker="raum/6a54972b10db962348fc83844408ab3d"
stations.ruw_arg="raum/85371d2ae3f3317b3a55ba03192c9eaa"
stations.ruw_barde="raum/85371d2ae3f3317b3a55ba03192c9eaa"
stations.ruw_mine="raum/85371d2ae3f3317b3a55ba03192c9eaa"
stations.san_alo=san
stations.san_ash=san
stations.san_barde=san
stations.san_cor=san
stations.san_min=san
stations.san_tor=san
stations.schlucht_min="raum/fa398dc34af4fa62e711156aeb872a9d"
stations.schmied_ale="raum/6329f60dfefc8695b7059262f8622be4"
stations.schmied_gwen=tinschmied
stations.schmied_jas="raum/cd9a095daf8402b884caf647eafb26cb"
stations.schmied_jer="raum/6329f60dfefc8695b7059262f8622be4"
stations.schmied_lim="raum/2a76d2fbc07a9652d09bd5a82d81b0fc"
stations.schmied_min="raum/789d26f599d0a4a067868c775fd5c930"
stations.schmied_siedlung=tinschmied
stations.schmied_skal="raum/5ad5d019caf27facca08754f01b9ed9b"
stations.schmied_sol="raum/7dbdb1b5fd8ce7253812bd195c424fa3"
stations.schmied_tol="raum/68c6eaf2f63c009c0fe0fe7714c74154"
stations.schmied_ver="raum/6329f60dfefc8695b7059262f8622be4"
stations.schmied_wal="raum/b717b0217faaa6a1e4c85256df3fbcb5"
stations.see_camp=see
stations.see_tief=see
stations.siedlung_gwen=siedlung
stations.siedlung_schmied=siedlung
stations.siedlung_tin=siedlung
stations.skal_bank=skal
stations.skal_barde=skal
stations.skal_camp=skal
stations.skal_haendler=skal
stations.skal_magier=skal
stations.skal_post=skal
stations.skal_schmied=skal
stations.skal_tief=skal
stations.skal_uw=skal
stations.sol_barde=sol
stations.sol_druide=sol
stations.sol_form=sol
stations.sol_haf=sol
stations.sol_hain=sol
stations.sol_schmied=sol
stations.teich_abt=teich
stations.teich_alo=teich
stations.teich_apf=teich
stations.teich_ash=teich
stations.teich_cor=teich
stations.teich_min=teich
stations.teich_tor=teich
stations.teich_us=teich
stations.tempel_camp=tempel
stations.tempel_jas=tempel
stations.tempel_kap=tempel
stations.tempel_uw=tempel
stations.tief_camp=tief
stations.tief_see=tief
stations.tief_skal=tief
stations.tin_barde=tin
stations.tin_gwen=tin
stations.tin_jagd=tin
stations.tin_mine=tin
stations.tin_siedlung=tin
stations.tin_wl=tin
stations.toe_jas="raum/488b2fbd12ae3419d9c7cb392a3f779d"
stations.toe_uw="raum/488b2fbd12ae3419d9c7cb392a3f779d"
stations.toe_yol=toe
stations.tol_barde=tol
stations.tol_druide=tol
stations.tol_form=tol
stations.tol_haf=tol
stations.tol_ilme=tol
stations.tol_magier1=tol
stations.tol_magier2=tol
stations.tol_schmied=tol
stations.tor_abt="raum/25f532c1edc30a82cd8fd82977f853ba"
stations.tor_alo="raum/2bcb8b05509ef84ce6bb36dd50729e2c"
stations.tor_ash="raum/bbf61be3631c2f5f9402bce3ffd9a795"
stations.tor_cor="raum/00797360afb606f1a33f5a8342cc18c4"
stations.tor_min="raum/af86dda24087a60231795e18e03b3b78"
stations.tor_san="raum/044e996d908244b0bbb62e018d47d610"
stations.tor_teich="raum/2bcb8b05509ef84ce6bb36dd50729e2c"
stations.tor_us="raum/9593dfdc9de52235fbcbcb84507ab690"
stations.umi_amp=umi
stations.umi_haf=umi
stations.umi_magier=umi
stations.us_abt=us
stations.us_alo=us
stations.us_apf=us
stations.us_ash=us
stations.us_barde=us
stations.us_cor=us
stations.us_dhun=us
stations.us_druide=us
stations.us_form=us
stations.us_haendler=us
stations.us_min=us
stations.us_mine=us
stations.us_nuel=us
stations.us_teich=us
stations.us_tor=us
stations.us_uw=us
stations.uw_camp=uw
stations.uw_dhun=uw_oben
stations.uw_dk=uw
stations.uw_haf=uw
stations.uw_ilme="raum/f0edb0c34886662762d179996fa6f634"
stations.uw_jas=uw
stations.uw_kap=uw
stations.uw_mine=uw
stations.uw_nuel=uw_oben
stations.uw_por=uw
stations.uw_skal=uw
stations.uw_tempel=uw
stations.uw_toe=uw
stations.uw_us=uw_oben
stations.ver_haf=ver
stations.ver_jer=ver
stations.ver_los=ver
stations.ver_schmied=ver
stations.wahrsager_alo="raum/4823cf696d43a9df30d39500380e4278"
stations.wal_bank=wal
stations.wal_haendler=wal
stations.wal_post=wal
stations.wal_schmied=wal
stations.wl_tin="raum/42f62fdfb745f33115afd6e4bb5309e6"
stations.wlm_ash="raum/bf04da5e1cd00894c8cdafdc56d7e1ca"
stations.wlm_ashz="raum/5aa3c1d71a430965e5529529bd433642"
stations.wlm_corz="raum/8c28ed588888da3e2c17a550091005c0"
stations.wlm1_min="raum/ffcc1e26e2e43dc91037175ff3a1496c"
stations.wlm2_min="raum/90c08c9ebfa173ef4c0073c0968f7c2c"
stations.wtoe_htoe="raum/ef85b0602a670ba70d0c4df3b4ecbdfe"
stations.yol_toe="raum/89036876d7fc916f521e7e1f3d4dafd9"
