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
alo="raum/e4fdca13e0ce2426c14221923d632606"
amp="raum/e75e105053625dce0f77ce56e879f25c"
ash="raum/0e88b5bc7e8fb99c9ad6648af2cc6bbb"
camp="raum/8cc3a00b4e5e23c0eb37c3651b305ad4"
cor="raum/d40620bc448ec9ef50da45c8669d08a3"
gwen="raum/5c8450f4ee0ad1e55a0f44f8c78a2a68"
hol="raum/c565529eba8cd3d895f8b655c9887f39"
jer="raum/e688785d8598c6d3111e8b59d1262dc2"
ker="raum/cd559901a2abd4bb5abf4b94e03caf52"
lim="raum/8b1b11b86e425b2d294c51cf4fa9fb26"
lor="raum/74688eb5925421882cdac14816da908b"
los="raum/337aa69225378494ce4dc7fb0c9ea90c"
min="raum/1363d90eb536ec54b8e893d46d73a598"
ril="raum/2759daa74ac2124b61ca8ce2fc8fe5a6"
san="raum/9677492e37dc76e4b21b25510f9945f1"
skal="raum/0f0102c1b06ce6279e809d5da3af02f5"
sol="raum/4dcd12d34937f70e6663c3c08fc270d1"
tin="raum/70f3d751ed30fc18d5657849bbf8e931"
toe="raum/488b2fbd12ae3419d9c7cb392a3f779d"
tol="raum/0e15167756cacc054c033751d387272b"
us="raum/db9501a54afc76b2046acd9b74264e9a"
uw="raum/3399a4ad659c3e478a13ab13c10c3a03"
wal="raum/d51b6dc32c681867d4168ceb5408f8ce"
stations={}
stations.alo_ash=alo
stations.alo_barde=alo
stations.alo_min=alo
stations.alo_san=alo
stations.alo_tor=alo
stations.alo_us=alo
stations.ash_alo=ash
stations.ash_barde=ash
stations.ash_druide=ash
stations.ash_min=ash
stations.ash_san=ash
stations.ash_tor=ash
stations.ash_us=ash
stations.ker_amp=ker
stations.ker_barde=ker
stations.ker_magier=ker
stations.ker_mos=ker
stations.ker_run=ker
stations.magier_ker="raum/2ab3287b5ad6181cbf56aa14cd4c7151"
stations.min_abt=min
stations.min_alo=min
stations.min_ash=min
stations.min_barde=min
stations.min_cor=min
stations.min_dhun=min
stations.min_druide=min
stations.min_san=min
stations.min_schlucht=min
stations.min_tor=min
stations.min_us=min
stations.san_alo=san
stations.san_ash=san
stations.san_barde=san
stations.san_min=san
stations.san_tor=san
stations.cor_druide=cor
stations.cor_min=cor
stations.cor_tor=cor
stations.cor_us=cor
stations.schmied_wal="raum/b717b0217faaa6a1e4c85256df3fbcb5"
stations.us_abt=us
stations.us_alo=us
stations.us_ash=us
stations.us_barde=us
stations.us_cor=us
stations.us_druide=us
stations.us_min=us
stations.us_tor=us
stations.us_uw=us
stations.wal_bank=wal
stations.wal_haendler=wal
stations.wal_post=wal
stations.wal_schmied=wal
stations.run_ker="raum/6a54972b10db962348fc83844408ab3d"
stations.mos_ker="raum/a1ce5765b0568f98dde987fdf9749ca4"
stations.barde_ker="raum/a367bd1c73a75a5071a541a8a0c12e26"
stations.amp_magier=amp
stations.amp_ker=amp
stations.amp_haf=amp
stations.amp_aug=amp
stations.aug_amp="raum/5c4729dd518971211d80e300b3cad21c"
stations.haf_amp="raum/33629ffcefb2c08a5300379e03ca1d78"
stations.magier_amp="raum/a488658bf5c4c96982f43f3165ec7c39"
stations.haf_gwen="raum/10881e7e62b006afee9816649642327f"
stations.gwen_haf=gwen
stations.gwen_magier=gwen
stations.gwen_tin=gwen
stations.tin_gwen=tin
stations.wl_tin="raum/42f62fdfb745f33115afd6e4bb5309e6"
stations.tin_wl=tin
stations.tin_siedlung=tin
stations.siedlung_tin="raum/f34ca159045f297cd45d667e1852d5ab"
stations.tin_mine=tin
stations.mine_tin="raum/c453618c9e5c1fc4e21465114eadb883"
stations.tin_jagd=tin
stations.jagd_tin="raum/6913ea429bac1520415ae076e4dc85a8"
stations.tin_barde=tin
stations.barde_tin="raum/b7b1beb946b25bdc47bddcab6579e991"
stations.magier_gwen="raum/3a49f9dde3a766f8114413854705fb4e"
stations.uw_us="raum/ea6e4bf47829217cddc775896ba171d0"
stations.uw_skal=uw
stations.skal_uw=skal
stations.skal_barde=skal
stations.barde_skal="raum/c31e1ad35e825c85a2ad09e5ec4bf7a8"
stations.uw_camp=uw
stations.camp_uw=camp
stations.druide_camp="raum/6fa2a223044358a4ef98d146d4622182"
stations.camp_tief=camp
stations.tief_camp="raum/3b9843eaba4a9021990cdf4e6ffa87c5"
stations.camp_see=camp
stations.see_camp="raum/51023cd5e5ae352dd197ca431a276f4f"
stations.uw_por=uw
stations.por_uw="raum/e63b887cab42a5455a25e0cb0ed2417f"
stations.uw_jas=uw
stations.jas_uw="raum/828ebb06d8a937078d9e60d12833e3d0"
stations.uw_dk=uw
stations.dk_uw="raum/c9654fc89fd112b98001fce9a7757f1c"
stations.uw_toe=uw
stations.toe_uw="raum/488b2fbd12ae3419d9c7cb392a3f779d"
stations.uw_kap=uw
stations.kap_uw="raum/34cf4ff9bf5b78637527632b727031c0"
stations.ril_barde=ril
stations.barde_ril="raum/d1560104d74cb49d4602b4f4b969e5ad"
stations.ril_por=ril
stations.por_ril="raum/d54cd830e2e89f97d28ed47e89e46995"
stations.tor_min="raum/af86dda24087a60231795e18e03b3b78"
stations.tor_san="raum/044e996d908244b0bbb62e018d47d610"
stations.tor_ash="raum/bbf61be3631c2f5f9402bce3ffd9a795"
stations.tor_alo="raum/2bcb8b05509ef84ce6bb36dd50729e2c"
stations.tor_us="raum/9593dfdc9de52235fbcbcb84507ab690"
stations.tor_cor="raum/00797360afb606f1a33f5a8342cc18c4"
stations.abt_us=abt
stations.abt_min=abt
stations.abt_tor=abt
stations.tor_abt="raum/25f532c1edc30a82cd8fd82977f853ba"
stations.druide_min="raum/c4186a47f2115139c6e7261f06277eac"
stations.druide_cor="raum/14ba12f0b709eda0508cdaefea6403ad"
stations.druide_us="raum/516bd1b3cd28efc9ee950c20a7326faf"
stations.druide_ash="raum/46d7a8dcd021e019a6b3aba51638a5e3"
stations.barde_ash="raum/6da4291daf02cede2e6b4bf77e121003"
stations.barde_san="raum/c1cd9335a2dd1e71ee50c60eaba4f14d"
stations.barde_min="raum/100db20df2eccaa3960b40e75d153195"
stations.barde_alo="raum/1c302a5cf22d90bb22637ce51586eadc"
stations.barde_us="raum/454500e19bdf9c2c9a53d26dee5339e2"
stations.schlucht_min="raum/fa398dc34af4fa62e711156aeb872a9d"
stations.dhun_min="raum/e004dda09968e9a63464ea2191c6cede"
stations.haendler_wal="raum/14d8914348ed7beb7294706b3c260bae"
stations.bank_wal="raum/d2107ba67442f336ed8fe2c2ae57b0eb"
stations.post_wal="raum/a0081825fc22e3f5b5df95ad167b21e9"
stations.druide_lor="raum/64ecce583b1d9fecd364c1e3ff1edd2a"
stations.lor_druide=lor
stations.haf_lor="raum/51c6d00a73fae493f310ba99895a8f1e"
stations.lor_haf=lor
stations.barde_lor="raum/a27b0166f12df8d8da00dbd7881634e9"
stations.lor_barde=lor
stations.magier_lor="raum/59a3a571aa59ab91a917ee0dbb88747e"
stations.lor_magier=lor
stations.mine_lor="raum/920e14f6bdb889346521a46d281d36cd"
stations.lor_mine=lor
stations.camp_druide=camp
stations.alo_orks=alo
stations.orks_alo="raum/5bc897b006a7f64bd8ac5606382df2b6"
stations.hain_sol="raum/45f6cb3c6a8b3a90ab146ec7c8c2a985"
stations.sol_hain=sol
stations.sol_haf=sol
stations.haf_sol="raum/2bb629d877a810d8746ce7fc51884fee"
stations.sol_barde=sol
stations.barde_sol="raum/d8ce50677d754b8dbdd58b80b0712608"
stations.sol_druide=sol
stations.druide_sol="raum/98d2c77d43d9090528adb1d740d14349"
stations.sol_schmied=sol
stations.schmied_sol="raum/7dbdb1b5fd8ce7253812bd195c424fa3"
stations.schmied_gwen="raum/47acbba45a73652cab06466ec20686dc"
stations.gwen_schmied=gwen
stations.tol_barde=tol
stations.barde_tol="raum/350250fc59347acbda9b914b82fbe134"
stations.tol_druide=tol
stations.druide_tol="raum/858557b70ce054fc1fd3f8b5c08aff5e"
stations.tol_haf=tol
stations.haf_tol="raum/c4f3980a3bb496da0d4646f4195625d6"
stations.tol_ilme=tol
stations.ilme_tol="raum/fc982966d5469bea1cd5fe8266997d58"
stations.tol_magier1=tol
stations.magier1_tol="raum/3bdfb9b7a849acade8dfbe95094cef8f"
stations.tol_magier2=tol
stations.magier2_tol="raum/00981bf47fa9ab872770071450b168e5"
stations.tol_schmied=tol
stations.schmied_tol="raum/68c6eaf2f63c009c0fe0fe7714c74154"
stations.los_jer=los
stations.jer_los=jer
stations.los_ale=los
stations.ale_los="raum/3ad9d9e430091b746159a1f2f9b0a85a"
stations.los_barde=los
stations.barde_los="raum/848ed855fbb73b72b3bde39e20b3e481"
stations.los_druide=los
stations.druide_los="raum/92ba66ebbe407c119ec8e6b92c86dd0a"
stations.los_ver=los
stations.ver_los="raum/3e3b7d45fe19f21941cbb708faf3da20"
stations.jer_haf=jer
stations.haf_jer="raum/5b6339ba77f2a76b4abe286c940c78fb"
stations.jer_magier=jer
stations.magier_jer="raum/d616460ea86fcaf9fa4a5eea80850029"
stations.hol_barde=hol
stations.barde_hol="raum/aa55145c1921ad6b5fe2c507df329180"
stations.hol_haf=hol
stations.haf_hol="raum/63ab4d672c1bb5fbac5bc23f3b31396b"
stations.hol_her=hol
stations.her_hol="raum/fbb85ec48b6ccccbdc957882e1436a2c"
stations.hol_jagd=hol
stations.jagd_hol="raum/04fb02fd8d0e5212bc144eda154b05fd"
stations.hol_koch=hol
stations.koch_hol="raum/6675b678e153063003c188f8c021b05a"
stations.hol_lim=hol
stations.lim_hol="raum/8b1b11b86e425b2d294c51cf4fa9fb26"
stations.hol_mine=hol
stations.mine_hol="raum/9ed8f65d6b60683ef545cc85b3818e41"
stations.hol_farm=hol
stations.farm_hol="raum/af886c0398c1a7633d67b25ecd21f315"
stations.lim_druide="raum/8b1b11b86e425b2d294c51cf4fa9fb26"
stations.druide_lim="raum/c209604ad7892060be488de3cd8dabb3"
stations.dol_druide="raum/e706292e95fc6035903700e9e032ef05"
stations.druide_dol="raum/9426a04dc59df931f10d9c7573c92ccf"
stations.dol_haf="raum/e706292e95fc6035903700e9e032ef05"
stations.haf_dol="raum/93804619cea283877cde3fd8a8581333"
stations.ruw_arg="raum/85371d2ae3f3317b3a55ba03192c9eaa"
stations.arg_ruw="raum/d6fa8bda433d41d3bb6ea24d52d0351d"
stations.ruw_barde="raum/85371d2ae3f3317b3a55ba03192c9eaa"
stations.barde_ruw="raum/d2aa50ad01baf605f5e92a47e814dfcf"
stations.ruw_mine="raum/85371d2ae3f3317b3a55ba03192c9eaa"
stations.mine_ruw="raum/9e410143fdd6b61240794f7e0ca4afbf"
stations.affe_gol="raum/9fcfd30ba7223d45ce9cecf224faa66b"
stations.gol_affe="raum/015ca4c68d90adbf6cd212253cd1706a"
stations.gol_mine="raum/015ca4c68d90adbf6cd212253cd1706a"
stations.mine_gol="raum/87008bdc3ba56efa1ca520b015701dcf"
stations.uw_tempel=uw
stations.tempel_uw="raum/4fd73582eb0349d5e216b35044bc5490"
stations.uw_mine=uw
stations.mine_uw="raum/e980371278aaf492c636fe9217b813e8"
stations.camp_mine=camp
stations.mine_camp="raum/2dadb3b04353297e3d570b797c26e77e"
stations.us_mine=us
stations.mine_us="raum/57fb1988f4257901d9c8fbf15be170b8"
stations.alo_form=alo
stations.form_alo="raum/b21d34351bb7e15e2d892dc8655a079e"
stations.ash_form=ash
stations.form_ash="raum/c4494c4dca579cf62f6af1dcc6e0b65e"
stations.cor_form=cor
stations.form_cor="raum/59af42e64f5e09afa77d670147430c3b"
stations.us_form=us
stations.form_us="raum/9c68db550b53110505961914c47c4df5"
stations.min_form=min
stations.form_min="raum/fec14a5d61754d7d899ec62d15527aa2"
stations.tol_form=tol
stations.form_tol="raum/caa9d6a78d7f9c7fd34774cc9b4e049a"
stations.lim_muehle=lim
stations.muehle_lim="raum/82dfb814ead873764262de7e97b1c39d"
stations.lim_schmied=lim
stations.schmied_lim="raum/2a76d2fbc07a9652d09bd5a82d81b0fc"
stations.toe_yol=toe
stations.yol_toe="raum/89036876d7fc916f521e7e1f3d4dafd9"
stations.alo_wahrsager=alo
stations.wahrsager_alo="raum/4823cf696d43a9df30d39500380e4278"
stations.ash_dichter=ash
stations.dichter_ash="raum/07e730bb54564fd4c15a3e4e7d8e325d"
stations.alo_papierfalter=alo
stations.papierfalter_alo="raum/c2b98600fcedfc6d50dac98f665c47f9"
stations.wtoe_htoe="raum/ef85b0602a670ba70d0c4df3b4ecbdfe"
stations.htoe_wtoe="raum/37238d5027e07dd53dff22692785455e"
stations.abt_alo=abt
stations.alo_abt=alo