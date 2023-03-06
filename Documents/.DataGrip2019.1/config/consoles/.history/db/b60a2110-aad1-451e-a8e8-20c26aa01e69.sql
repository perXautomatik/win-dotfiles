create table filteredTitles (
    title as text
);
;-- -. . -..- - / . -. - .-. -.--
create table filteredTitles (
    title text
);
;-- -. . -..- - / . -. - .-. -.--
create unique index filteredTitlesI on filteredTitles(title);
;-- -. . -..- - / . -. - .-. -.--
insert into filteredTitles(title) values 

('OneTab shared tabs'),
('https://toesuddenlyon.com/?wmi=60935&lp=24&max=10&clickid=4177c5ed5beacb388c8a5b9fc32287d3-9964-0127#'),
('https://toesuddenlyon.com/?wmi=60935&lp=24&max=10&clickid=1f3bbb347490fd3410e1830cd3db63fe-9964-0201#'),
('https://t9up.routgveriprt.com/?wmi=67354&lp=24&max=7&clickid=d62a72e91ea0ba1db6afd9fc3c546462&sub1=30332&sub2=296861#'),
('https://routgveriprt.com/?wmi=67354&lp=24&max=7&clickid=d62a72e91ea0ba1db6afd9fc3c546462&sub1=30332&sub2=296861#'),
('Fast Bookmark Scanner'),
('Bing'),
('2020 års årliga besöksenkät'),
('Virus Found'),
('Redirect Notice'),
('LiveJasmin.com - Hot Live Sex Shows!'),
('Google Översätt'),
('OneTab'),
('No matches were found'),
('Security Alert!'),
('Free Download 2020 – Download Free Antivirus & Security Suite - TotalAV.com'),
('Vinn gratissnurr'),
('Cherry Bookmarks'),
('Wait a moment, loading...'),
('bulk edit bookmarks - Sök på Google'),
('Visual bookmarks'),
('17-åriga Göran Nilsson köpte ett nytt hus åt sin mamma efter att ha tjänat miljontals euro online – Sweden'),
('fattievag - Google Search'),
('chrome bulk edit bookmarks - Google Search'),
('Tumblr'),
('TreatStudios'),
('Confirm Notifications'),
('satans music - Google Search'),
('Webmapper'),
('Smart History Classifier - Chrome Web Store'),
('To view the video, click the Allow button'),
('Sign in - Google Accounts'),
('History Master'),
('chrome visited images links - Sök på Google'),
('chrome autotag bookmarks - Sök på Google'),
('Google'),
('https://app.raindrop.io/#/account/welcome'),
('chrome mark visited images and links - Sök på Google'),
('Yahoo är nu en del av Verizon Media.'),
('Visited - Chrome Web Store'),
('Tree History - Chrome Web Store'),
('Options'),
('Bookmark beautifier - Chrome Web Store'),
('mf-02 - EMPFlix.com'),
('Starmarks'),
('Raindrop.io - Chrome Web Store'),
('Julio Arias: San Salvador, El Salvador.'),
('Histree - Chrome Web Store'),
('Gratis webcam: Live sex chatt och XXX kameror'),
('GitHub - jiacai2050/history-master: 📈📉📊A Firefox/Chrome extension to visualize browsing history, sync among different browsers!'),
('De topp 5 bästa ledigt dejtingsajterna 2020'),
('Brainsister'),
('Bookmarks'),
('https://www.ampugi334f.com/pph1aeej?key=0f22c1fd609f13cb7947c8cabfe1a90d&submetric=15077602'),
('hi Bookmarks - Chrome Web Store'),
('chrome visited images - Sök på Google'),
('chrome batchedit bookmarks - Bing'),
('XRayz Software - ClipCache Clipboard Manager | LinkStash Bookmark Manager'),
('Video'),
('Top Rated Hookup Sites'),
('SuperSorter - Chrome Web Store'),
('MOTHERLESS.COM - Go Ahead She Isnt Looking! : 404'),
('Loading...'),
('Browsing Graph'),
('Bookmarks Tagging - Chrome Web Store'),
('Bookmark Manager Speed Dial | Papaly - Chrome Web Store'),
('update bookmark title - Sök på Google'),
('Webmapper - Chrome Web Store');
;-- -. . -..- - / . -. - .-. -.--
drop view filtered;
;-- -. . -..- - / . -. - .-. -.--
create view filtered as
select * from urls left outer join filteredTitles using (title) where filteredTitles.title is null

 or title = url OR title is null
group by url order by visit_count, url,title;
;-- -. . -..- - / . -. - .-. -.--
select * from filtered;
;-- -. . -..- - / . -. - .-. -.--
th urlsWithDomain as ( create view juicyurlswithoutDomain as
    
   create table IF NOT EXISTS
       safe_dom as
    select 'github.com' domain
    union select 'google.com' union select 'google.se' union select 'mozilla.org' union select 'opera.com' union select 'raindrop.io' union select 'reddit.com' union select 'tumblr.com'
        ;
       create unique index safeDomI on safe_dom(domain)
       ;

   create table  IF NOT EXISTS unSafe_dom as select 
        '3animalsextube.com' domain union select 'xhamster.com' union select '1teentube.com' union select '213.174.156.59' union select '2shared.com' union select '3animalsextube.com' union select '6aa.info' union select '777xporn.com' union select '88.208.24.199' union select '88.208.24.205' union select '88.208.52.191' union select '88.208.58.83' union select '88.208.61.11' union select '88.208.61.4' union select '99.nudevista.com' union select 'adult-empire.com' union select 'adultrental.com' union select 'adv.h2porn.com' union select 'adxpartner.com' union select 'africanfucktour.com' union select 'africanfucktours.com' union select 'agriculteursgay.socialparody.com' union select 'ah-me.com' union select 'alphaporno.com' union select 'amateur-gangbangers.com' union select 'amateurfetishclips.com' union select 'amateurindex.com' union select 'ampugi334f.com' union select 'animalsex-tube.com' union select 'animalsexfun.com' union select 'askaguywholikesfatchicks.tumblr.com' union select 'askforporn.com' union select 'audrawolfmann.net' union select 'azgals.com' union select 'backetrut.pro' union select 'badjojo.com' union select 'bbwfuckpic.com' union select 'beastiality.com' union select 'bestialitygirls.com' union select 'bestialitysextaboo.com' union select 'bestialitytaboo.tv' union select 'bestialzoo.org' union select 'bigcamtube.com' union select 'blackbabesboned.com' union select 'blackbustybabes.com' union select 'blackmonsterride.com' union select 'blackonslut.com' union select 'blacksalamis.com' union select 'blog.youporn.com' union select 'board.freeones.com' union select 'bollywoodhungama.com' union select 'boobpedia.com' union select 'boomporntube.com' union select 'boysfood.com' union select 'bravomamas.com' union select 'britishbukkakebabes.com' union select 'cams.com' union select 'cdn1.mobile.spankwire.phncdn.com' union select 'cdn1.public.youporn.phncdn.com' union select 'clearclips.com' union select 'creatives.livejasmin.com' union select 'ct.adultrental.com' union select 'daily-bbw-porn.com' union select 'desigupshupp.com' union select 'desihoes.com' union select 'desitorrents.com' union select 'dinotube.com' union select 'dirtydoglinks.com' union select 'drtuber.com' union select 'easymovielink.blogspot.se' union select 'empflix.com' union select 'eoredi.com' union select 'eporner.com' union select 'erkiss.org' union select 'eroprofile.com' union select 'excaliburfilms.com' union select 'ezysl.com' union select 'fadsips.com' union select 'fadsoks.com' union select 'fantasti.cc' union select 'fapdu.com' union select 'fashionista.com' union select 'fatalfemdoms.com' union select 'fatmomtube.com' union select 'femefun.com' union select 'fitgirlsohyeah.tumblr.com' union select 'forumophilia.com' union select 'free-allure-amateur.dsnji4ft7ehx1ac3.co.cc' union select 'free-vidz.com' union select 'free-vintage.com' union select 'free.cbttube.com' union select 'freeones.com' union select 'freeones.se' union select 'freeporn.com' union select 'freethenipple.com' union select 'freshteenxxx.com' union select 'freshxxxtube.com' union select 'fuckinghomepage.com' union select 'fucksia.tumblr.com' union select 'fuckthegeek.com' union select 'full-online-movies.blogspot.se' union select 'galleries.hairy-women-pussy.net' union select 'galleries.videosz.com' union select 'gangbangbecky.com' union select 'gaybeast.com' union select 'girlscv.com' union select 'gotporn.com' union select 'grandpabangsgrandma.com' union select 'grannysex.in' union select 'h2freeporn.com' union select 'h2porn.com' union select 'hairyempire.com' union select 'hamster.com' union select 'hamsterhq.com' union select 'hamsterpremiumpass.com' union select 'hardcoredumper.com' union select 'hardsextube.com' union select 'hdvirgin.com' union select 'heavy-r.com' union select 'hilltopads.net' union select 'hindilinks4u.net' union select 'hits.britishbukkakebabes.com' union select 'homemoviestube.com' union select 'hotpornshow.com' union select 'hotsexyaunty.com' union select 'hottubeclips.com' union select 'hotxvideos.net' union select 'hqseek.com' union select 'huntmodelz.com' union select 'iafd.com' union select 'image-dreams.com' union select 'imagefap.com' union select 'images.arcadja.com' union select 'indianpornvideos2.com' union select 'instantresp.com' union select 'interracial-thumbs.org' union select 'interracialexpert.com' union select 'interracialexposed.com' union select 'interracialparty.net' union select 'jesporn.com' union select 'jimslip.com' union select 'jithuwap.mobie.in' union select 'join.wearehairy.com' union select 'justporno.tv' union select 'juxmovies.com' union select 'k9thumbs.org' union select 'keezmovies.com' union select 'kenny-glenn.net' union select 'keporn.com' union select 'keyporntube.com' union select 'klub.co.in' union select 'kporno.com' union select 'largeporntube.com' union select 'lesbiansfromindia.com' union select 'lifematures.com' union select 'livejasmin.com' union select 'longporntube.com' union select 'luxuretv.com' union select 'maturetubesite.net' union select 'mb.indecentes-voisines.com' union select 'mcxtube.com' union select 'message-alert.info' union select 'minkasicklinger.com' union select 'mistressdestiny.com' union select 'mobile.spankwire.com' union select 'moofmoof.com' union select 'motherless.com' union select 'moviefap.com' union select 'movies.askjolene.com' union select 'movieslinksfree.com' union select 'moviesvintage.com' union select 'mrsnake.com' union select 'mrstiff.com' union select 'my.nudevista.se' union select 'mylust.com' union select 'mypornbutler.com' union select 'myvaginasite.com' union select 'myvideo.de' union select 'myzoowife.com' union select 'nastydirectory.com' union select 'nastyvideotube.com' union select 'nataliedee.com' union select 'nesaporn.com' union select 'nonamebrdn36.live' union select 'nudevista.com' union select 'nudevista.se' union select 'nuggitgames.com' union select 'nuvid.com' union select 'oldgrannysex.net' union select 'one-tab.com' union select 'oopsmovs.com' union select 'overthumbs.com' union select 'panicporn.com' union select 'peeingshow.com' union select 'pervertslut.com' union select 'pikdit.com' union select 'pixocafe.com' union select 'planetpornvideos.com' union select 'popoholic.com' union select 'porn-w.org' union select 'porn-wikipedia.com' union select 'porn.com' union select 'pornbaytube.com' union select 'pornfay.org' union select 'porngeographic.com' union select 'pornhub.com' union select 'pornmd.com' union select 'pornobistro.com' union select 'pornorio.net' union select 'pornostars-collection.ru' union select 'pornoxo.com' union select 'pornqik.com' union select 'pornscum.com' union select 'pornskirt.com' union select 'pornsocket.com' union select 'pornsos.com' union select 'pornspark.com' union select 'pornstarnetwork.com' union select 'pornstarsjobs.com' union select 'porntitan.com' union select 'porntopic.com' union select 'porntubese.com' union select 'porntubesearch.org' union select 'porntubest.com' union select 'pornvideoq.com' union select 'pornvideos.rs' union select 'pornviet.net' union select 'pornwiki.com' union select 'pornxix.com' union select 'pornyeah.com' union select 'pornzoovideos.com' union select 'proporn.com' union select 'pussyteenporn.com' union select 'pussyteentube.com' union select 'rabbitsreviews.com' union select 'racialthumbs.com' union select 'rawtube.com' union select 'real-sexxx.com' union select 'redcitadel.com' union select 'redtoptube.com' union select 'redtube.com' union select 'retro-porn.maniacpass.com' union select 'retrotubeclips.com' union select 'rexxx.com' union select 'richporntube.com' union select 'riosso.xyz' union select 'routgveriprt.com' union select 'royalporntube.com' union select 'rude.com' union select 'rule34.paheal.net' union select 'scarlettsabet.com' union select 'sensibleerection.com' union select 'sex2mix.com' union select 'sexfreedomtube.com' union select 'sexmums.com' union select 'sexspaghetti.com' union select 'sextasytube.com' union select 'sextasytube.net' union select 'sextube.com' union select 'sextubest.com' union select 'sextubster.com' union select 'sexuhot.com' union select 'sexyfatgirls.net' union select 'sexylosers.com' union select 'shaggyblossom.com' union select 'sheamateur.com' union select 'shockingtube.com' union select 'showteensex.com' union select 'shufflecam.net' union select 'shufuni.com' union select 'slutload.com' union select 'spankbang.com' union select 'spankwire.com' union select 'spicysextube.com' union select 'start.badults.se' union select 'submityourtapes.com' union select 'sunporno.com' union select 'sxplanet.com' union select 'syndicpop.com' union select 'teen-movs.com' union select 'teenboat.com' union select 'teenpornstreams.com' union select 'teensoloporn.com' union select 'tensorflow.org' union select 'thingsmydickdoes.tumblr.com' union select 'thumbzilla.com' union select 'tjoob.com' union select 'tnaflix.com' union select 'toesuddenlyon.com' union select 'totalav.com' union select 'trinity-productions.com' union select 'trueamateurmodels.com' union select 'trustedporntube.com' union select 'tube.nu' union select 'tube8.com' union select 'tubebond.com' union select 'tubemonsoon.com' union select 'twomovies.name' union select 'usingenglish.com' union select 'utubefat.com' union select 'vaginapageant.com' union select 'vid2c.com' union select 'video.xnxx.com' union select 'videofreakz.com' union select 'videomasti.net' union select 'videos.videomasti.net' union select 'videosz.com' union select 'vidgrab.net' union select 'vidsvidsvids.com' union select 'vintage-computer.com' union select 'vintage-pinup.com' union select 'vintage.wanknews.com' union select 'vintageporn69.com' union select 'vintageporndrawings.porncolection.com' union select 'vintageporntv.com' union select 'violetmonroe.net' union select 'vodpornos.com' union select 'voyeurstyle.com' union select 'vp7.com' union select 'wanknews.com' union select 'wankspider.com' union select 'watch2porn.net' union select 'watchmovies7z.blogspot.se' union select 'wearehairy.com' union select 'whois.domaintools.com' union select 'widget.clips4sale.com' union select 'wild-galls.com' union select 'wivespornmovies.com' union select 'wtchporn.com' union select 'ww.youporn.com' union select 'ww.yuvutu.com' union select 'ww.zootube365.com' union select 'x99.nudevista.com' union select 'xfreehosting.com' union select 'xhamster.com' union select 'xhamsterhq.com' union select 'xhamsterpremium.com' union select 'xhamsterpremiumpass.com' union select 'xixtube.com' union select 'xlgirls.com' union select 'xnxx.com' union select 'xsharebox.com' union select 'xsharebox.com' union select 'xtube.com' union select 'xvideo.us' union select 'xvideohost.com' union select 'xvideos.com' union select 'xvideos.com' union select 'xvideosde.com' union select 'xvideoshome.com' union select 'xxbunker.com' union select 'xxdessert.com' union select 'xxgasm.com' union select 'xxlmag.com' union select 'xxvideo.us' union select 'xxvideoclips.us' union select 'xxxbunker.com' union select 'xxxdessert.com' union select 'xxxvideoclips.us' union select 'xxxvogue.net' union select 'yehfun.com' union select 'yehfun.com' union select 'yobt.com' union select 'yobt.com' union select 'youjizz.com' union select 'youjizzlive.com' union select 'youporn.com' union select 'yuppix.com' union select 'yuvutu.com' union select 'zoofilianet.com' union select 'zoofiliavids.com' union select 'zoomobileporn.com' union select 'zooskoolvideos.com' union select 'zootube365.com' union select 'zzztube.com'
   ;
   create unique index unSafeDomI on unSafe_dom(domain)
;
create view juicyurlswithoutDomain as
    with urlsWithDomain as (
select  *,(case
             when (INSTR(url, 'https://') = 1 OR INSTR(url, 'http://') = 1) then case
                when (INSTR(url, 'ww') <> 0)
                    then SUBSTR(SUBSTR(url, INSTR(url, '.') + 1), 1, INSTR(SUBSTR(url, INSTR(url, '.') + 1), '/') - 1)
                        else
                            SUBSTR(SUBSTR(url, INSTR(url, '//') + 2), 1, INSTR(SUBSTR(url, INSTR(url, '//') + 2), '/') - 1) end
             else case
                      when
                          (INSTR(url, '/') <> 0)
                          then
                          case
                              when (INSTR(url, 'ww') = 1)
                                  then substr(url, instr(url, '.')+1, INSTR(url, '/') - instr(url, '.')-1)
                              else SUBSTR(url, 1, INSTR(url, '/') - 1) end
                      else case
                               when
                                   (INSTR(url, '.') <> 0)
                                   then
                                   case
                                       when (INSTR(url, 'ww') = 1) then substr(url, instr(url, '.')+1, length(url))
                                       else url end
                               else ''
                          end end end
                        ) domain                 from urls)
    
  select urlsWithDomain.* from urlsWithDomain inner join unSafe_dom
 
    order by visit_count desc;
;-- -. . -..- - / . -. - .-. -.--
create table IF NOT EXISTS
       safe_dom as
    select 'github.com' domain
    union select 'google.com' union select 'google.se' union select 'mozilla.org' union select 'opera.com' union select 'raindrop.io' union select 'reddit.com' union select 'tumblr.com'
        ;
;-- -. . -..- - / . -. - .-. -.--
create table  IF NOT EXISTS unSafe_dom as select
        '3animalsextube.com' domain union select 'xhamster.com' union select '1teentube.com' union select '213.174.156.59' union select '2shared.com' union select '3animalsextube.com' union select '6aa.info' union select '777xporn.com' union select '88.208.24.199' union select '88.208.24.205' union select '88.208.52.191' union select '88.208.58.83' union select '88.208.61.11' union select '88.208.61.4' union select '99.nudevista.com' union select 'adult-empire.com' union select 'adultrental.com' union select 'adv.h2porn.com' union select 'adxpartner.com' union select 'africanfucktour.com' union select 'africanfucktours.com' union select 'agriculteursgay.socialparody.com' union select 'ah-me.com' union select 'alphaporno.com' union select 'amateur-gangbangers.com' union select 'amateurfetishclips.com' union select 'amateurindex.com' union select 'ampugi334f.com' union select 'animalsex-tube.com' union select 'animalsexfun.com' union select 'askaguywholikesfatchicks.tumblr.com' union select 'askforporn.com' union select 'audrawolfmann.net' union select 'azgals.com' union select 'backetrut.pro' union select 'badjojo.com' union select 'bbwfuckpic.com' union select 'beastiality.com' union select 'bestialitygirls.com' union select 'bestialitysextaboo.com' union select 'bestialitytaboo.tv' union select 'bestialzoo.org' union select 'bigcamtube.com' union select 'blackbabesboned.com' union select 'blackbustybabes.com' union select 'blackmonsterride.com' union select 'blackonslut.com' union select 'blacksalamis.com' union select 'blog.youporn.com' union select 'board.freeones.com' union select 'bollywoodhungama.com' union select 'boobpedia.com' union select 'boomporntube.com' union select 'boysfood.com' union select 'bravomamas.com' union select 'britishbukkakebabes.com' union select 'cams.com' union select 'cdn1.mobile.spankwire.phncdn.com' union select 'cdn1.public.youporn.phncdn.com' union select 'clearclips.com' union select 'creatives.livejasmin.com' union select 'ct.adultrental.com' union select 'daily-bbw-porn.com' union select 'desigupshupp.com' union select 'desihoes.com' union select 'desitorrents.com' union select 'dinotube.com' union select 'dirtydoglinks.com' union select 'drtuber.com' union select 'easymovielink.blogspot.se' union select 'empflix.com' union select 'eoredi.com' union select 'eporner.com' union select 'erkiss.org' union select 'eroprofile.com' union select 'excaliburfilms.com' union select 'ezysl.com' union select 'fadsips.com' union select 'fadsoks.com' union select 'fantasti.cc' union select 'fapdu.com' union select 'fashionista.com' union select 'fatalfemdoms.com' union select 'fatmomtube.com' union select 'femefun.com' union select 'fitgirlsohyeah.tumblr.com' union select 'forumophilia.com' union select 'free-allure-amateur.dsnji4ft7ehx1ac3.co.cc' union select 'free-vidz.com' union select 'free-vintage.com' union select 'free.cbttube.com' union select 'freeones.com' union select 'freeones.se' union select 'freeporn.com' union select 'freethenipple.com' union select 'freshteenxxx.com' union select 'freshxxxtube.com' union select 'fuckinghomepage.com' union select 'fucksia.tumblr.com' union select 'fuckthegeek.com' union select 'full-online-movies.blogspot.se' union select 'galleries.hairy-women-pussy.net' union select 'galleries.videosz.com' union select 'gangbangbecky.com' union select 'gaybeast.com' union select 'girlscv.com' union select 'gotporn.com' union select 'grandpabangsgrandma.com' union select 'grannysex.in' union select 'h2freeporn.com' union select 'h2porn.com' union select 'hairyempire.com' union select 'hamster.com' union select 'hamsterhq.com' union select 'hamsterpremiumpass.com' union select 'hardcoredumper.com' union select 'hardsextube.com' union select 'hdvirgin.com' union select 'heavy-r.com' union select 'hilltopads.net' union select 'hindilinks4u.net' union select 'hits.britishbukkakebabes.com' union select 'homemoviestube.com' union select 'hotpornshow.com' union select 'hotsexyaunty.com' union select 'hottubeclips.com' union select 'hotxvideos.net' union select 'hqseek.com' union select 'huntmodelz.com' union select 'iafd.com' union select 'image-dreams.com' union select 'imagefap.com' union select 'images.arcadja.com' union select 'indianpornvideos2.com' union select 'instantresp.com' union select 'interracial-thumbs.org' union select 'interracialexpert.com' union select 'interracialexposed.com' union select 'interracialparty.net' union select 'jesporn.com' union select 'jimslip.com' union select 'jithuwap.mobie.in' union select 'join.wearehairy.com' union select 'justporno.tv' union select 'juxmovies.com' union select 'k9thumbs.org' union select 'keezmovies.com' union select 'kenny-glenn.net' union select 'keporn.com' union select 'keyporntube.com' union select 'klub.co.in' union select 'kporno.com' union select 'largeporntube.com' union select 'lesbiansfromindia.com' union select 'lifematures.com' union select 'livejasmin.com' union select 'longporntube.com' union select 'luxuretv.com' union select 'maturetubesite.net' union select 'mb.indecentes-voisines.com' union select 'mcxtube.com' union select 'message-alert.info' union select 'minkasicklinger.com' union select 'mistressdestiny.com' union select 'mobile.spankwire.com' union select 'moofmoof.com' union select 'motherless.com' union select 'moviefap.com' union select 'movies.askjolene.com' union select 'movieslinksfree.com' union select 'moviesvintage.com' union select 'mrsnake.com' union select 'mrstiff.com' union select 'my.nudevista.se' union select 'mylust.com' union select 'mypornbutler.com' union select 'myvaginasite.com' union select 'myvideo.de' union select 'myzoowife.com' union select 'nastydirectory.com' union select 'nastyvideotube.com' union select 'nataliedee.com' union select 'nesaporn.com' union select 'nonamebrdn36.live' union select 'nudevista.com' union select 'nudevista.se' union select 'nuggitgames.com' union select 'nuvid.com' union select 'oldgrannysex.net' union select 'one-tab.com' union select 'oopsmovs.com' union select 'overthumbs.com' union select 'panicporn.com' union select 'peeingshow.com' union select 'pervertslut.com' union select 'pikdit.com' union select 'pixocafe.com' union select 'planetpornvideos.com' union select 'popoholic.com' union select 'porn-w.org' union select 'porn-wikipedia.com' union select 'porn.com' union select 'pornbaytube.com' union select 'pornfay.org' union select 'porngeographic.com' union select 'pornhub.com' union select 'pornmd.com' union select 'pornobistro.com' union select 'pornorio.net' union select 'pornostars-collection.ru' union select 'pornoxo.com' union select 'pornqik.com' union select 'pornscum.com' union select 'pornskirt.com' union select 'pornsocket.com' union select 'pornsos.com' union select 'pornspark.com' union select 'pornstarnetwork.com' union select 'pornstarsjobs.com' union select 'porntitan.com' union select 'porntopic.com' union select 'porntubese.com' union select 'porntubesearch.org' union select 'porntubest.com' union select 'pornvideoq.com' union select 'pornvideos.rs' union select 'pornviet.net' union select 'pornwiki.com' union select 'pornxix.com' union select 'pornyeah.com' union select 'pornzoovideos.com' union select 'proporn.com' union select 'pussyteenporn.com' union select 'pussyteentube.com' union select 'rabbitsreviews.com' union select 'racialthumbs.com' union select 'rawtube.com' union select 'real-sexxx.com' union select 'redcitadel.com' union select 'redtoptube.com' union select 'redtube.com' union select 'retro-porn.maniacpass.com' union select 'retrotubeclips.com' union select 'rexxx.com' union select 'richporntube.com' union select 'riosso.xyz' union select 'routgveriprt.com' union select 'royalporntube.com' union select 'rude.com' union select 'rule34.paheal.net' union select 'scarlettsabet.com' union select 'sensibleerection.com' union select 'sex2mix.com' union select 'sexfreedomtube.com' union select 'sexmums.com' union select 'sexspaghetti.com' union select 'sextasytube.com' union select 'sextasytube.net' union select 'sextube.com' union select 'sextubest.com' union select 'sextubster.com' union select 'sexuhot.com' union select 'sexyfatgirls.net' union select 'sexylosers.com' union select 'shaggyblossom.com' union select 'sheamateur.com' union select 'shockingtube.com' union select 'showteensex.com' union select 'shufflecam.net' union select 'shufuni.com' union select 'slutload.com' union select 'spankbang.com' union select 'spankwire.com' union select 'spicysextube.com' union select 'start.badults.se' union select 'submityourtapes.com' union select 'sunporno.com' union select 'sxplanet.com' union select 'syndicpop.com' union select 'teen-movs.com' union select 'teenboat.com' union select 'teenpornstreams.com' union select 'teensoloporn.com' union select 'tensorflow.org' union select 'thingsmydickdoes.tumblr.com' union select 'thumbzilla.com' union select 'tjoob.com' union select 'tnaflix.com' union select 'toesuddenlyon.com' union select 'totalav.com' union select 'trinity-productions.com' union select 'trueamateurmodels.com' union select 'trustedporntube.com' union select 'tube.nu' union select 'tube8.com' union select 'tubebond.com' union select 'tubemonsoon.com' union select 'twomovies.name' union select 'usingenglish.com' union select 'utubefat.com' union select 'vaginapageant.com' union select 'vid2c.com' union select 'video.xnxx.com' union select 'videofreakz.com' union select 'videomasti.net' union select 'videos.videomasti.net' union select 'videosz.com' union select 'vidgrab.net' union select 'vidsvidsvids.com' union select 'vintage-computer.com' union select 'vintage-pinup.com' union select 'vintage.wanknews.com' union select 'vintageporn69.com' union select 'vintageporndrawings.porncolection.com' union select 'vintageporntv.com' union select 'violetmonroe.net' union select 'vodpornos.com' union select 'voyeurstyle.com' union select 'vp7.com' union select 'wanknews.com' union select 'wankspider.com' union select 'watch2porn.net' union select 'watchmovies7z.blogspot.se' union select 'wearehairy.com' union select 'whois.domaintools.com' union select 'widget.clips4sale.com' union select 'wild-galls.com' union select 'wivespornmovies.com' union select 'wtchporn.com' union select 'ww.youporn.com' union select 'ww.yuvutu.com' union select 'ww.zootube365.com' union select 'x99.nudevista.com' union select 'xfreehosting.com' union select 'xhamster.com' union select 'xhamsterhq.com' union select 'xhamsterpremium.com' union select 'xhamsterpremiumpass.com' union select 'xixtube.com' union select 'xlgirls.com' union select 'xnxx.com' union select 'xsharebox.com' union select 'xsharebox.com' union select 'xtube.com' union select 'xvideo.us' union select 'xvideohost.com' union select 'xvideos.com' union select 'xvideos.com' union select 'xvideosde.com' union select 'xvideoshome.com' union select 'xxbunker.com' union select 'xxdessert.com' union select 'xxgasm.com' union select 'xxlmag.com' union select 'xxvideo.us' union select 'xxvideoclips.us' union select 'xxxbunker.com' union select 'xxxdessert.com' union select 'xxxvideoclips.us' union select 'xxxvogue.net' union select 'yehfun.com' union select 'yehfun.com' union select 'yobt.com' union select 'yobt.com' union select 'youjizz.com' union select 'youjizzlive.com' union select 'youporn.com' union select 'yuppix.com' union select 'yuvutu.com' union select 'zoofilianet.com' union select 'zoofiliavids.com' union select 'zoomobileporn.com' union select 'zooskoolvideos.com' union select 'zootube365.com' union select 'zzztube.com'
   ;
;-- -. . -..- - / . -. - .-. -.--
create view IF NOT EXISTS juicyurlswithoutDomain as
    with urlsWithDomain as (
select  *,(case
             when (INSTR(url, 'https://') = 1 OR INSTR(url, 'http://') = 1) then case
                when (INSTR(url, 'ww') <> 0)
                    then SUBSTR(SUBSTR(url, INSTR(url, '.') + 1), 1, INSTR(SUBSTR(url, INSTR(url, '.') + 1), '/') - 1)
                        else
                            SUBSTR(SUBSTR(url, INSTR(url, '//') + 2), 1, INSTR(SUBSTR(url, INSTR(url, '//') + 2), '/') - 1) end
             else case
                      when
                          (INSTR(url, '/') <> 0)
                          then
                          case
                              when (INSTR(url, 'ww') = 1)
                                  then substr(url, instr(url, '.')+1, INSTR(url, '/') - instr(url, '.')-1)
                              else SUBSTR(url, 1, INSTR(url, '/') - 1) end
                      else case
                               when
                                   (INSTR(url, '.') <> 0)
                                   then
                                   case
                                       when (INSTR(url, 'ww') = 1) then substr(url, instr(url, '.')+1, length(url))
                                       else url end
                               else ''
                          end end end
                        ) domain                 from urls)

  select urlsWithDomain.* from urlsWithDomain inner join unSafe_dom

    order by visit_count desc;
;-- -. . -..- - / . -. - .-. -.--
select * from juicyurlswithoutDomain;
;-- -. . -..- - / . -. - .-. -.--
create view NotApropirateDomain  as
with urlsWithDomain as (                            select *
                                                              ,
                                                       (case
             when (INSTR(url, 'https://') = 1 OR INSTR(url, 'http://') = 1)
	     then case
                when (INSTR(url, 'ww') < 10 AND INSTR(url, 'ww') <> 0)
                    then SUBSTR(
		    SUBSTR(url, INSTR(url, '.') + 1),
		    1,
		    INSTR(SUBSTR(url, INSTR(url, '.') + 1), '/') - 1)
                        else
                            SUBSTR(
			    SUBSTR(url, INSTR(url, '//') + 2),
			    1,
			    INSTR(SUBSTR(url, INSTR(url, '//') + 2), '/') - 1) end
             else case
                      when
                          (INSTR(url, '/') <> 0)
                          then
                          case
                              when (INSTR(url, 'ww') = 1)
                                  then substr(url,
				  instr(url, '.')+1,
				  INSTR(url, '/') - instr(url, '.')-1)
                              else SUBSTR(url, 1, INSTR(url, '/') - 1) end
                      else case
                               when
                                   (INSTR(url, '.') <> 0)
                                   then
                                   case
                                       when (INSTR(url, 'ww') = 1)
				       then substr(url, instr(url, '.')+1, length(url))
                                       else url end
                               else ''
                          end end end
                      ) domain
                 from urls )

 select max(id),max(title) t,max(url) m,sum(visit_count)v, urlsWithDomain.domain from (
                           select * from urlsWithDomain left outer join safe_dom using (domain) where safe_dom.domain is null

                     ))) as [*2] group by domain order by v desc,domain;
;-- -. . -..- - / . -. - .-. -.--
create view NotApropirateDomain  as
with urlsWithDomain as (                            select *
                                                              ,
                                                       (case
             when (INSTR(url, 'https://') = 1 OR INSTR(url, 'http://') = 1)
	     then case
                when (INSTR(url, 'ww') < 10 AND INSTR(url, 'ww') <> 0)
                    then SUBSTR(
		    SUBSTR(url, INSTR(url, '.') + 1),
		    1,
		    INSTR(SUBSTR(url, INSTR(url, '.') + 1), '/') - 1)
                        else
                            SUBSTR(
			    SUBSTR(url, INSTR(url, '//') + 2),
			    1,
			    INSTR(SUBSTR(url, INSTR(url, '//') + 2), '/') - 1) end
             else case
                      when
                          (INSTR(url, '/') <> 0)
                          then
                          case
                              when (INSTR(url, 'ww') = 1)
                                  then substr(url,
				  instr(url, '.')+1,
				  INSTR(url, '/') - instr(url, '.')-1)
                              else SUBSTR(url, 1, INSTR(url, '/') - 1) end
                      else case
                               when
                                   (INSTR(url, '.') <> 0)
                                   then
                                   case
                                       when (INSTR(url, 'ww') = 1)
				       then substr(url, instr(url, '.')+1, length(url))
                                       else url end
                               else ''
                          end end end
                      ) domain
                 from urls )
    select
     max(id),
     max(title) t,
     max(url) m,
     sum(visit_count) v,
     urlsWithDomain.domain from
     urlsWithDomain left outer join safe_dom using (domain) where
     safe_dom.domain is null
    group by
     domain order by
     v desc,
     domain;
;-- -. . -..- - / . -. - .-. -.--
drop view NotApropirateDomain;
;-- -. . -..- - / . -. - .-. -.--
create table IF NOT EXISTS
       safe_dom (
             domain text unique not null
                );
;-- -. . -..- - / . -. - .-. -.--
create unique index IF NOT EXISTS safeDomI on safe_dom(domain);
;-- -. . -..- - / . -. - .-. -.--
insert or ignore into safe_dom
                select 'github.com' domain  union select 'mozilla.org' union select 'opera.com' union select 'raindrop.io' union select 'reddit.com' union select '213.174.156.59';
;-- -. . -..- - / . -. - .-. -.--
create view IF NOT EXISTS NotApropirateDomain  as
with urlsWithDomain as (                            select *
                                                              ,
                                                       (case
             when (INSTR(url, 'https://') = 1 OR INSTR(url, 'http://') = 1)
	     then case
                when (INSTR(url, 'ww') < 10 AND INSTR(url, 'ww') <> 0)
                    then SUBSTR(
		    SUBSTR(url, INSTR(url, '.') + 1),
		    1,
		    INSTR(SUBSTR(url, INSTR(url, '.') + 1), '/') - 1)
                        else
                            SUBSTR(
			    SUBSTR(url, INSTR(url, '//') + 2),
			    1,
			    INSTR(SUBSTR(url, INSTR(url, '//') + 2), '/') - 1) end
             else case
                      when
                          (INSTR(url, '/') <> 0)
                          then
                          case
                              when (INSTR(url, 'ww') = 1)
                                  then substr(url,
				  instr(url, '.')+1,
				  INSTR(url, '/') - instr(url, '.')-1)
                              else SUBSTR(url, 1, INSTR(url, '/') - 1) end
                      else case
                               when
                                   (INSTR(url, '.') <> 0)
                                   then
                                   case
                                       when (INSTR(url, 'ww') = 1)
				       then substr(url, instr(url, '.')+1, length(url))
                                       else url end
                               else ''
                          end end end
                      ) domain
                 from urls )
    select
     max(id),
     max(title) t,
     max(url) m,
     sum(visit_count) v,
     urlsWithDomain.domain from
     urlsWithDomain left outer join safe_dom using (domain) where
     safe_dom.domain is null
    group by
     domain order by
     v desc,
     domain;
;-- -. . -..- - / . -. - .-. -.--
create table IF NOT EXISTS
       unSafe_dom ( domain text unique not null);
;-- -. . -..- - / . -. - .-. -.--
create unique index IF NOT EXISTS unSafeDomI on unSafe_dom(domain);
;-- -. . -..- - / . -. - .-. -.--
insert or ignore into unSafe_dom
                select 'bing.com'  union select 'xvideos.com' union select 'xhamster.com' union select 'google.com' union select 'pervertslut.com' union select 'pornhub.com' union select 'nudevista.com' union select 'pornsos.com' union select 'google.se' union select 'youporn.com' union select 'rule34.paheal.net' union select 'mrstiff.com' union select 'motherless.com' union select 'tnaflix.com' union select 'xnxx.com' union select 'bestialitytaboo.tv' union select 'gaybeast.com' union select 'en.luxuretv.com' union select 'femefun.com' union select 'tube8.com' union select 'mylust.com' union select 'xxxbunker.com' union select 'tubemonsoon.com' union select 'empflix.com' union select 'zooskoolvideos.com' union select 'mrsnake.com' union select 'forumophilia.com' union select 'video.nudevista.com' union select 'spankbang.com' union select 'pornfay.org';
;-- -. . -..- - / . -. - .-. -.--
create index if not exists domainIdex on urls (case
             when (INSTR(url, 'https://') = 1 OR INSTR(url, 'http://') = 1)
	     then case
                when (INSTR(url, 'ww') < 10 AND INSTR(url, 'ww') <> 0)
                    then SUBSTR(
		    SUBSTR(url, INSTR(url, '.') + 1),
		    1,
		    INSTR(SUBSTR(url, INSTR(url, '.') + 1), '/') - 1)
                        else
                            SUBSTR(
			    SUBSTR(url, INSTR(url, '//') + 2),
			    1,
			    INSTR(SUBSTR(url, INSTR(url, '//') + 2), '/') - 1) end
             else case
                      when
                          (INSTR(url, '/') <> 0)
                          then
                          case
                              when (INSTR(url, 'ww') = 1)
                                  then substr(url,
				  instr(url, '.')+1,
				  INSTR(url, '/') - instr(url, '.')-1)
                              else SUBSTR(url, 1, INSTR(url, '/') - 1) end
                      else case
                               when
                                   (INSTR(url, '.') <> 0)
                                   then
                                   case
                                       when (INSTR(url, 'ww') = 1)
				       then substr(url, instr(url, '.')+1, length(url))
                                       else url end
                               else ''
                          end end end
                      );
;-- -. . -..- - / . -. - .-. -.--
create view IF NOT EXISTS MostApropirateDomain  as
with urlsWithDomain as (    select *
                                                              ,
                                                       (case
             when (INSTR(url, 'https://') = 1 OR INSTR(url, 'http://') = 1)
	     then case
                when (INSTR(url, 'ww') < 10 AND INSTR(url, 'ww') <> 0)
                    then SUBSTR(
		    SUBSTR(url, INSTR(url, '.') + 1),
		    1,
		    INSTR(SUBSTR(url, INSTR(url, '.') + 1), '/') - 1)
                        else
                            SUBSTR(
			    SUBSTR(url, INSTR(url, '//') + 2),
			    1,
			    INSTR(SUBSTR(url, INSTR(url, '//') + 2), '/') - 1) end
             else case
                      when
                          (INSTR(url, '/') <> 0)
                          then
                          case
                              when (INSTR(url, 'ww') = 1)
                                  then substr(url,
				  instr(url, '.')+1,
				  INSTR(url, '/') - instr(url, '.')-1)
                              else SUBSTR(url, 1, INSTR(url, '/') - 1) end
                      else case
                               when
                                   (INSTR(url, '.') <> 0)
                                   then
                                   case
                                       when (INSTR(url, 'ww') = 1)
				       then substr(url, instr(url, '.')+1, length(url))
                                       else url end
                               else ''
                          end end end
                      ) domain
                 from urls )


           select max(id),max(title) t,max(url) m,sum(visit_count)v, domain from urlsWithDomain urlsWithDomain left outer join safe_dom using (domain) where
     safe_dom.domain is null

                     group by domain order by v desc,domain;