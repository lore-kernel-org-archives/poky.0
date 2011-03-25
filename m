Return-Path: <sparsh150847@yahoo.com>
Received: from nm2-vm0.bullet.mail.in.yahoo.com
	(nm2-vm0.bullet.mail.in.yahoo.com [121.101.151.210])
	by mx1.pokylinux.org (Postfix) with SMTP id 1356B4C806DA
	for <poky@yoctoproject.org>; Fri, 25 Mar 2011 09:06:26 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@yahoo.com;
	x-dkim-adsp=none (insecure policy)
Received: from [121.101.151.238] by nm2.bullet.mail.in.yahoo.com with NNFMP;
	25 Mar 2011 14:06:13 -0000
Received: from [121.101.151.233] by tm3.bullet.mail.in.yahoo.com with NNFMP;
	25 Mar 2011 14:06:27 -0000
Received: from [127.0.0.1] by omp1002.mail.in.yahoo.com with NNFMP;
	25 Mar 2011 14:06:13 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 842195.60791.bm@omp1002.mail.in.yahoo.com
Received: (qmail 1675 invoked by uid 60001); 25 Mar 2011 14:06:25 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1301061985; bh=cO3A/leZsd0A38vrvlSyoxjXk2SyfjHoXnQgJ2/E5tQ=;
	h=Message-ID:X-YMail-OSG:Received:X-Mailer:Date:From:Subject:To:Cc:In-Reply-To:MIME-Version:Content-Type;
	b=TEoAVWaMf93JvnoG2apsJ7xff6EHO5HGRfjGUgGX4JvSHuuQqJuf3TysyUa+UH6a0HRHgv942lrhvh/wMysj7D/NqCZVWO0TXpLbnIaep30zBEZZn+C8/QI96wcZwYWVdXNDlbc6HdOedsKCxEw+Wv9N+mtxIEBbTTt0XvkZW7A=
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s1024; d=yahoo.com;
	h=Message-ID:X-YMail-OSG:Received:X-Mailer:Date:From:Subject:To:Cc:In-Reply-To:MIME-Version:Content-Type;
	b=2czvRYarZxycbD57vwjbb9h56pkBRt/lGTYs0HDlzdOybsuvUSJ+YlvI8yQFbq3YcR9KgNYTLLHBcKzBAgyouqhS0fz/dzaTQ7OUlMP7S4h3y2vJfpfZ2+xqAsjqU//ysw8K6/gD+64WLpSZh43GhAKlj0XHRWEOXUPq5OuodiQ=;
Message-ID: <671167.786.qm@web95705.mail.in.yahoo.com>
X-YMail-OSG: xrPySQQVM1lCPFwlH9HMd3MeFCF.hsASnQUndWMvkSiRM16
	8YyuXMXL_vMQHE3mRWFZgJ8AqAkX0e0BOaOwZbHzQdYSzHxzrz7RpongpX1r
	ADYJgA2h0isMdxaXyp7Pktl0ch8.v9hsZlZbEvRwPm2q5P.4tLUvuBwuQBqp
	zLkBNyEu.hjpvdjXSDKne0yZwZOFn_4bTKQ_PD3Sst1k.VtqVNbDs6j5wXOD
	2brv0_G1ZaA--
Received: from [115.111.25.162] by web95705.mail.in.yahoo.com via HTTP;
	Fri, 25 Mar 2011 19:36:22 IST
X-Mailer: YahooMailClassic/12.0.2 YahooMailWebService/0.8.109.295617
Date: Fri, 25 Mar 2011 19:36:22 +0530 (IST)
From: Sparsh Wid hope <sparsh150847@yahoo.com>
To: Gerard van den Bosch <gerard@de-haardt.com>
In-Reply-To: <4D8C99FE.4080003@de-haardt.com>
MIME-Version: 1.0
Cc: poky <poky@yoctoproject.org>
Subject: Need help to build poky image for beagle board
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 25 Mar 2011 14:06:33 -0000
Content-Type: multipart/alternative; boundary="0-1957197798-1301061982=:786"

--0-1957197798-1301061982=:786
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

=A0
=A0=A0Thanks for your suggestion . I tried that=A0bitbake beagleboard-demo-=
image and have same error. please help if you get anything about it.Thanks =
in advance
--- On Fri, 25/3/11, Gerard van den Bosch <gerard@de-haardt.com> wrote:

From: Gerard van den Bosch <gerard@de-haardt.com>
Subject: Re: [poky] Need help to build poky image for beagle board
To: "Sparsh Wid hope" <sparsh150847@yahoo.com>
Cc: poky@yoctoproject.org
Date: Friday, 25 March, 2011, 1:34 PM

=0A=0A  =0A=0A    =0A  =0A  =0A    On 03/25/2011 01:57 PM, Sparsh Wid hope =
wrote:=0A    =0A      =0A        =0A          =0A           =20
=0A             =20
=0A             =20
=0A              =0A                =0A                  =0A               =
     =0A                      =0A                        =0A               =
           =0A                            =0A                              =
=0A                                =0A                                  Hi =
All,=0A                                   =20
=0A                                    =0A                                 =
   I'm trying to=0A                                      build poky image f=
or beagle=0A                                      board.=A0=0A             =
                       =0A                                      I followed =
the steps below-=0A                                    =0A                 =
                  =20
=0A                                    =0A                                 =
   1.Downloaded the=0A                                      source=A0=0A   =
                                 wget=0A                                   =
     -c http://git.poky=0A                                          linux.o=
rg/cgit/=0A                                          cgit.cgi/poky/s=0A    =
                                      napshot/poky-laverne-4.0.1.tar=0A    =
                                      .bz2=0A                              =
     =20
=0A                                    =0A                                 =
   2. untar it=0A                                   =20
=0A                                    =0A                                 =
   3. I want it=0A                                      build for beagleboa=
rd, so i=0A                                      downloaded=A0recipes_image=
s_beagleboard-demo-image.bb=0A                                      recipe=
=0A                                      from=A0http://gitorious.org/angstr=
om/openembedded/blobs/org.openembedded.dev/recipes/images/beagleboard-demo-=
image.bb=0A                                      and copied that in=0A     =
                                 laverne-4.0.1/meta/recipes-core/images=0A =
                                  =20
=0A                                    =0A                                 =
   4.=0A                                        Build!=0A                  =
                  =0A                                      cd=A0laverne-4.0=
.1=0A                                      source poky-init-build-env=0A   =
                                   bitbake recipes_images_beagleboard-demo-=
image=0A                                      and get error as =0A         =
                             =0A                                      ERROR=
: Nothing PROVIDES 'recipes_images_beagleboard-demo-image'=0ACommand execut=
ion failed: Traceback (most recent call last):=0A  File "/home/surya/Surya/=
pro/POKY/laverne-4.0.1/scripts/..//bitbake/lib/bb/command.py", line 88, in =
runAsyncCommand=0A    commandmethod(self.cmds_async, self, options)=0A  Fil=
e "/home/surya/Surya/pro/POKY/laverne-4.0.1/scripts/..//bitbake/lib/bb/comm=
and.py", line 184, in buildTargets=0A    command.cooker.buildTargets(pkgs_t=
o_build, task)=0A  File "/home/surya/Surya/pro/POKY/laverne-4.0.1/scripts/.=
.//bitbake/lib/bb/cooker.py", line 756, in buildTargets=0A    taskdata.add_=
provider(localdata, self.status, k)=0A  File "/home/surya/Surya/pro/POKY/la=
verne-4.0.1/scripts/..//bitbake/lib/bb/taskdata.py", line 354, in add_provi=
der=0A    self.add_provider_internal(cfgData, dataCache, item)=0A  File "/h=
ome/surya/Surya/pro/POKY/laverne-4.0.1/scripts/..//bitbake/lib/bb/taskdata.=
py", line 374, in add_provider_internal=0A    raise bb.providers.NoProvider=
(item)=0ANoProvider: recipes_images_beagleboard-demo-image=0A=0A           =
                          =20
=0A                                      =0A                               =
       Help me to solve this error.=0A                                     =
 Thanks in advance          =0A                                    =0A     =
                             =0A                                =0A        =
                      =0A                            =0A                   =
       =0A                        =0A                      =0A             =
       =0A                  =0A                  Sparsh=0A              =0A=
            =0A          =0A        =0A      =0A     =20
=0A      =0A_______________________________________________=0Apoky mailing =
list=0Apoky@yoctoproject.org=0Ahttps://lists.yoctoproject.org/listinfo/poky=
=0A=0A    =0A    Try: =0Abitbake beagleboard-demo-image=0A  =0A=0A=0A=0A

--0-1957197798-1301061982=:786
Content-Type: text/html; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

<table cellspacing=3D"0" cellpadding=3D"0" border=3D"0" ><tr><td valign=3D"=
top" style=3D"font: inherit;">&nbsp;<br>&nbsp;&nbsp;Thanks for your suggest=
ion . I tried that&nbsp;bitbake beagleboard-demo-image and have same error.=
 please help if you get anything about it.<div>Thanks in advance<br>--- On =
<b>Fri, 25/3/11, Gerard van den Bosch <i>&lt;gerard@de-haardt.com&gt;</i></=
b> wrote:<br><blockquote style=3D"border-left: 2px solid rgb(16, 16, 255); =
margin-left: 5px; padding-left: 5px;"><br>From: Gerard van den Bosch &lt;ge=
rard@de-haardt.com&gt;<br>Subject: Re: [poky] Need help to build poky image=
 for beagle board<br>To: "Sparsh Wid hope" &lt;sparsh150847@yahoo.com&gt;<b=
r>Cc: poky@yoctoproject.org<br>Date: Friday, 25 March, 2011, 1:34 PM<br><br=
><div id=3D"yiv654454608">=0A=0A  =0A=0A    =0A  =0A  =0A    On 03/25/2011 =
01:57 PM, Sparsh Wid hope wrote:=0A    <blockquote type=3D"cite">=0A      <=
table border=3D"0" cellpadding=3D"0" cellspacing=3D"0">=0A        <tbody>=
=0A          <tr>=0A            <td style=3D"font:inherit;" valign=3D"top">=
<br>=0A              <br>=0A              <br>=0A              <blockquote =
style=3D"border-left:2px solid rgb(16, 16,=0A                255);margin-le=
ft:5px;padding-left:5px;">=0A                <div id=3D"yiv654454608">=0A  =
                <table border=3D"0" cellpadding=3D"0" cellspacing=3D"0">=0A=
                    <tbody>=0A                      <tr>=0A                =
        <td style=3D"font:inherit;" valign=3D"top">=0A                     =
     <div id=3D"yiv654454608">=0A                            <table id=3D"y=
iv654454608bodyDrftID" class=3D"yiv654454608" border=3D"0" cellpadding=3D"0=
" cellspacing=3D"0">=0A                              <tbody>=0A            =
                    <tr>=0A                                  <td id=3D"yiv6=
54454608drftMsgContent" style=3D"font:inherit;"><font class=3D"yiv654454608=
Apple-style-span" style=3D"font-size:10pt;font-family:arial;" size=3D"2" fa=
ce=3D"arial">Hi All,</font>=0A                                    <div styl=
e=3D"font-family:arial;font-size:10pt;"><br>=0A                            =
        </div>=0A                                    <div style=3D"font-fam=
ily:arial;font-size:10pt;">I'm trying to=0A                                =
      build poky image for beagle=0A                                      b=
oard.&nbsp;</div>=0A                                    <div style=3D"font-=
family:arial;font-size:10pt;">=0A                                      <pre=
 style=3D"font-family:arial;font-size:10pt;"><span class=3D"yiv654454608App=
le-style-span" style=3D"white-space:normal;">I followed the steps below-</s=
pan></pre>=0A                                    </div>=0A                 =
                   <div style=3D"font-family:arial;font-size:10pt;"><br>=0A=
                                    </div>=0A                              =
      <div style=3D"font-family:arial;font-size:10pt;">1.Downloaded the=0A =
                                     source&nbsp;</div>=0A                 =
                   <div style=3D"font-family:arial;font-size:10pt;"><span c=
lass=3D"yiv654454608Apple-style-span" style=3D"white-space:pre;">wget=0A   =
                                     -c <a rel=3D"nofollow" target=3D"_blan=
k" href=3D"http://git.pokylinux.org/cgit/cgit.cgi/poky/snapshot/poky-lavern=
e-4.0.1.tar.bz2">http://git.poky=0A                                        =
  linux.org/cgit/=0A                                          cgit.cgi/poky=
/s=0A                                          napshot/poky-laverne-4.0.1.t=
ar=0A                                          .bz2</a></span></div>=0A    =
                                <div style=3D"font-family:arial;font-size:1=
0pt;"><br>=0A                                    </div>=0A                 =
                   <div style=3D"font-family:arial;font-size:10pt;">2. unta=
r it</div>=0A                                    <div style=3D"font-family:=
arial;font-size:10pt;"><br>=0A                                    </div>=0A=
                                    <div style=3D"font-family:arial;font-si=
ze:10pt;">3. I want it=0A                                      build for be=
agleboard, so i=0A                                      downloaded&nbsp;rec=
ipes_images_beagleboard-demo-image.bb=0A                                   =
   recipe=0A                                      from&nbsp;<a rel=3D"nofol=
low" class=3D"yiv654454608moz-txt-link-freetext" target=3D"_blank" href=3D"=
http://gitorious.org/angstrom/openembedded/blobs/org.openembedded.dev/recip=
es/images/beagleboard-demo-image.bb">http://gitorious.org/angstrom/openembe=
dded/blobs/org.openembedded.dev/recipes/images/beagleboard-demo-image.bb</a=
>=0A                                      and copied that in=0A            =
                          laverne-4.0.1/meta/recipes-core/images</div>=0A  =
                                  <div style=3D"font-family:arial;font-size=
:10pt;"><br>=0A                                    </div>=0A               =
                     <div style=3D"font-family:arial;font-size:10pt;"><span=
 class=3D"yiv654454608Apple-style-span" style=3D"white-space:pre;">4.=0A   =
                                     Build!</span></div>=0A                =
                    <div>=0A                                      <pre styl=
e=3D"font-family:arial;font-size:10pt;">cd&nbsp;laverne-4.0.1</pre>=0A     =
                                 <pre style=3D"font-family:arial;font-size:=
10pt;">source poky-init-build-env</pre>=0A                                 =
     <pre style=3D"font-family:arial;font-size:10pt;">bitbake recipes_image=
s_beagleboard-demo-image</pre>=0A                                      <pre=
 style=3D"font-family:arial;font-size:10pt;">and get error as </pre>=0A    =
                                  <pre style=3D"font-family:arial;font-size=
:10pt;"></pre>=0A                                      <pre><font class=3D"=
yiv654454608Apple-style-span" face=3D"arial">ERROR: Nothing PROVIDES 'recip=
es_images_beagleboard-demo-image'=0ACommand execution failed: Traceback (mo=
st recent call last):=0A  File "/home/surya/Surya/pro/POKY/laverne-4.0.1/sc=
ripts/..//bitbake/lib/bb/command.py", line 88, in runAsyncCommand=0A    com=
mandmethod(self.cmds_async, self, options)=0A  File "/home/surya/Surya/pro/=
POKY/laverne-4.0.1/scripts/..//bitbake/lib/bb/command.py", line 184, in bui=
ldTargets=0A    command.cooker.buildTargets(pkgs_to_build, task)=0A  File "=
/home/surya/Surya/pro/POKY/laverne-4.0.1/scripts/..//bitbake/lib/bb/cooker.=
py", line 756, in buildTargets=0A    taskdata.add_provider(localdata, self.=
status, k)=0A  File "/home/surya/Surya/pro/POKY/laverne-4.0.1/scripts/..//b=
itbake/lib/bb/taskdata.py", line 354, in add_provider=0A    self.add_provid=
er_internal(cfgData, dataCache, item)=0A  File "/home/surya/Surya/pro/POKY/=
laverne-4.0.1/scripts/..//bitbake/lib/bb/taskdata.py", line 374, in add_pro=
vider_internal=0A    raise bb.providers.NoProvider(item)=0ANoProvider: reci=
pes_images_beagleboard-demo-image</font><span class=3D"yiv654454608Apple-st=
yle-span" style=3D"font-family:arial;font-size:10pt;">=0A</span></pre>=0A  =
                                    <div style=3D"font-family:arial;font-si=
ze:10pt;"><br>=0A                                      </div>=0A           =
                           <pre style=3D"font-family:arial;font-size:10pt;"=
>Help me to solve this error.</pre>=0A                                     =
 <pre style=3D"font-family:arial;font-size:10pt;">Thanks in advance        =
  </pre>=0A                                    </div>=0A                   =
               </td>=0A                                </tr>=0A            =
                  </tbody>=0A                            </table>=0A       =
                   </div>=0A                        </td>=0A               =
       </tr>=0A                    </tbody>=0A                  </table>=0A=
                  Sparsh</div>=0A              </blockquote>=0A            =
</td>=0A          </tr>=0A        </tbody>=0A      </table>=0A      <br>=0A=
      <pre><fieldset class=3D"yiv654454608mimeAttachmentHeader"></fieldset>=
=0A_______________________________________________=0Apoky mailing list=0A<a=
 rel=3D"nofollow" class=3D"yiv654454608moz-txt-link-abbreviated" ymailto=3D=
"mailto:poky@yoctoproject.org" target=3D"_blank" href=3D"/mc/compose?to=3Dp=
oky@yoctoproject.org">poky@yoctoproject.org</a>=0A<a rel=3D"nofollow" class=
=3D"yiv654454608moz-txt-link-freetext" target=3D"_blank" href=3D"https://li=
sts.yoctoproject.org/listinfo/poky">https://lists.yoctoproject.org/listinfo=
/poky</a>=0A</pre>=0A    </blockquote>=0A    <pre>Try: =0Abitbake beagleboa=
rd-demo-image</pre>=0A  =0A=0A</div></blockquote></div></td></tr></table><b=
r>

--0-1957197798-1301061982=:786--
