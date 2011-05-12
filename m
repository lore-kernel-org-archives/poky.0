Return-Path: <aalonso@secretlab.ca>
Received: from mail-iy0-f171.google.com (mail-iy0-f171.google.com
	[209.85.210.171])
	by mx1.pokylinux.org (Postfix) with ESMTP id EEB5D4C810BF
	for <poky@pokylinux.org>; Thu, 12 May 2011 18:59:51 -0500 (CDT)
Received: by iyi20 with SMTP id 20so2320557iyi.2
	for <poky@pokylinux.org>; Thu, 12 May 2011 16:59:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.231.67.213 with SMTP id s21mr649274ibi.22.1305244791343; Thu,
	12 May 2011 16:59:51 -0700 (PDT)
Received: by 10.231.68.82 with HTTP; Thu, 12 May 2011 16:59:51 -0700 (PDT)
In-Reply-To: <iqhk8c$hpa$1@dough.gmane.org>
References: <iqhk8c$hpa$1@dough.gmane.org>
Date: Thu, 12 May 2011 18:59:51 -0500
Message-ID: <BANLkTimd=hhq+E-KvUGctOME19vquBZ_og@mail.gmail.com>
From: Adrian Alonso <aalonso@secretlab.ca>
To: gmane@reliableembeddedsystems.com
Cc: poky@pokylinux.org
Subject: Re: third party toolchain
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
X-List-Received-Date: Thu, 12 May 2011 23:59:52 -0000
Content-Type: multipart/alternative; boundary=0015177415a22209f004a31cfc6d

--0015177415a22209f004a31cfc6d
Content-Type: text/plain; charset=ISO-8859-1

Hi,

You could use POKYMODE feature to integrate an external toolchain;

For example for microblaze arch I set in my local.conf

POKYMODE = "external-xilinx"
XILINX_TOOLCHAIN = "Base path of toolchain"

Then poky configuration (poky.conf) pulls the recipe that informs the
toolchain details poky-external-xilinx.inc [1]
and external-xilinx-toolchain_1.0.bb [2] to integrate that particular
pre-built toolchain.

In your case you could take a look
at meta/conf/distro/include/poky-external-csl2008q3.inc which configures
poky to use
external CSL 2008q3-72 toolchain probably just setting POKYMODE =
"external-csl2008q3" and updating the toolchain path
will do to use this toolchain (haven't test it).

[1]
http://git.yoctoproject.org/cgit/cgit.cgi/meta-xilinx/tree/conf/distro/include/poky-external-xilinx.inc
[2]
http://git.yoctoproject.org/cgit/cgit.cgi/meta-xilinx/tree/recipes-core/meta/external-xilinx-toolchain_1.0.bb

Regards

On Thu, May 12, 2011 at 4:42 PM, Robert Berger <
gmane@reliableembeddedsystems.com> wrote:

> Hi,
>
> I'm trying to use a third party toolchain instead of the default ones.
> There seem to be some recipes to support something like this.
>
> Here is what I tried without success (it still seems to pick up the
> default toolchain): http://pastebin.com/RsitZDJp
>
> In addition to this I exported the path to the toolchain.
>
> I know that is not very wise, but currently I'm trying to reuse some of
> the recipies and compile the packages for this specific toolchain
> (hopefully without too many things breaking)
>
> Please advise.
>
> Regards,
>
> Robert
>
> ..."If you want more effective programmers, you will discover that they
> should not waste their time debugging - they should not introduce the
> bugs to start with." - Dijkstra
>
> My public pgp key is available at:
> http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



-- 
Adrian Alonso
Secret Lab Technologies Ltd.

--0015177415a22209f004a31cfc6d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,<div><br></div><div>You could use POKYMODE feature to integrate an exter=
nal toolchain;</div><div><br></div><div>For example for microblaze arch I s=
et in my local.conf</div><div><br></div><div>POKYMODE =3D &quot;external-xi=
linx&quot;</div>
<div>XILINX_TOOLCHAIN =3D &quot;Base path of toolchain&quot;</div><div><br>=
</div><div>Then poky configuration (poky.conf) pulls the recipe that inform=
s the toolchain details=A0poky-external-xilinx.inc [1]</div><div>and=A0<a h=
ref=3D"http://external-xilinx-toolchain_1.0.bb">external-xilinx-toolchain_1=
.0.bb</a> [2] to integrate that particular pre-built toolchain.</div>
<div><br></div><div>In your case you could take a look at=A0meta/conf/distr=
o/include/poky-external-csl2008q3.inc=A0which=A0configures poky to use</div=
><div>external CSL 2008q3-72 toolchain=A0probably=A0just setting POKYMODE =
=3D &quot;external-csl2008q3&quot; and updating the toolchain path=A0</div>
<div>will do to use this toolchain=A0(haven&#39;t test it).</div><meta http=
-equiv=3D"content-type" content=3D"text/html; charset=3Dutf-8"><meta http-e=
quiv=3D"content-type" content=3D"text/html; charset=3Dutf-8"><div><br></div=
><div>[1]=A0<a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/meta-xilin=
x/tree/conf/distro/include/poky-external-xilinx.inc">http://git.yoctoprojec=
t.org/cgit/cgit.cgi/meta-xilinx/tree/conf/distro/include/poky-external-xili=
nx.inc</a></div>
<div>[2]=A0<a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/meta-xilinx=
/tree/recipes-core/meta/external-xilinx-toolchain_1.0.bb">http://git.yoctop=
roject.org/cgit/cgit.cgi/meta-xilinx/tree/recipes-core/meta/external-xilinx=
-toolchain_1.0.bb</a></div>
<div><br></div><div>Regards<br><br><div class=3D"gmail_quote">On Thu, May 1=
2, 2011 at 4:42 PM, Robert Berger <span dir=3D"ltr">&lt;<a href=3D"mailto:g=
mane@reliableembeddedsystems.com">gmane@reliableembeddedsystems.com</a>&gt;=
</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex;">Hi,<br>
<br>
I&#39;m trying to use a third party toolchain instead of the default ones.<=
br>
There seem to be some recipes to support something like this.<br>
<br>
Here is what I tried without success (it still seems to pick up the<br>
default toolchain): <a href=3D"http://pastebin.com/RsitZDJp" target=3D"_bla=
nk">http://pastebin.com/RsitZDJp</a><br>
<br>
In addition to this I exported the path to the toolchain.<br>
<br>
I know that is not very wise, but currently I&#39;m trying to reuse some of=
<br>
the recipies and compile the packages for this specific toolchain<br>
(hopefully without too many things breaking)<br>
<br>
Please advise.<br>
<br>
Regards,<br>
<br>
Robert<br>
<br>
...&quot;If you want more effective programmers, you will discover that the=
y<br>
should not waste their time debugging - they should not introduce the<br>
bugs to start with.&quot; - Dijkstra<br>
<br>
My public pgp key is available at:<br>
<a href=3D"http://pgp.mit.edu:11371/pks/lookup?op=3Dget&amp;search=3D0x9032=
0BF1" target=3D"_blank">http://pgp.mit.edu:11371/pks/lookup?op=3Dget&amp;se=
arch=3D0x90320BF1</a><br>
<br>
<br>
_______________________________________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" target=3D"_blank">=
https://lists.yoctoproject.org/listinfo/poky</a><br>
</blockquote></div><br><br clear=3D"all"><br>-- <br><div>Adrian Alonso</div=
>Secret Lab Technologies Ltd.<br>
</div>

--0015177415a22209f004a31cfc6d--
