Return-Path: <aalonso@secretlab.ca>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4540C4C800B0
	for <poky@yoctoproject.org>; Fri,  6 May 2011 12:58:52 -0500 (CDT)
Received: by iwr19 with SMTP id 19so4482584iwr.35
	for <poky@yoctoproject.org>; Fri, 06 May 2011 10:58:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.42.59.144 with SMTP id m16mr2995477ich.440.1304704731646; Fri,
	06 May 2011 10:58:51 -0700 (PDT)
Received: by 10.231.157.209 with HTTP; Fri, 6 May 2011 10:58:51 -0700 (PDT)
In-Reply-To: <BANLkTi=xgBnjob=1U7yaPFyT-y075odAvA@mail.gmail.com>
References: <cover.1304621382.git.aalonso@secretlab.ca>
	<7577bb0da8badabce577bf8ebd453e6fa7f3bd50.1304621382.git.aalonso@secretlab.ca>
	<4DC42DAF.3080605@linux.intel.com>
	<BANLkTi=xgBnjob=1U7yaPFyT-y075odAvA@mail.gmail.com>
Date: Fri, 6 May 2011 12:58:51 -0500
Message-ID: <BANLkTin4cKVhNh1s3kCd3sGyTS4k7gj69Q@mail.gmail.com>
From: Adrian Alonso <aalonso@secretlab.ca>
To: poky@yoctoproject.org
Subject: [PATCH 6/7] package_rpm: use target vendor information
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
X-List-Received-Date: Fri, 06 May 2011 17:58:52 -0000
Content-Type: multipart/alternative; boundary=20cf30223e61110c8804a29f3ec0

--20cf30223e61110c8804a29f3ec0
Content-Type: text/plain; charset=ISO-8859-1

Op forgot replay all

---------- Forwarded message ----------
From: Adrian Alonso <aalonso@secretlab.ca>
Date: Fri, May 6, 2011 at 12:49 PM
Subject: Re: [poky] [PATCH 6/7] package_rpm: use target vendor information
To: Darren Hart <dvhart@linux.intel.com>


Hi Darren,

In poky-default.inc target vendor is set as:

TARGET_VENDOR="-poky"

In xilinx-meta layer is set as

TARGET_VENDOR="-unknown"

So the result string is correct if TARGET_VENDOR assignment is consistent
as in poky-default.inc

Regards


On Fri, May 6, 2011 at 12:19 PM, Darren Hart <dvhart@linux.intel.com> wrote:

> Hi Adrian,
>
> One issue below:
>
> On 05/05/2011 12:11 PM, Adrian Alonso wrote:
> > * Instead of hardcoding target vendor string "-poky"
> >   use TARGET_VENDOR information in case of using external
> >   toolchains
> >
> > Signed-off-by: Adrian Alonso <aalonso@secretlab.ca>
> > ---
> >  meta/classes/package_rpm.bbclass |    3 ++-
> >  1 files changed, 2 insertions(+), 1 deletions(-)
> >
> > diff --git a/meta/classes/package_rpm.bbclass
> b/meta/classes/package_rpm.bbclass
> > index 70170d1..1cf9f79 100644
> > --- a/meta/classes/package_rpm.bbclass
> > +++ b/meta/classes/package_rpm.bbclass
> > @@ -761,13 +761,14 @@ python do_package_rpm () {
> >       # Setup the rpmbuild arguments...
> >       rpmbuild = bb.data.getVar('RPMBUILD', d, True)
> >       targetsys = bb.data.getVar('TARGET_SYS', d, True)
> > +     targetvendor = bb.data.getVar('TARGET_VENDOR', d, True)
> >       pkgwritedir = bb.data.expand('${PKGWRITEDIRRPM}/${PACKAGE_ARCH}',
> d)
> >       pkgarch = bb.data.expand('${PACKAGE_ARCH}', d)
> >       bb.mkdirhier(pkgwritedir)
> >       os.chmod(pkgwritedir, 0755)
> >
> >       cmd = rpmbuild
> > -     cmd = cmd + " --nodeps --short-circuit --target " + pkgarch +
> "-poky-linux-gnu --buildroot " + pkgd
> > +     cmd = cmd + " --nodeps --short-circuit --target " + pkgarch +
> targetvendor + "-linux-gnu --buildroot " + pkgd
>
> You need:
>  + "-" + targetvendor
>
> otherwise you'll merge pkgarch and targetvendor together without a
> delimiter.
> Better yet, just format the string in one go and reduce the potential for
> error:
>
> cmd = "%s --nodeps --short-circuit --target %s-%s-linux-gnu --buildroot %s"
> % \
>      (rpmbuild, pkgarch, targetvendor, pkgd)
>
> --
> Darren Hart
> Intel Open Source Technology Center
> Yocto Project - Linux Kernel
>



-- 
Adrian Alonso
Secret Lab Technologies Ltd.



-- 
Adrian Alonso
Secret Lab Technologies Ltd.

--20cf30223e61110c8804a29f3ec0
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Op forgot replay all<br><br><div class=3D"gmail_quote">---------- Forwarded=
 message ----------<br>From: <b class=3D"gmail_sendername">Adrian Alonso</b=
> <span dir=3D"ltr">&lt;<a href=3D"mailto:aalonso@secretlab.ca">aalonso@sec=
retlab.ca</a>&gt;</span><br>
Date: Fri, May 6, 2011 at 12:49 PM<br>Subject: Re: [poky] [PATCH 6/7] packa=
ge_rpm: use target vendor information<br>To: Darren Hart &lt;<a href=3D"mai=
lto:dvhart@linux.intel.com">dvhart@linux.intel.com</a>&gt;<br><br><br>Hi Da=
rren,<div>
<br></div><div>In poky-default.inc target vendor is set as:</div><div><br><=
/div><div>TARGET_VENDOR=3D&quot;-poky&quot;</div><div><br></div><div>In xil=
inx-meta layer is set as</div><div><br></div><div>TARGET_VENDOR=3D&quot;-un=
known&quot;</div>

<div><br></div><div>So the=A0result=A0string is correct if TARGET_VENDOR=A0=
assignment=A0is consistent</div><div>as in poky-default.inc</div><div><br><=
/div><div>Regards<div><div></div><div class=3D"h5"><br><br><div class=3D"gm=
ail_quote">
On Fri, May 6, 2011 at 12:19 PM, Darren Hart <span dir=3D"ltr">&lt;<a href=
=3D"mailto:dvhart@linux.intel.com" target=3D"_blank">dvhart@linux.intel.com=
</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Hi Adrian,<br>
<br>
One issue below:<br>
<br>
On 05/05/2011 12:11 PM, Adrian Alonso wrote:<br>
&gt; * Instead of hardcoding target vendor string &quot;-poky&quot;<br>
&gt; =A0 use TARGET_VENDOR information in case of using external<br>
&gt; =A0 toolchains<br>
&gt;<br>
&gt; Signed-off-by: Adrian Alonso &lt;<a href=3D"mailto:aalonso@secretlab.c=
a" target=3D"_blank">aalonso@secretlab.ca</a>&gt;<br>
&gt; ---<br>
&gt; =A0meta/classes/package_rpm.bbclass | =A0 =A03 ++-<br>
&gt; =A01 files changed, 2 insertions(+), 1 deletions(-)<br>
&gt;<br>
&gt; diff --git a/meta/classes/package_rpm.bbclass b/meta/classes/package_r=
pm.bbclass<br>
&gt; index 70170d1..1cf9f79 100644<br>
&gt; --- a/meta/classes/package_rpm.bbclass<br>
&gt; +++ b/meta/classes/package_rpm.bbclass<br>
&gt; @@ -761,13 +761,14 @@ python do_package_rpm () {<br>
&gt; =A0 =A0 =A0 # Setup the rpmbuild arguments...<br>
&gt; =A0 =A0 =A0 rpmbuild =3D bb.data.getVar(&#39;RPMBUILD&#39;, d, True)<b=
r>
&gt; =A0 =A0 =A0 targetsys =3D bb.data.getVar(&#39;TARGET_SYS&#39;, d, True=
)<br>
&gt; + =A0 =A0 targetvendor =3D bb.data.getVar(&#39;TARGET_VENDOR&#39;, d, =
True)<br>
&gt; =A0 =A0 =A0 pkgwritedir =3D bb.data.expand(&#39;${PKGWRITEDIRRPM}/${PA=
CKAGE_ARCH}&#39;, d)<br>
&gt; =A0 =A0 =A0 pkgarch =3D bb.data.expand(&#39;${PACKAGE_ARCH}&#39;, d)<b=
r>
&gt; =A0 =A0 =A0 bb.mkdirhier(pkgwritedir)<br>
&gt; =A0 =A0 =A0 os.chmod(pkgwritedir, 0755)<br>
&gt;<br>
&gt; =A0 =A0 =A0 cmd =3D rpmbuild<br>
&gt; - =A0 =A0 cmd =3D cmd + &quot; --nodeps --short-circuit --target &quot=
; + pkgarch + &quot;-poky-linux-gnu --buildroot &quot; + pkgd<br>
&gt; + =A0 =A0 cmd =3D cmd + &quot; --nodeps --short-circuit --target &quot=
; + pkgarch + targetvendor + &quot;-linux-gnu --buildroot &quot; + pkgd<br>
<br>
You need:<br>
=A0+ &quot;-&quot; + targetvendor<br>
<br>
otherwise you&#39;ll merge pkgarch and targetvendor together without a deli=
miter.<br>
Better yet, just format the string in one go and reduce the potential for e=
rror:<br>
<br>
cmd =3D &quot;%s --nodeps --short-circuit --target %s-%s-linux-gnu --buildr=
oot %s&quot; % \<br>
 =A0 =A0 =A0(rpmbuild, pkgarch, targetvendor, pkgd)<br>
<font color=3D"#888888"><br>
--<br>
Darren Hart<br>
Intel Open Source Technology Center<br>
Yocto Project - Linux Kernel<br>
</font></blockquote></div><br><br clear=3D"all"><br></div></div>-- <br><div=
>Adrian Alonso</div>Secret Lab Technologies Ltd.<br>
</div>
</div><br><br clear=3D"all"><br>-- <br><div>Adrian Alonso</div>Secret Lab T=
echnologies Ltd.<br>

--20cf30223e61110c8804a29f3ec0--
