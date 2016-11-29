Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4B7A8E004E5; Tue, 29 Nov 2016 11:02:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f53.google.com (mail-wm0-f53.google.com [74.125.82.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7929E00498
	for <poky@yoctoproject.org>; Tue, 29 Nov 2016 11:02:10 -0800 (PST)
Received: by mail-wm0-f53.google.com with SMTP id t79so197221698wmt.0
	for <poky@yoctoproject.org>; Tue, 29 Nov 2016 11:02:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=1Thu0fk5Cw9iAS7+KMSm8rhTDBWG8ayaCZqKBjCiHVw=;
	b=MMjNo8z94OyI30tKFSRCHRu+NpndAikhHEo25/pyHPojVVjkrDqXs5fCB+9B8R6ead
	Q+LrN2VGFQh/dxDArqpfiC/F/GAD/8F22Be0FdaSXDktrbcfa7m9Iryw3BTqE5Sfay/O
	z7UTr3Rth+CwGoWLZ8YEEdKu2mj8DT3djt/wntqT0edUquScEHOlc8DoeX/3sOx22qLV
	MJSzws1DXEW2fdDFZeWT9D7hrLF2H3zJj1CHyptbeAQEYYGkol4ONX5oBksn43rt28Q/
	wslYQ5OWMEmJfh/H6cVvn61m277VmUTYs0I5uMf1k0UeGW0ehJ9+E3k19rvgIrMUShMR
	7frg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=1Thu0fk5Cw9iAS7+KMSm8rhTDBWG8ayaCZqKBjCiHVw=;
	b=Uk4Or6HUX7hBW/I2J3/IuzUNvucFAkKX1+A2vCOQOc5woQg0C7+/KRLyZI3Ys8ZUg9
	90J97ZnFPczS0o2vX52V/uSCipS+HEsRxZYMojt1OaKjk3TNdcgUeCc7Yj+kzA0zQ06Y
	PGBt35xNt09HTCyb3ZkhumTSvC3jzPMdVHxIP3FcUn+f0KKINAR3sET6CcX3YYE6NhAQ
	hBcF+C5faheOXIS8G5yhGAm9+iqmuk2tOsOgR2Ywsc+2nvkiQ4TE9XcK5nDvw8TRzj7r
	QJ5dlkz1bZqODqImagMwNdP7hOdu6KGyuZwwBlYiqk6dpLkEwSigVCbbhvNnhwRY2EIq
	FLhw==
X-Gm-Message-State: AKaTC00A2qAAmeS5C+UZHBTzqME83gD1ywCZegp4Gpsff28Scvd8fMDKd+SWabpFrOExcz5MVuANQ0w49/P98Q==
X-Received: by 10.28.39.199 with SMTP id n190mr23921416wmn.124.1480446129236; 
	Tue, 29 Nov 2016 11:02:09 -0800 (PST)
MIME-Version: 1.0
Received: by 10.80.134.144 with HTTP; Tue, 29 Nov 2016 11:02:08 -0800 (PST)
In-Reply-To: <DM5PR05MB2954963F27B5FA81EEED3381BB8D0@DM5PR05MB2954.namprd05.prod.outlook.com>
References: <DM5PR05MB29545E65161FD6FEA0CB8C61BBB90@DM5PR05MB2954.namprd05.prod.outlook.com>
	<DM5PR05MB2954963F27B5FA81EEED3381BB8D0@DM5PR05MB2954.namprd05.prod.outlook.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Tue, 29 Nov 2016 20:02:08 +0100
Message-ID: <CA+chaQewUKCu7ix2=2jsi4VO-e05LVV0uZH+d+pGkynO48gHpw@mail.gmail.com>
To: Bryan Evenson <bevenson@melinkcorp.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: fido: problems with arm926ejs DEFAULTTUNE
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 29 Nov 2016 19:02:13 -0000
Content-Type: multipart/alternative; boundary=001a114e313ca47f1a054275396b

--001a114e313ca47f1a054275396b
Content-Type: text/plain; charset=UTF-8

See oe-core commit dbd7fd1cbbc3e7003a48542642acdc80dca3f514

On Tue, Nov 29, 2016 at 5:26 PM, Bryan Evenson <bevenson@melinkcorp.com>
wrote:

>
> > -----Original Message-----
> > From: poky-bounces@yoctoproject.org [mailto:poky-
> > bounces@yoctoproject.org] On Behalf Of Bryan Evenson
> > Sent: Wednesday, November 09, 2016 1:29 PM
> > To: poky@yoctoproject.org
> > Subject: [poky] fido: problems with arm926ejs DEFAULTTUNE
> >
> > I am on poky/dizzy (version 1.7.3) and I am in the process of upgrading
> my
> > build to fido (current HEAD).  I am using the meta-atmel layer to build
> an
> > image for an AT91SAM9G25 using the at91sam9x5ek machine.  When I try to
> > build my image using poky/fido, I get the following error:
> >
> > ERROR:  OE-core's config sanity checker detected a potential
> > misconfiguration.
> >     Either fix the cause of this error or at your own risk disable the
> checker (see
> > sanity.conf).
> >     Following is the list of potential problems / advisories:
> >
> >     Error, the PACKAGE_ARCHS variable does not contain TUNE_PKGARCH
> > (arm926ejse).
> >
> > In my distro configuration I set DEFAULTTUNE = "arm926ejs".  If I remove
> this
> > line, my image builds but the arch gets set as "armv5e".  The change in
> arch
> > would cause problems for firmware upgrades, as I don't think I'd be able
> to
> > upgrade existing systems when the packages are built for a different
> arch.
> >
> > I also noticed that the error message states TUNE_PKGARCH is set to
> > "arm926ejse".  I cannot find anywhere in any of the layers I am using
> where
> > "arm926ejse" comes from.  I can find "arm926ejs" and "arm926ejste" but
> not
> > "arm92ejse".
> >
> > Any thoughts as to what may be going wrong with my build?
>
> I bisected poky and I found that my problem starts after this commit:
> http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?h=fido&id=
> fe66853cded794a7585ed28c519b32930979c2bc.  This commit was actually on
> master prior to the first fido release.  After this commit (up to current
> fido HEAD), when I have DEFAULTTUNE = "arm926ejs" then TUNE_PKGARCH gets
> set as 'arm926ejse'.  Prior to that commit, TUNE_PKGARCH was being set as
> 'arm926ejste'.  So after that commit, the build tools no longer recognize
> that my processor is an ARM Thumb processor.
>
> Steps to reproduce:
>
> Here is my autobuilder file for the build I've been testing:
>
> [nightly-atmel-demo-fido]
> builders: 'builder1'
> repos: [{'poky':
>             {'repourl':'git://git.yoctoproject.org/poky.git',
>                  'layerversion':{'core':'meta',
> 'yoctobsp':'meta-yocto-bsp'},
>              'branch':'fido'}},
>         {'meta-atmel':
>             {'repourl':'git://github.com/linux4sam/meta-atmel.git',
>              'branch':'fido'}},
>         {'meta-openembedded':
>             {'repourl':'git://git.openembedded.org/meta-openembedded.git',
>              'branch':'fido'}},
>         {'meta-qt5':
>             {'repourl':'git://github.com/meta-qt5/meta-qt5.git',
>              'branch':'fido'}}]
> steps: [{'SetDest':{}},
>         {'CheckOutLayers': {}},
>         {'RunPreamble': {}},
>         {'GetDistroVersion' : {'distro': 'poky'}},
>         {'CreateAutoConf': {'machine': 'at91sam9x5ek', 'SDKMACHINE':
> 'i686', 'distro': 'poky', 'buildhistory': True, 'packages': 'ipk',
> 'atextappend': 'EXTRA_IMAGE_FEATURES = ""\nDEFAULTTUNE = "arm926ejs"\n'}},
>         {'CreateBBLayersConf': {'buildprovider' : 'yocto', 'layerdirs':
>             ['meta-atmel', 'meta-qt5', 'meta-openembedded/meta-oe',
> 'meta-openembedded/meta-networking', 'meta-openembedded/meta-python']}},
>         {'BuildImages': {'images': 'atmel-demo-image'}},
>         {'SyncPersistDB' : {'commit' : True, 'distro':'poky'}},
>         {'PublishLayerTarballs':{}},
>         {'PublishArtifacts': {'artifacts': ['at91sam9x5ek', 'ipk']}}]
> scheduler: [{'nightly-scheduler-atmel-fido' :
>                 {'type':'Nightly',
>                  'hour':'1',
>                  'minute':'15',}}]
>
> If I build with these settings, I'll get the error I previously
> mentioned.  If on poky I go back to commit dfa83e662511e8d9f397d458b6eae1bf323cb271,
> then it builds without errors and builds with ARM Thumb support.  Note that
> this commit is earlier than the one that caused the Thumb/no Thumb problem,
> but it was in a set that was committed on that same day; I had to go to a
> commit prior to that day due to some other unrelated build errors that were
> introduced by not pulling commits that were dependent on each other.
>
> So is feature-arm-thumb.inc still not recognizing something if DEFAULTTUNE
> = arm926ejs, or was this working before when it really shouldn't have
> worked?  Is there something else that I should do to set the correct tune
> settings for my processor?
>
> Thanks,
> Bryan
>
> >
> > Thanks,
> > Bryan
> > --
> > _______________________________________________
> > poky mailing list
> > poky@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/poky
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

--001a114e313ca47f1a054275396b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">See oe-core commit=C2=A0dbd7fd1cbbc3e7003a48542642acdc80dc=
a3f514</div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Tu=
e, Nov 29, 2016 at 5:26 PM, Bryan Evenson <span dir=3D"ltr">&lt;<a href=3D"=
mailto:bevenson@melinkcorp.com" target=3D"_blank">bevenson@melinkcorp.com</=
a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div class=3D"HOEnZb=
"><div class=3D"h5"><br>
&gt; -----Original Message-----<br>
&gt; From: <a href=3D"mailto:poky-bounces@yoctoproject.org">poky-bounces@yo=
ctoproject.org</a> [mailto:<a href=3D"mailto:poky-">poky-</a><br>
&gt; <a href=3D"mailto:bounces@yoctoproject.org">bounces@yoctoproject.org</=
a>] On Behalf Of Bryan Evenson<br>
&gt; Sent: Wednesday, November 09, 2016 1:29 PM<br>
&gt; To: <a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a>=
<br>
&gt; Subject: [poky] fido: problems with arm926ejs DEFAULTTUNE<br>
&gt;<br>
&gt; I am on poky/dizzy (version 1.7.3) and I am in the process of upgradin=
g my<br>
&gt; build to fido (current HEAD).=C2=A0 I am using the meta-atmel layer to=
 build an<br>
&gt; image for an AT91SAM9G25 using the at91sam9x5ek machine.=C2=A0 When I =
try to<br>
&gt; build my image using poky/fido, I get the following error:<br>
&gt;<br>
&gt; ERROR:=C2=A0 OE-core&#39;s config sanity checker detected a potential<=
br>
&gt; misconfiguration.<br>
&gt;=C2=A0 =C2=A0 =C2=A0Either fix the cause of this error or at your own r=
isk disable the checker (see<br>
&gt; sanity.conf).<br>
&gt;=C2=A0 =C2=A0 =C2=A0Following is the list of potential problems / advis=
ories:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Error, the PACKAGE_ARCHS variable does not contain =
TUNE_PKGARCH<br>
&gt; (arm926ejse).<br>
&gt;<br>
&gt; In my distro configuration I set DEFAULTTUNE =3D &quot;arm926ejs&quot;=
.=C2=A0 If I remove this<br>
&gt; line, my image builds but the arch gets set as &quot;armv5e&quot;.=C2=
=A0 The change in arch<br>
&gt; would cause problems for firmware upgrades, as I don&#39;t think I&#39=
;d be able to<br>
&gt; upgrade existing systems when the packages are built for a different a=
rch.<br>
&gt;<br>
&gt; I also noticed that the error message states TUNE_PKGARCH is set to<br=
>
&gt; &quot;arm926ejse&quot;.=C2=A0 I cannot find anywhere in any of the lay=
ers I am using where<br>
&gt; &quot;arm926ejse&quot; comes from.=C2=A0 I can find &quot;arm926ejs&qu=
ot; and &quot;arm926ejste&quot; but not<br>
&gt; &quot;arm92ejse&quot;.<br>
&gt;<br>
&gt; Any thoughts as to what may be going wrong with my build?<br>
<br>
</div></div>I bisected poky and I found that my problem starts after this c=
ommit: <a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?h=
=3Dfido&amp;id=3Dfe66853cded794a7585ed28c519b32930979c2bc" rel=3D"noreferre=
r" target=3D"_blank">http://git.yoctoproject.org/<wbr>cgit/cgit.cgi/poky/co=
mmit/?h=3D<wbr>fido&amp;id=3D<wbr>fe66853cded794a7585ed28c519b32<wbr>930979=
c2bc</a>.=C2=A0 This commit was actually on master prior to the first fido =
release.=C2=A0 After this commit (up to current fido HEAD), when I have DEF=
AULTTUNE =3D &quot;arm926ejs&quot; then TUNE_PKGARCH gets set as &#39;arm92=
6ejse&#39;.=C2=A0 Prior to that commit, TUNE_PKGARCH was being set as &#39;=
arm926ejste&#39;.=C2=A0 So after that commit, the build tools no longer rec=
ognize that my processor is an ARM Thumb processor.<br>
<br>
Steps to reproduce:<br>
<br>
Here is my autobuilder file for the build I&#39;ve been testing:<br>
<br>
[nightly-atmel-demo-fido]<br>
builders: &#39;builder1&#39;<br>
repos: [{&#39;poky&#39;:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#39;repourl&#39;:&#39;git://<a =
href=3D"http://git.yoctoproject.org/poky.git" rel=3D"noreferrer" target=3D"=
_blank">git.<wbr>yoctoproject.org/poky.git</a>&#39;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;layerver=
sion&#39;:{&#39;core&#39;:&#39;meta&#39;, &#39;yoctobsp&#39;:&#39;meta-yoct=
o-bsp&#39;},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;branch&#39;:&#39;fido&=
#39;}},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#39;meta-atmel&#39;:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#39;repourl&#39;:&#39;git://<a =
href=3D"http://github.com/linux4sam/meta-atmel.git" rel=3D"noreferrer" targ=
et=3D"_blank">github.com/<wbr>linux4sam/meta-atmel.git</a>&#39;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;branch&#39;:&#39;fido&=
#39;}},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#39;meta-openembedded&#39;:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#39;repourl&#39;:&#39;git://<a =
href=3D"http://git.openembedded.org/meta-openembedded.git" rel=3D"noreferre=
r" target=3D"_blank">git.<wbr>openembedded.org/meta-<wbr>openembedded.git</=
a>&#39;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;branch&#39;:&#39;fido&=
#39;}},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#39;meta-qt5&#39;:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#39;repourl&#39;:&#39;git://<a =
href=3D"http://github.com/meta-qt5/meta-qt5.git" rel=3D"noreferrer" target=
=3D"_blank">github.com/<wbr>meta-qt5/meta-qt5.git</a>&#39;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;branch&#39;:&#39;fido&=
#39;}}]<br>
steps: [{&#39;SetDest&#39;:{}},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#39;CheckOutLayers&#39;: {}},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#39;RunPreamble&#39;: {}},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#39;GetDistroVersion&#39; : {&#39;distro&#39;=
: &#39;poky&#39;}},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#39;CreateAutoConf&#39;: {&#39;machine&#39;: =
&#39;at91sam9x5ek&#39;, &#39;SDKMACHINE&#39;: &#39;i686&#39;, &#39;distro&#=
39;: &#39;poky&#39;, &#39;buildhistory&#39;: True, &#39;packages&#39;: &#39=
;ipk&#39;, &#39;atextappend&#39;: &#39;EXTRA_IMAGE_FEATURES =3D &quot;&quot=
;\nDEFAULTTUNE =3D &quot;arm926ejs&quot;\n&#39;}},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#39;CreateBBLayersConf&#39;: {&#39;buildprovi=
der&#39; : &#39;yocto&#39;, &#39;layerdirs&#39;:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [&#39;meta-atmel&#39;, &#39;meta-=
qt5&#39;, &#39;meta-openembedded/meta-oe&#39;, &#39;meta-openembedded/meta-=
<wbr>networking&#39;, &#39;meta-openembedded/meta-<wbr>python&#39;]}},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#39;BuildImages&#39;: {&#39;images&#39;: &#39=
;atmel-demo-image&#39;}},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#39;SyncPersistDB&#39; : {&#39;commit&#39; : =
True, &#39;distro&#39;:&#39;poky&#39;}},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#39;PublishLayerTarballs&#39;:{}},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#39;PublishArtifacts&#39;: {&#39;artifacts&#3=
9;: [&#39;at91sam9x5ek&#39;, &#39;ipk&#39;]}}]<br>
scheduler: [{&#39;nightly-scheduler-atmel-<wbr>fido&#39; :<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 {&#39;type&#39;:&#3=
9;Nightly&#39;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;hour&#39=
;:&#39;1&#39;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;minute&#=
39;:&#39;15&#39;,}}]<br>
<br>
If I build with these settings, I&#39;ll get the error I previously mention=
ed.=C2=A0 If on poky I go back to commit dfa83e662511e8d9f397d458b6eae1<wbr=
>bf323cb271, then it builds without errors and builds with ARM Thumb suppor=
t.=C2=A0 Note that this commit is earlier than the one that caused the Thum=
b/no Thumb problem, but it was in a set that was committed on that same day=
; I had to go to a commit prior to that day due to some other unrelated bui=
ld errors that were introduced by not pulling commits that were dependent o=
n each other.<br>
<br>
So is feature-arm-thumb.inc still not recognizing something if DEFAULTTUNE =
=3D arm926ejs, or was this working before when it really shouldn&#39;t have=
 worked?=C2=A0 Is there something else that I should do to set the correct =
tune settings for my processor?<br>
<br>
Thanks,<br>
Bryan<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt;<br>
&gt; Thanks,<br>
&gt; Bryan<br>
&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; poky mailing list<br>
&gt; <a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/poky" rel=3D"norefe=
rrer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/poky</=
a><br>
--<br>
______________________________<wbr>_________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" rel=3D"noreferrer"=
 target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/poky</a><br=
>
</div></div></blockquote></div><br></div>

--001a114e313ca47f1a054275396b--
