require("pairsbykeys")
require("pairsbykeys")

function stations_getspeedwalksbyroomid(roomid)
  rettbl = {}
  for name, id in pairsByKeys(stations) do
    if id == roomid then
      rettbl[#rettbl+1] = name
    end
  end
  return rettbl
end

function stations_getnamebyroomid(roomid)
  for name, id in pairsByKeys(stations) do
    if id == roomid then
      split_name = utils.split(name, "_")
      if split_name ~= nil then
        return split_name[1]
      else
        return nil
      end
    end
  end
  return nil
end

abt = "raum/b3870144ea3bbbe607804126f3b9c39e"
ale = "raum/3ad9d9e430091b746159a1f2f9b0a85a"
alo = "raum/e4fdca13e0ce2426c14221923d632606"
aloz = "raum/097f6fb19bff88530b738f2bfe0bbca2"
amp = "raum/e75e105053625dce0f77ce56e879f25c"
amphaf = "raum/33629ffcefb2c08a5300379e03ca1d78"
apf = "raum/516ceebb2bd54e59eb3bddd6b4519da0"
ash = "raum/0e88b5bc7e8fb99c9ad6648af2cc6bbb"
ashz = "raum/02ce2ff2b6aeb3cedb12fe94f460375c"
aug = "raum/5c4729dd518971211d80e300b3cad21c"
camp = "raum/8cc3a00b4e5e23c0eb37c3651b305ad4"
cor = "raum/d40620bc448ec9ef50da45c8669d08a3"
corz = "raum/e43e39a401794260080bd8750d5a0618"
dhun = "raum/e004dda09968e9a63464ea2191c6cede"
dhun3 = "raum/62733b0fc85683d590345e3ba8fe9bcc"
gwen = "raum/5c8450f4ee0ad1e55a0f44f8c78a2a68"
hol = "raum/c565529eba8cd3d895f8b655c9887f39"
ilme = "raum/fc982966d5469bea1cd5fe8266997d58"
jas = "raum/828ebb06d8a937078d9e60d12833e3d0"
jer = "raum/e688785d8598c6d3111e8b59d1262dc2"
kap = "raum/1ba559412b6b5fbd0c3eb0c0eb36a1ba"
ker = "raum/cd559901a2abd4bb5abf4b94e03caf52"
lim = "raum/8b1b11b86e425b2d294c51cf4fa9fb26"
lor = "raum/74688eb5925421882cdac14816da908b"
los = "raum/337aa69225378494ce4dc7fb0c9ea90c"
loshaf = "raum/5b6339ba77f2a76b4abe286c940c78fb"
min = "raum/1363d90eb536ec54b8e893d46d73a598"
mio = "raum/acc6e519aac3febde7f3e636f480f6fd"
mos = "raum/a1ce5765b0568f98dde987fdf9749ca4"
nekro = "raum/56fa846ef63ed7a117850e41fa09ebb5"
nuel = "raum/dcf94ff3e035aa03992c851656e958c4"
quelle = "raum/7091aabf721fbd5946bdd405d995fb0c"
ril = "raum/2759daa74ac2124b61ca8ce2fc8fe5a6"
san = "raum/9677492e37dc76e4b21b25510f9945f1"
see = "raum/51023cd5e5ae352dd197ca431a276f4f"
siedlung = "raum/f34ca159045f297cd45d667e1852d5ab"
skal = "raum/0f0102c1b06ce6279e809d5da3af02f5"
sol = "raum/4dcd12d34937f70e6663c3c08fc270d1"
teich = "raum/42b0bf70c4cc2757c0f43a24eb522944"
tempel = "raum/4fd73582eb0349d5e216b35044bc5490"
tief = "raum/3b9843eaba4a9021990cdf4e6ffa87c5"
tin = "raum/70f3d751ed30fc18d5657849bbf8e931"
tinschmied = "raum/47acbba45a73652cab06466ec20686dc"
toe = "raum/488b2fbd12ae3419d9c7cb392a3f779d"
tol = "raum/0e15167756cacc054c033751d387272b"
tolhaf = "raum/c4f3980a3bb496da0d4646f4195625d6"
umi = "raum/3f269e1432e735846f68838e82cc3f8f"
us = "raum/2cdee587999e673b852cc1475accce37"
uw_oben = "raum/ea6e4bf47829217cddc775896ba171d0"
uw = "raum/3399a4ad659c3e478a13ab13c10c3a03"
ver = "raum/3e3b7d45fe19f21941cbb708faf3da20"
wal = "raum/d51b6dc32c681867d4168ceb5408f8ce"
yol = "raum/89036876d7fc916f521e7e1f3d4dafd9"
zwerge = "raum/db9501a54afc76b2046acd9b74264e9a"

stations = {}
stations.abt_alo = abt
stations.abt_apf = abt
stations.abt_cor = abt
stations.abt_min = abt
stations.abt_teich = abt
stations.abt_tor = abt
stations.abt_zwerge = abt
stations.affe_gol = "raum/692ec42948d7aad6c261e86fe1234164"
stations.alch_jas = "raum/fc7483910cff1ce37edd9c5e86941407"
stations.ale_haf = ale
stations.ale_jer = ale
stations.ale_los = ale
stations.ale_schmied = ale
stations.alo_abt = alo
stations.alo_apf = alo
stations.alo_ash = alo
stations.alo_barde = alo
stations.alo_cor = alo
stations.alo_form = alo
stations.alo_min = alo
stations.alo_orks = alo
stations.alo_papierfalter = alo
stations.alo_san = alo
stations.alo_teich = alo
stations.alo_tor = alo
stations.alo_wahrsager = alo
stations.alo_wlm = "raum/e4fdca13e0ce2426c14221923d632606"
stations.alo_zwerge = alo
stations.aloz_baecker = aloz
stations.aloz_bank = aloz
stations.aloz_gast1 = aloz
stations.aloz_gast2 = aloz
stations.aloz_haendler = aloz
stations.aloz_haf = aloz
stations.aloz_leder = aloz
stations.aloz_makler = aloz
stations.aloz_post = aloz
stations.aloz_werkzeug = aloz
stations.aloz_zlm1 = aloz
stations.aloz_zlm2 = aloz
stations.amp_aug = amp
stations.amp_haf = amp
stations.amp_ker = amp
stations.amp_umi = amp
stations.amp_wl = amp
stations.anl_camp = "raum/94c562aea6a4c8dbfa806a300e606a67"
stations.anl_jas = "raum/ee3c3c1c0253411c59d08f840b03bfa5"
stations.anl_run = "raum/418d074076dd1044b3d7e112409e1ebc"
stations.anl_skal = "raum/99400fa30f84fbef5e0ae22073d3103c"
stations.anl_tempel = "raum/9707dcb670ff8099379ba47d070cec66"
stations.anl_tief = "raum/4a57118ca30109b0f8c302b90f042ee2"
stations.anl_toe = "raum/dbdd3fa4c2e44faedb10b180a535d955"
stations.apf_abt = apf
stations.apf_alo = apf
stations.apf_ash = apf
stations.apf_cor = apf
stations.apf_min = apf
stations.apf_teich = apf
stations.apf_zwerge = apf
stations.arg_ruw = "raum/d6fa8bda433d41d3bb6ea24d52d0351d"
stations.ash_alo = ash
stations.ash_apf = ash
stations.ash_barde = ash
stations.ash_dichter = ash
stations.ash_druide = ash
stations.ash_form = ash
stations.ash_min = ash
stations.ash_san = ash
stations.ash_teich = ash
stations.ash_tor = ash
stations.ash_wlm = ash
stations.ash_zwerge = ash
stations.ashz_bank = ashz
stations.ashz_gast = ashz
stations.ashz_haendler = ashz
stations.ashz_lotterie = ashz
stations.ashz_makler = ashz
stations.ashz_post = ashz
stations.ashz_therme = ashz
stations.ashz_wlm = ashz
stations.ashz_zlm = ashz
stations.aug_amp = aug
stations.aug_bank = aug
stations.aug_haendler = aug
stations.aug_haf = aug
stations.aug_ker = aug
stations.aug_makler = aug
stations.aug_mos = aug
stations.aug_troph = aug
stations.aug_winsel = aug
stations.baecker_aloz = "raum/f8f9e9059a7816fe410b03e1e29e2b9f"
stations.bank_aloz = "raum/1d69ce4b15bd02f4b94d8259c20ac567"
stations.bank_aug = "raum/80623eb8d90046ad2a76a39714d7493e"
stations.bank_ashz = "raum/b2b59cdcef2d62792c6b8224f161403d"
stations.bank_corz = "raum/04b7d55df416e3dbd5276b14d4276f1a"
stations.bank_dhun2 = "raum/10c05c2717a68aad52dbca1ea23197d5"
stations.bank_haendler = "raum/b2b59cdcef2d62792c6b8224f161403d"
stations.bank_ilme = "raum/44f0bc731a6c345759b1859f1f12d666"
stations.bank_jas = "raum/2073e999bab9bfd03ac0284d4bb5874d"
stations.bank_jer = "raum/e60306e79b263b6b12bf1ca6bd6ad296"
stations.bank_lor = "raum/75fa398fa51deb97a85019b70ce16b2c"
stations.bank_min = "raum/a4f92dfb105aa948520c4ce4c7fc9883"
stations.bank_mio = "raum/f8323d89d79431f63832b6b106a515d8"
stations.bank_ril = "raum/ff3e85689bd616e338062cdb65705fb4"
stations.bank_skal = "raum/f9f98ba451a4136698628df6ed6725d2"
stations.bank_umi = "raum/cca4c7c3175c047fc666cd5d622c465b"
stations.bank_us = "raum/e0d6ffaac273fafd37ff5d939e5d3162"
stations.bank_wal = "raum/d2107ba67442f336ed8fe2c2ae57b0eb"
stations.bank_yol = "raum/088a96fa5238fba6e9b5dfb6454e94f3"
stations.barde_alo = "raum/1c302a5cf22d90bb22637ce51586eadc"
stations.barde_ash = "raum/6da4291daf02cede2e6b4bf77e121003"
stations.barde_hol = "raum/aa55145c1921ad6b5fe2c507df329180"
stations.barde_ker = "raum/a367bd1c73a75a5071a541a8a0c12e26"
stations.barde_lor = "raum/a27b0166f12df8d8da00dbd7881634e9"
stations.barde_mio = "raum/100db20df2eccaa3960b40e75d153195"
stations.barde_ril = "raum/d1560104d74cb49d4602b4f4b969e5ad"
stations.barde_ruw = "raum/d2aa50ad01baf605f5e92a47e814dfcf"
stations.barde_san = "raum/c1cd9335a2dd1e71ee50c60eaba4f14d"
stations.barde_skal = "raum/c31e1ad35e825c85a2ad09e5ec4bf7a8"
stations.barde_sol = "raum/d8ce50677d754b8dbdd58b80b0712608"
stations.barde_tin = "raum/b7b1beb946b25bdc47bddcab6579e991"
stations.barde_tol = "raum/350250fc59347acbda9b914b82fbe134"
stations.barde_zwerge = "raum/454500e19bdf9c2c9a53d26dee5339e2"
stations.bote_mio = "raum/f47930938fc00693093fcf024719e252"
stations.bruecke_muw = "raum/2f355ff38379d6d36adecb498d95f930"
stations.bruecke_muw2 = "raum/2f355ff38379d6d36adecb498d95f930"
stations.camp_anl = camp
stations.camp_dk = camp
stations.camp_druide = camp
stations.camp_haendler = camp
stations.camp_kap = camp
stations.camp_mine = camp
stations.camp_see = camp
stations.camp_skal = camp
stations.camp_stangenschloss = camp
stations.camp_tempel = camp
stations.camp_tief = camp
stations.camp_ts = camp
stations.camp_uw = camp
stations.cinnog_tol = "raum/f4e20ad706907d4ba3fd1eec4ae799b1"
stations.cor_abt = cor
stations.cor_alo = cor
stations.cor_apf = cor
stations.cor_druide = cor
stations.cor_form = cor
stations.cor_min = cor
stations.cor_san = cor
stations.cor_teich = cor
stations.cor_tor = cor
stations.cor_zwerge = cor
stations.corz_bank = corz
stations.corz_haendler = corz
stations.corz_haf = "raum/e43e39a401794260080bd8750d5a0618"
stations.corz_makler = corz
stations.corz_post = corz
stations.corz_wlm = corz
stations.corz_zlm = corz
stations.dhun_haf = dhun
stations.dhun_min = dhun
stations.dhun_nuel = dhun
stations.dhun_uw = dhun
stations.dhun_wlm1 = "raum/e004dda09968e9a63464ea2191c6cede"
stations.dhun_wlm2 = "raum/e004dda09968e9a63464ea2191c6cede"
stations.dhun_zwerge = dhun
stations.dhun0_haendler = "raum/5dfe55b0c8d769e865fd85ba63127fbc"
stations.dhun0_schmied = "raum/5dfe55b0c8d769e865fd85ba63127fbc"
stations.dhun2_bank = "raum/7380c211fa363daa4ea79a849a74027a"
stations.dhun2_gast = "raum/7380c211fa363daa4ea79a849a74027a"
stations.dhun2_haendler = "raum/7380c211fa363daa4ea79a849a74027a"
stations.dhun2_makler = "raum/7380c211fa363daa4ea79a849a74027a"
stations.dhun2_post = "raum/7380c211fa363daa4ea79a849a74027a"
stations.dhun3_wlm1 = "raum/62733b0fc85683d590345e3ba8fe9bcc"
stations.dhun3_wlm2 = "raum/62733b0fc85683d590345e3ba8fe9bcc"
stations.dhun3_zlm = dhun3
stations.dichter_ash = "raum/07e730bb54564fd4c15a3e4e7d8e325d"
stations.dinsel_hoehle = "raum/f0b13f44c08fb2291f8ccddb81588a94"
stations.dinsel_jas = "raum/4405d3cc8b5a9de94d8683b2e7fa38b6"
stations.dk_camp = "raum/c9654fc89fd112b98001fce9a7757f1c"
stations.dk_uw = "raum/c9654fc89fd112b98001fce9a7757f1c"
stations.dol_druide = "raum/e706292e95fc6035903700e9e032ef05"
stations.dol_haf = "raum/e706292e95fc6035903700e9e032ef05"
stations.druide_ash = "raum/46d7a8dcd021e019a6b3aba51638a5e3"
stations.druide_camp = "raum/6fa2a223044358a4ef98d146d4622182"
stations.druide_cor = "raum/14ba12f0b709eda0508cdaefea6403ad"
stations.druide_dol = "raum/9426a04dc59df931f10d9c7573c92ccf"
stations.druide_lim = "raum/c209604ad7892060be488de3cd8dabb3"
stations.druide_lor = "raum/64ecce583b1d9fecd364c1e3ff1edd2a"
stations.druide_los = "raum/92ba66ebbe407c119ec8e6b92c86dd0a"
stations.druide_min = "raum/c4186a47f2115139c6e7261f06277eac"
stations.druide_sol = "raum/98d2c77d43d9090528adb1d740d14349"
stations.druide_tol = "raum/858557b70ce054fc1fd3f8b5c08aff5e"
stations.druide_zwerge = "raum/516bd1b3cd28efc9ee950c20a7326faf"
stations.dturm_yol = "raum/dac9a18bd9e37da11bfdd83573dc5874"
stations.dun_haf = "raum/791ee7725e5ef47ee76e62cd108c7721"
stations.farm_hol = "raum/af886c0398c1a7633d67b25ecd21f315"
stations.form_alo = "raum/b21d34351bb7e15e2d892dc8655a079e"
stations.form_ash = "raum/c4494c4dca579cf62f6af1dcc6e0b65e"
stations.form_cor = "raum/59af42e64f5e09afa77d670147430c3b"
stations.form_min = "raum/fec14a5d61754d7d899ec62d15527aa2"
stations.form_sol = "raum/a070d55ba96aa72706f9369a7d44bd6c"
stations.form_tol = "raum/caa9d6a78d7f9c7fd34774cc9b4e049a"
stations.form_zwerge = "raum/9c68db550b53110505961914c47c4df5"
stations.gast_ashz = "raum/107e0608db24dee1136396c8ef609310"
stations.gast_dhun2 = "raum/f19e3c04c2c88c7ab61ce5e3aee6893c"
stations.gast_haf = "raum/6a2bcbe17f0443c9203c184034235e60"
stations.gast_min = "raum/1aa8679dae51c2b17b6b9c1883c9ef0a"
stations.gast1_aloz = "raum/b3e12f5b9b9e4330fee7a36526cc1377"
stations.gast2_aloz = "raum/3db33705db9d88784566b273dd29936e"

stations.gol_affe = "raum/015ca4c68d90adbf6cd212253cd1706a"
stations.gol_mio = "raum/f89471a84624f8248c978a8b8b8ceb9b"
stations.gol_mine = "raum/015ca4c68d90adbf6cd212253cd1706a"
stations.gwen_haendler = gwen
stations.gwen_haf = gwen
stations.gwen_jagd = gwen
stations.gwen_schmied = gwen
stations.gwen_siedlung = gwen
stations.gwen_tin = gwen
stations.gwen_zlm = gwen
stations.haendler_aloz = "raum/7a71c11e797bc94301b6ba15ee48124d"
stations.haendler_ashz = "raum/ccb82ff23c8a469373789a071b80149c"
stations.haendler_aug = "raum/a1c751fce83838d83bcd5e0bbf72a5a5"
stations.haendler_bank = "raum/ccb82ff23c8a469373789a071b80149c"
stations.haendler_camp = "raum/aec143c23d4c309bbf0a272e9e8fbe1a"
stations.haendler_corz = "raum/5391ea97794e4d4e7c8ca5f734f9910f"
stations.haendler_dhun0 = "raum/047d287961f1b75b23edcaa09f876f8f"
stations.haendler_dhun2 = "raum/bda960c71429a15fb529c130459aeab5"
stations.haendler_gwen = "raum/5119621acbceb2b999d84a89925d5845"
stations.haendler_ilme = "raum/76390f82483218c4f34638f78a519d8b"
stations.haendler_jas = "raum/55eaaa35e93f1693d5bbb685e3980a67"
stations.haendler_jer = "raum/a3a026a79f2cc4fddb0847cd46b1fadb"
stations.haendler_ker = "raum/b0d6490e26f9b529e1821c6ad5520355"
stations.haendler_lor = "raum/0f9c55bf250e4ad816cdceede226a054"
stations.haendler_min = "raum/7dedeeebd064e446df9720d2665b0fd7"
stations.haendler_mio = "raum/4f84a6165ccd462fb80957e17f6c4b4b"
stations.haendler_mos = "raum/3ed728e4cf2d38f076e8c932321b0ecb"
stations.haendler_ril = "raum/8273fd8f79ca4abeb94d0d6568e3c4af"
stations.haendler_skal = "raum/96bdfcdf4a7e0b169800ec3d4504ac39"
stations.haendler_umi = "raum/bbbd297364e5f9a402e52af576ca5afa"
stations.haendler_us = "raum/4ef6d4918856d027cf1d728aacc432c4"
stations.haendler_wal = "raum/14d8914348ed7beb7294706b3c260bae"
stations.haf_ale = loshaf
stations.haf_aloz = "raum/e28caa04f27498834d00756f2eccd2f6"
stations.haf_amp = amphaf
stations.haf_aug = amphaf
stations.haf_corz = "raum/ad9e6d2c51cc4878dfdad2e664c3cf02"
stations.haf_dhun = "raum/e9345a4265fbf3cb3576edeb2bd9250a"
stations.haf_dol = "raum/93804619cea283877cde3fd8a8581333"
stations.haf_dun = "raum/c4f3980a3bb496da0d4646f4195625d6"
stations.haf_gast = "raum/63ab4d672c1bb5fbac5bc23f3b31396b"
stations.haf_gwen = "raum/10881e7e62b006afee9816649642327f"
stations.haf_hol = "raum/63ab4d672c1bb5fbac5bc23f3b31396b"
stations.haf_ilme = tolhaf
stations.haf_jas = "raum/b303671ed42d6fc79297397fb8171c71"
stations.haf_jer = loshaf
stations.haf_ker = amphaf
stations.haf_koch = "raum/63ab4d672c1bb5fbac5bc23f3b31396b"
stations.haf_lim = "raum/63ab4d672c1bb5fbac5bc23f3b31396b"
stations.haf_lor = "raum/51c6d00a73fae493f310ba99895a8f1e"
stations.haf_min = "raum/a8fecc7971c9e7ec1f27e22cc0009152"
stations.haf_sol = "raum/2bb629d877a810d8746ce7fc51884fee"
stations.haf_tol = tolhaf
stations.haf_umi = amphaf
stations.haf_ver = loshaf
stations.haf_vul = "raum/f35d335387b00ddca20c8572aef1a126"
stations.haf2_umi = "raum/6c8a85b417c97e660fc1ca0c05986364"
stations.hain_sol = "raum/45f6cb3c6a8b3a90ab146ec7c8c2a985"
stations.her_hol = "raum/fbb85ec48b6ccccbdc957882e1436a2c"
stations.her_lim = "raum/fbb85ec48b6ccccbdc957882e1436a2c"
stations.hoehle_dinsel = "raum/e6a28e48857a6b28dd983d92de8cdd16"
stations.hol_barde = hol
stations.hol_farm = hol
stations.hol_haf = hol
stations.hol_her = hol
stations.hol_jagd = hol
stations.hol_koch = hol
stations.hol_lim = hol
stations.hol_mine = hol
stations.htoe_wtoe = "raum/37238d5027e07dd53dff22692785455e"
stations.ilme_bank = ilme
stations.ilme_haendler = ilme
stations.ilme_haf = ilme
stations.ilme_makler = ilme
stations.ilme_post = ilme
stations.ilme_tol = "raum/fc982966d5469bea1cd5fe8266997d58"
stations.ilme_uw = ilme
stations.ilme_wlm1 = ilme
stations.ilme_wlm2 = ilme
stations.ilme_zlm1 = ilme
stations.ilme_zlm2 = ilme
stations.imker_min = "raum/4306f333c6a0c4cdc26472e8eed13235"
stations.jagd_gwen = "raum/6913ea429bac1520415ae076e4dc85a8"
stations.jagd_hol = "raum/04fb02fd8d0e5212bc144eda154b05fd"
stations.jagd_tin = "raum/6913ea429bac1520415ae076e4dc85a8"
stations.jas_alch = jas
stations.jas_anl = jas
stations.jas_bank = jas
stations.jas_dinsel = jas
stations.jas_haendler = jas
stations.jas_haf = jas
stations.jas_moor = jas
stations.jas_nekro = jas
stations.jas_post = jas
stations.jas_schmied = jas
stations.jas_tempel = jas
stations.jas_toe = jas
stations.jas_uw = jas
stations.jas_zlm = jas
stations.jer_ale = jer
stations.jer_bank = jer
stations.jer_haendler = jer
stations.jer_haf = jer
stations.jer_los = jer
stations.jer_schmied = jer
stations.jer_ver = jer
stations.jer_zlm = jer
stations.kap_camp = kap
stations.kap_ril = "raum/b266f07355fd3005a181a08a58409649"
stations.kap_tempel = kap
stations.kap_uw = kap
stations.ker_amp = ker
stations.ker_aug = ker
stations.ker_barde = ker
stations.ker_haendler = ker
stations.ker_haf = ker
stations.ker_mos = ker
stations.ker_run = ker
stations.ker_troph = ker
stations.ker_wlm = ker
stations.ker_zlm = ker
stations.koch_haf = "raum/6675b678e153063003c188f8c021b05a"
stations.koch_hol = "raum/6675b678e153063003c188f8c021b05a"
stations.leder_aloz = "raum/05f376d741238d1ba03483b425d29076"
stations.leder_tol = "raum/5f142d9939df870cde231f8704d17227"
stations.lederer_mio = "raum/e056d17d21ec278b3df3541aee285604"
stations.lim_druide = "raum/8b1b11b86e425b2d294c51cf4fa9fb26"
stations.lim_haf = "raum/8b1b11b86e425b2d294c51cf4fa9fb26"
stations.lim_her = "raum/8b1b11b86e425b2d294c51cf4fa9fb26"
stations.lim_hol = "raum/8b1b11b86e425b2d294c51cf4fa9fb26"
stations.lim_makler = lim
stations.lim_muehle = lim
stations.lim_schmied = lim
stations.lor_bank = lor
stations.lor_barde = lor
stations.lor_druide = lor
stations.lor_haendler = lor
stations.lor_haf = lor
stations.lor_mine = lor
stations.lor_zlm = lor
stations.los_ale = los
stations.los_druide = los
stations.los_jer = los
stations.los_ver = los
stations.los_zlm = los
stations.lotterie_ashz = "raum/9d818b7c3500cbbb7d0c572544616161"
stations.makler_aloz = "raum/de69b783f8ea3872c43931a6e973ae0e"
stations.makler_ashz = "raum/c0088c7d8ce11eaaeb3bd73bce338702"
stations.makler_aug = "raum/c9b95950c2ae1f9675cbe655fd8353e3"
stations.makler_corz = "raum/77f7a75dc9e03efe828b55ac64cdf0e4"
stations.makler_dhun2 = "raum/7c9a3f9da5cdaa524a67a0c937d1a9c5"
stations.makler_ilme = "raum/40a3121ad51e784212061c194a369319"
stations.makler_lim = "raum/eaad0d7c95f62d18f2748918491c8f1e"
stations.makler_min = "raum/2b70ebf7803695e1319d2a396f935e82"
stations.makler_mio = "raum/c3b2095df30b1b92d465671f166c530c"
stations.makler_siedlung = "raum/d1240a607b0708dc39384f97300af4b3"
stations.makler_skal = "raum/8a4b2dd0f70842bb825f952f949c2a27"
stations.makler_sol = "raum/348814c0cbdcdd113b9df64c5b303025"
stations.makler_us = "raum/d621c8b0d35ef13274b707de37c0b81f"
stations.makler_wal = "raum/fd07ef8308a282150ab2b4dac708f092"
stations.min_abt = min
stations.min_alo = min
stations.min_apf = min
stations.min_ash = min
stations.min_bank = min
stations.min_cor = min
stations.min_dhun = min
stations.min_druide = min
stations.min_form = min
stations.min_gast = min
stations.min_haf = min
stations.min_haendler = min
stations.min_imker = min
stations.min_zlm = min
stations.min_makler = min
stations.min_mio = min
stations.min_post = min
stations.min_quelle = min
stations.min_san = min
stations.min_schlucht = min
stations.min_teich = min
stations.min_tor = min
stations.min_uturm = min
stations.min_uw = min
stations.min_wlm = min
stations.min_zwerge = min
stations.mio_bank = mio
stations.mio_barde = mio
stations.mio_bote = mio
stations.mio_gol = mio
stations.mio_haendler = mio
stations.mio_lederer = mio
stations.mio_makler = mio
stations.mio_min = mio
stations.mio_schmied = mio
stations.mio_stadtwache = mio
stations.mio_wlm1 = mio
stations.mio_wlm2 = mio
stations.mio_zlm1 = mio
stations.mio_zlm2 = mio
stations.mine_camp = "raum/eb3dde366ada7897e1103a7801c96aac"
stations.mine_gol = "raum/87008bdc3ba56efa1ca520b015701dcf"
stations.mine_hol = "raum/9ed8f65d6b60683ef545cc85b3818e41"
stations.mine_lor = "raum/920e14f6bdb889346521a46d281d36cd"
stations.mine_por = "raum/2fbea3e0f79a113840639a20196730e0"
stations.mine_ruw = "raum/9e410143fdd6b61240794f7e0ca4afbf"
stations.mine_tin = "raum/c453618c9e5c1fc4e21465114eadb883"
stations.mine_us = "raum/57fb1988f4257901d9c8fbf15be170b8"
stations.mine_uw = "raum/1fb0b2b48e96335ca5d09ab2137315f3"
stations.moor_jas = "raum/a80d2d97e77a5d6f7f2bf9c2d2d19364"
stations.moor_nekro = "raum/a80d2d97e77a5d6f7f2bf9c2d2d19364"
stations.mos_aug = mos
stations.mos_haendler = mos
stations.mos_ker = mos
stations.muehle_lim = "raum/82dfb814ead873764262de7e97b1c39d"
stations.muw_bruecke = "raum/cc1dab284a9b7f636cc0132d7809f14a"
stations.muw_muw2 = "raum/cc1dab284a9b7f636cc0132d7809f14a"
stations.muw_spalt = "raum/cc1dab284a9b7f636cc0132d7809f14a"
stations.muw_wlm = "raum/cc1dab284a9b7f636cc0132d7809f14a"
stations.muw2_bruecke = "raum/fa2f28795adbaec8c3e9696b4eed49ea"
stations.muw2_muw = "raum/fa2f28795adbaec8c3e9696b4eed49ea"
stations.nekro_jas = nekro
stations.nekro_moor = nekro
stations.nekro_uw = nekro
stations.nuel_dhun = nuel
stations.nuel_uw = nuel
stations.nuel_zwerge = nuel
stations.orks_alo = "raum/5bc897b006a7f64bd8ac5606382df2b6"
stations.papierfalter_alo = "raum/c2b98600fcedfc6d50dac98f665c47f9"
stations.por_mine = "raum/d54cd830e2e89f97d28ed47e89e46995"
stations.por_ril = "raum/d54cd830e2e89f97d28ed47e89e46995"
stations.por_uw = "raum/e63b887cab42a5455a25e0cb0ed2417f"
stations.post_aloz = "raum/54ea42592b7ba84f5157eeaeaa101052"
stations.post_ashz = "raum/3e5e2fbb4cbf27eedaf8988e994ebb20"
stations.post_corz = "raum/47f7ae8bc73e63130d553c7525d5c647"
stations.post_dhun2 = "raum/80503ae07f9214b2404a67438c91bb76"
stations.post_ilme = "raum/80c9a7ae717170ecc9bbf36179c65d06"
stations.post_jas = "raum/a98b0f36be694fbdd703fea2f6169732"
stations.post_min = "raum/1a0f901489449df0d68ca3c4e0a96796"
stations.post_ril = "raum/22913a107af377e7d8693810175444b7"
stations.post_skal = "raum/85cf388c659b5a0f7e50bdd840f6837f"
stations.post_umi = "raum/fce83aab0989212dde965098d8928c90"
stations.post_wal = "raum/a0081825fc22e3f5b5df95ad167b21e9"
stations.quelle_min = quelle
stations.quelle_san = quelle
stations.ril_bank = ril
stations.ril_barde = ril
stations.ril_haendler = ril
stations.ril_kap = ril
stations.ril_zlm = ril
stations.ril_por = ril
stations.ril_post = ril
stations.ril_wlm = ril
stations.run_anl = "raum/b2023aafb9649be63f90005ff426b6ae"
stations.run_ker = "raum/6a54972b10db962348fc83844408ab3d"
stations.ruw_arg = "raum/85371d2ae3f3317b3a55ba03192c9eaa"
stations.ruw_barde = "raum/85371d2ae3f3317b3a55ba03192c9eaa"
stations.ruw_mine = "raum/85371d2ae3f3317b3a55ba03192c9eaa"
stations.ruw_scheidung = "raum/85371d2ae3f3317b3a55ba03192c9eaa"
stations.san_alo = san
stations.san_ash = san
stations.san_barde = san
stations.san_cor = san
stations.san_min = san
stations.san_quelle = san
stations.san_tor = san
stations.san_zwerge = san
stations.scheidung_ruw = "raum/cc17c2ed10db4a59cd6ad058e642ea4c"
stations.schlucht_min = "raum/fa398dc34af4fa62e711156aeb872a9d"
stations.schmied_ale = "raum/6329f60dfefc8695b7059262f8622be4"
stations.schmied_dhun0 = "raum/927255e39142c68b0ebd8b58203aef0b"
stations.schmied_gwen = tinschmied
stations.schmied_jas = "raum/1a82ead269b2721ac31eb904da6bdfd8"
stations.schmied_jer = "raum/6329f60dfefc8695b7059262f8622be4"
stations.schmied_lim = "raum/2a76d2fbc07a9652d09bd5a82d81b0fc"
stations.schmied_mio = "raum/789d26f599d0a4a067868c775fd5c930"
stations.schmied_siedlung = tinschmied
stations.schmied_skal = "raum/5ad5d019caf27facca08754f01b9ed9b"
stations.schmied_sol = "raum/7dbdb1b5fd8ce7253812bd195c424fa3"
stations.schmied_tol = "raum/68c6eaf2f63c009c0fe0fe7714c74154"
stations.schmied_ver = "raum/6329f60dfefc8695b7059262f8622be4"
stations.schmied_wal = "raum/b717b0217faaa6a1e4c85256df3fbcb5"
stations.schmied_yol = "raum/a2fa00bb6ef4b2a4e696a6d6c0375d54"
stations.see_camp = see
stations.see_tief = see
stations.siedlung_gwen = siedlung
stations.siedlung_makler = siedlung
stations.siedlung_schmied = siedlung
stations.siedlung_tin = siedlung
stations.skal_anl = skal
stations.skal_bank = skal
stations.skal_barde = skal
stations.skal_camp = skal
stations.skal_haendler = skal
stations.skal_zlm = skal
stations.skal_makler = skal
stations.skal_post = skal
stations.skal_schmied = skal
stations.skal_tief = skal
stations.skal_troph = skal
stations.skal_uw = skal
stations.skal_wlm1 = skal
stations.skal_wlm2 = skal
stations.slm_us = "raum/a15f8fde34f5facc75282a8b6f180e8c"
stations.sol_barde = sol
stations.sol_druide = sol
stations.sol_form = sol
stations.sol_haf = sol
stations.sol_hain = sol
stations.sol_makler = sol
stations.sol_schmied = sol
stations.spalt_muw = "raum/affa52b16202badbcc39569dcdcca1db"
stations.stadtwache_mio = "raum/284936d58da548de2d3ede75dd9b1958"
stations.stangenschloss_camp = "raum/b98595f9a188b3407975e41160f65ea5"
stations.tee_tol = "raum/b7999d53f30564e073f3f72e18fd5bcd"
stations.teich_abt = teich
stations.teich_alo = teich
stations.teich_apf = teich
stations.teich_ash = teich
stations.teich_cor = teich
stations.teich_min = teich
stations.teich_tor = teich
stations.teich_uw = teich
stations.teich_wunsch = teich
stations.teich_zwerge = teich
stations.tempel_anl = tempel
stations.tempel_camp = tempel
stations.tempel_jas = tempel
stations.tempel_kap = tempel
stations.tempel_uw = tempel
stations.therme_ashz = "raum/254aea651ae9a8784604c1215f58bf95"
stations.tief_anl = tief
stations.tief_camp = tief
stations.tief_see = tief
stations.tief_skal = tief
stations.tief_uw = tief
stations.tin_barde = tin
stations.tin_gwen = tin
stations.tin_jagd = tin
stations.tin_mine = tin
stations.tin_siedlung = tin
stations.tin_wl = tin
stations.toe_anl = toe
stations.toe_jas = toe
stations.toe_uw = toe
stations.toe_yol = toe
stations.tol_barde = tol
stations.tol_cinnog = tol
stations.tol_druide = tol
stations.tol_form = tol
stations.tol_haf = tol
stations.tol_ilme = tol
stations.tol_leder = tol
stations.tol_tee = tol
stations.tol_zlm1 = tol
stations.tol_zlm2 = tol
stations.tol_schmied = tol
stations.tor_abt = "raum/25f532c1edc30a82cd8fd82977f853ba"
stations.tor_alo = "raum/2bcb8b05509ef84ce6bb36dd50729e2c"
stations.tor_ash = "raum/bbf61be3631c2f5f9402bce3ffd9a795"
stations.tor_cor = "raum/00797360afb606f1a33f5a8342cc18c4"
stations.tor_min = "raum/af86dda24087a60231795e18e03b3b78"
stations.tor_san = "raum/044e996d908244b0bbb62e018d47d610"
stations.tor_teich = "raum/2bcb8b05509ef84ce6bb36dd50729e2c"
stations.tor_zwerge = "raum/9593dfdc9de52235fbcbcb84507ab690"
stations.troph_aug = "raum/fd8ae8d465b02f081e3f5b06402d1b57"
stations.troph_ker = "raum/f6bb25e56443f99ee2cf5f356181e0b9"
stations.troph_skal = "raum/b8e61ebe866ff63145f17072c0fa7ba5"
stations.troph_us = "raum/52d9081687d2baae6b2b58eeee1127e8"
stations.ts_camp = "raum/8505084c87b434c16ba439f047abaab3"
stations.umi_amp = umi
stations.umi_bank = umi
stations.umi_haendler = umi
stations.umi_haf = umi
stations.umi_haf2 = umi
stations.umi_post = umi
stations.umi_zlm = umi
stations.umi_wlm = umi
stations.us_bank = us
stations.us_haendler = us
stations.us_makler = us
stations.us_mine = us
stations.us_slm = us
stations.us_troph = us
stations.us_zwerge = us
stations.uturm_min = "raum/d3b273a63b2841bc3c5fcc81bf0a31a3"
stations.uw_camp = uw
stations.uw_dhun = uw_oben
stations.uw_dk = uw
stations.uw_ilme = "raum/f0edb0c34886662762d179996fa6f634"
stations.uw_jas = uw
stations.uw_kap = uw
stations.uw_min = uw_oben
stations.uw_mine = uw
stations.uw_nekro = uw
stations.uw_nuel = uw_oben
stations.uw_por = uw
stations.uw_skal = uw
stations.uw_teich = uw_oben
stations.uw_tempel = uw
stations.uw_tief = uw
stations.uw_toe = uw
stations.uw_wal = "raum/e59ff1b5893d131413aa6d385a9a4a29"
stations.uw_zwerge = uw_oben
stations.ver_haf = ver
stations.ver_jer = ver
stations.ver_los = ver
stations.ver_schmied = ver
stations.vul_haf = "raum/1bfb2548b8f2f988985d0e5a2cae3339"
stations.wahrsager_alo = "raum/4823cf696d43a9df30d39500380e4278"
stations.wal_bank = wal
stations.wal_haendler = wal
stations.wal_makler = wal
stations.wal_post = wal
stations.wal_schmied = wal
stations.wal_uw = wal
stations.werkzeug_aloz = "raum/6dbbd82c7075a19a116cdd56a1190397"
stations.winsel_aug = "raum/c327fd2104050cd7cfe9f08d218df252"
stations.wl_amp = "raum/feb6b971c32946a68ab49068fd5c5042"
stations.wl_tin = "raum/42f62fdfb745f33115afd6e4bb5309e6"
stations.wlm_alo = "raum/13ee806b29dd72de040a7b498613660b"
stations.wlm_ash = "raum/bf04da5e1cd00894c8cdafdc56d7e1ca"
stations.wlm_ashz = "raum/5aa3c1d71a430965e5529529bd433642"
stations.wlm_corz = "raum/8c28ed588888da3e2c17a550091005c0"
stations.wlm_ker = "raum/32f38c702c8dc32f97670d4a3486f8b2"
stations.wlm_min = "raum/ffcc1e26e2e43dc91037175ff3a1496c"
stations.wlm_muw = "raum/8eab5229e8459dbf8a81de84896032c2"
stations.wlm_ril = "raum/38817e644427f72b51bfd5fef18e433f"
stations.wlm_umi = "raum/81f260813111d0a73649a8b8bb76027b"
stations.wlm1_dhun = "raum/f2012cc76a4d46cc4ab79e590282e57a"
stations.wlm1_dhun3 = "raum/7364c0f8179b00902e87697844e173cb"
stations.wlm1_ilme = "raum/0be6ca4adefc8353bd2100fb34f1094f"
stations.wlm1_mio = "raum/90c08c9ebfa173ef4c0073c0968f7c2c"
stations.wlm1_skal = "raum/b34f804be668123f2900886af4c885e3"
stations.wlm2_dhun = "raum/b6b1146538147dd0090124ad4017eb6d"
stations.wlm2_dhun3 = "raum/0bde5beaba17beeb0c2af2bceb91de5f"
stations.wlm2_ilme = "raum/ddbb89202f537ceb15dfdef783d75969"
stations.wlm2_mio = "raum/91eee8bab920472f7e9ffbc50983c796"
stations.wlm2_skal = "raum/52f11a8f9bbf4c407f195c4c2369d9da"
stations.wtoe_htoe = "raum/ef85b0602a670ba70d0c4df3b4ecbdfe"
stations.wunsch_teich = "raum/645a3ae8528a2332752d481891cb0f8e"
stations.yol_bank = yol
stations.yol_dturm = "raum/89036876d7fc916f521e7e1f3d4dafd9"
stations.yol_schmied = yol
stations.yol_toe = yol
stations.zlm_ashz = "raum/c754fa94bc237ff74bd32e2782b40e4f"
stations.zlm_corz = "raum/635097e0d11f371677321c8d28563c7d"
stations.zlm_dhun3 = "raum/964aba9a128fd841514481eaba87be7e"
stations.zlm_gwen = "raum/3a49f9dde3a766f8114413854705fb4e"
stations.zlm_jas = "raum/eb5b201b8862e37dbb802285a0905501"
stations.zlm_jer = "raum/d616460ea86fcaf9fa4a5eea80850029"
stations.zlm_ker = "raum/2ab3287b5ad6181cbf56aa14cd4c7151"
stations.zlm_lor = "raum/59a3a571aa59ab91a917ee0dbb88747e"
stations.zlm_los = "raum/d616460ea86fcaf9fa4a5eea80850029"
stations.zlm_min = "raum/7219693e9924b6396a7416a5d6efb6b5"
stations.zlm_ril = "raum/312f337dfbb1c03b2ca6bb88357dae93"
stations.zlm_skal = "raum/2490c20f06708ed4addb4fc51ca816dd"
stations.zlm_umi = "raum/35a74d1c95eecadbaec816059407ca74"
stations.zlm1_aloz = "raum/73228bc5fb6f8dc01692a0179ff64685"
stations.zlm1_ilme = "raum/3bdfb9b7a849acade8dfbe95094cef8f"
stations.zlm1_mio = "raum/8a27d49f514fc549ebcf06678b82f64c"
stations.zlm1_tol = "raum/3bdfb9b7a849acade8dfbe95094cef8f"
stations.zlm2_aloz = "raum/5a763dd5120b0c73bd1f37a35ec10ad4"
stations.zlm2_ilme = "raum/00981bf47fa9ab872770071450b168e5"
stations.zlm2_mio = "raum/2b3183b7d87c288e131177d2489b2744"
stations.zlm2_tol = "raum/00981bf47fa9ab872770071450b168e5"
stations.zwerge_abt = zwerge
stations.zwerge_alo = zwerge
stations.zwerge_apf = zwerge
stations.zwerge_ash = zwerge
stations.zwerge_barde = zwerge
stations.zwerge_cor = zwerge
stations.zwerge_dhun = zwerge
stations.zwerge_druide = zwerge
stations.zwerge_form = zwerge
stations.zwerge_min = zwerge
stations.zwerge_nuel = zwerge
stations.zwerge_san = zwerge
stations.zwerge_teich = zwerge
stations.zwerge_tor = zwerge
stations.zwerge_us = zwerge
stations.zwerge_uw = zwerge
