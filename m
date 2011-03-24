Return-Path: <kubera.samrat@gmail.com>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4A49F4C80132
	for <poky@yoctoproject.org>; Thu, 24 Mar 2011 01:36:45 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wyb40 with SMTP id 40so11327948wyb.35
	for <poky@yoctoproject.org>; Wed, 23 Mar 2011 23:36:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:content-type;
	bh=e3poiYQTBz1rOqLdrJxQIF1FNpcuKTq+DKEBEH1ylwE=;
	b=mBCpxLB4LXWBw1gK+qpblHwMHcbJkzJXyFZJFIEUsXiUxn6gurOplkv9TB0y1bfwWs
	1SPi/7LTIzxn+3xKqcCrGyERWCTl2Q53KP+R2gdCN8VcgWUo+WtsQ6IBv4TfiG9mM1iY
	WN+6r1Pu5qYyImvexqDB/gGQODXN/LyTNSq5k=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type;
	b=Gmjq83TKq/d6+QDYjzGb8xqqx6dFh+pVlGjwKfs7oc7NTOdug1nxs8bVJQiwYBYq/0
	09InUUseaU9rH6C1CApiirT0qFCcJ74rJmPkgY3sYw44lIv5pI9G/LAfBGnIhx+ahh6H
	eN+mNGVenGdhd86Y+QLc1yDyTtzmcsh2GUGjQ=
MIME-Version: 1.0
Received: by 10.216.145.23 with SMTP id o23mr7142662wej.14.1300948604532; Wed,
	23 Mar 2011 23:36:44 -0700 (PDT)
Received: by 10.216.236.166 with HTTP; Wed, 23 Mar 2011 23:36:44 -0700 (PDT)
In-Reply-To: <AANLkTi=t1ZDRwTQ9Fs6W36ygpnyjnVUJ=6sw3XL2em2Y@mail.gmail.com>
References: <AANLkTin_LpvXeF7K+Xp5KqwGWP=rALmt+DtdbgXUuuTB@mail.gmail.com>
	<20110323094041.GB26323@kyu3-hedt>
	<AANLkTi=kwHSYcSss8rQyGHY7N+9cg2CZ2H4XA=Dt5mbJ@mail.gmail.com>
	<20110324022239.GC26323@kyu3-hedt>
	<AANLkTi=t1ZDRwTQ9Fs6W36ygpnyjnVUJ=6sw3XL2em2Y@mail.gmail.com>
Date: Thu, 24 Mar 2011 12:06:44 +0530
Message-ID: <AANLkTim0zZtABiaQAmAyKDYw+4YtNAwnq_Hy9d_OiTz1@mail.gmail.com>
From: kubera samrat <kubera.samrat@gmail.com>
To: Yu Ke <ke.yu@intel.com>, poky@yoctoproject.org
Subject: Problem while pulling mesa
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
X-List-Received-Date: Thu, 24 Mar 2011 06:36:45 -0000
X-Groupsio-MsgNum: 4877
Content-Type: multipart/mixed; boundary=0016e6d7eaa371b8f1049f34b37e

--0016e6d7eaa371b8f1049f34b37e
Content-Type: multipart/alternative; boundary=0016e6d7eaa371b8e0049f34b37c

--0016e6d7eaa371b8e0049f34b37c
Content-Type: text/plain; charset=ISO-8859-1

Hi Yu Ke,
           I have made changes in libxml2 and removed all the stamps etc.,
which are related to xml and mesa-dri . Still I am facing with the same
error. Do I have to additionally do any thing?
Is it the case that we have to mention libxml2-native/libxml2 in the depends
of mesa? Please suggest me the solution. Thank you very much for your
previous reply. I am including modified EXTRA_OECONF below.
For your reference I attached my bb file also.

********************************
EXTRA_OECONF += "--with-driver=dri \
                 --enable-egl \
                 --enable-gallium \
                 --enable-gallium-egl \

                 --enable-glx-tls \
                 --enable-gl-osmesa \
                 --enable-glu \
                 --enable-glw \

*                 --enable-gallium-swrast \
                 --enable-xcb \
                 --enable-gles-overlay \
                 --enable-gles2 \
                 --enable-gles1 \
                 --with-egl-platforms='x11 drm' \
                 --with-state-trackers=egl,es"*
*********************************************************************


On Thu, Mar 24, 2011 at 7:52 AM, Yu Ke <ke.yu@intel.com> wrote:

> On Mar 23, 15:43, kubera samrat wrote:
> > Hi Yu ke,
> >            I have changed my extra conf. Now I am getting an error stated
> > below.
> >
> > ******************************************
> > EXTRA_OECONF += "--with-driver=dri --enable-egl --enable-gallium *
> > --enable-gallium-eg*l --enable-glx-tls --enable-gl-osmesa --enable-glu
> > --enable-glw --enable-gallium-swrast --enable-xcbi --enable-egl
> *--enable-gles2
> > --with-state-trackers=glx,egl,es --enable-gallium-swrast
> > --with-egl-driver-dir=${D}${libdir}/egl --with-egl-platforms=x11,drm
> > --enable-gles-overlay*"
> > *************************************************
> > ERROR LOG
> > *******************************************
> > | Traceback (most recent call last):
> > |   File "main/es_generator.py", line 174, in <module>
> > |     keys = apiutil.GetAllFunctions(functionList, version)
> > |   File
> >
> "/home/kuberasamrat/poky-chrome/build/tmp/work/core2-poky-linux/mesa-dri-7.8.2-r2/Mesa-7.8.2/src/mesa/es/main/APIspecutil.py",
> > line 87, in GetAllFunctions
> > |     _ParseXML(filename, api)
> > |   File
> >
> "/home/kuberasamrat/poky-chrome/build/tmp/work/core2-poky-linux/mesa-dri-7.8.2-r2/Mesa-7.8.2/src/mesa/es/main/APIspecutil.py",
> > line 52, in _ParseXML
> > |     impl = spec.get_impl()
> > |   File
> >
> "/home/kuberasamrat/poky-chrome/build/tmp/work/core2-poky-linux/mesa-dri-7.8.2-r2/Mesa-7.8.2/src/mesa/es/main/APIspec.py",
> > line 65, in get_impl
> > |     return API(self, self.impl_node)
> > |   File
> >
> "/home/kuberasamrat/poky-chrome/build/tmp/work/core2-poky-linux/mesa-dri-7.8.2-r2/Mesa-7.8.2/src/mesa/es/main/APIspec.py",
> > line 101, in __init__
> > |     self.categories)
> > |   File
> >
> "/home/kuberasamrat/poky-chrome/build/tmp/work/core2-poky-linux/mesa-dri-7.8.2-r2/Mesa-7.8.2/src/mesa/es/main/APIspec.py",
> > line 175, in __init__
> > |     self._init_params(param_nodes)
> > |   File
> >
> "/home/kuberasamrat/poky-chrome/build/tmp/work/core2-poky-linux/mesa-dri-7.8.2-r2/Mesa-7.8.2/src/mesa/es/main/APIspec.py",
> > line 194, in _init_params
> > |     if not size or size > param_node.lsCountNode():
> > |   File
> >
> "/home/kuberasamrat/poky-chrome/build/tmp/sysroots/x86_64-linux/usr/lib/python2.6/site-packages/libxml2.py",
> > line 2983, in lsCountNode
> > |     ret = libxml2mod.xmlLsCountNode(self._o)
> > |* AttributeError: 'module' object has no attribute 'xmlLsCountNode'*
> > *| make[2]: *** No rule to make target `depend', needed by `default'.
>  Stop.
> > *
> > *| make[2]: Leaving directory
> >
> `/home/kuberasamrat/poky-chrome/build/tmp/work/core2-poky-linux/mesa-dri-7.8.2-r2/Mesa-7.8.2/src/mesa/es'
> > *
> > *| make[1]: *** [subdirs] Error 1*
> > *| make[1]: Leaving directory
> >
> `/home/kuberasamrat/poky-chrome/build/tmp/work/core2-poky-linux/mesa-dri-7.8.2-r2/Mesa-7.8.2/src'
> > *
> > *| make: *** [default] Error 1*
> > *| FATAL: oe_runmake failed*
> >
> ****************************************************************************************************************************************************
>
> This is a libxml2 issue. mesa requires libxml2 debug module (default is
> on), which is however disabled by "--without-debug" option. so you can try
> to remove this option in the libxml2 to fix this issue.
>
> This issue is already addressed in poky upstream  before. see commit
> http://git.pokylinux.org/cgit/cgit.cgi/poky/commit/?id=032553036dcd0a4b977ab0e4e78b4af4a23e4ad6for detail.
>
> Regards
> Ke
>
>
>


Thanks and regards,
V kubera Samrat

--0016e6d7eaa371b8e0049f34b37c
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><div class=3D"gmail_quote">Hi Yu Ke,<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =
I have made changes in libxml2 and removed all the stamps etc., which are r=
elated to xml and mesa-dri . Still I am facing with the same error. Do I ha=
ve to additionally do any thing?<br>
Is it the case that we have to mention libxml2-native/libxml2 in the depend=
s of mesa? Please suggest me the solution. Thank you very much for your pre=
vious reply. I am including modified EXTRA_OECONF below.<br>
For your reference I attached my bb file also.<div class=3D"im"><br>*******=
*************************<br>EXTRA_OECONF +=3D &quot;--with-driver=3Ddri \<=
br>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 --enable-egl \<br>=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 --enable-gallium \<br>
</div>
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 --enable-gallium-egl \<div=
 class=3D"im"><br>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 --enable=
-glx-tls \<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 --enable-gl-=
osmesa \<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 --enable-glu \=
<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 --enable-glw \<br>=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0</div>
<b>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 --enable-gallium-swrast=
 \<br>
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 --enable-xcb \<br>=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 --enable-gles-overlay \<br>=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 --enable-gles2 \<br>=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 --enable-gles1 \<br>=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 --with-egl-platforms=3D&#39;x11 drm&#39; =
\<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 --with-state-trackers=
=3Degl,es&quot;</b><br>

********************************************************************* <br><=
div><div></div><div class=3D"h5"><br><br><div class=3D"gmail_quote">On Thu,=
 Mar 24, 2011 at 7:52 AM, Yu Ke <span dir=3D"ltr">&lt;<a href=3D"mailto:ke.=
yu@intel.com" target=3D"_blank">ke.yu@intel.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt 0pt 0.8ex; borde=
r-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;"><div>On Mar 23, 1=
5:43, kubera samrat wrote:<br>
&gt; Hi Yu ke,<br>
&gt; =A0 =A0 =A0 =A0 =A0 =A0I have changed my extra conf. Now I am getting =
an error stated<br>
&gt; below.<br>
&gt;<br>
&gt; ******************************************<br>
&gt; EXTRA_OECONF +=3D &quot;--with-driver=3Ddri --enable-egl --enable-gall=
ium *<br>
</div>&gt; --enable-gallium-eg*l --enable-glx-tls --enable-gl-osmesa --enab=
le-glu<br>
<div><div></div><div>&gt; --enable-glw --enable-gallium-swrast --enable-xcb=
i --enable-egl *--enable-gles2<br>
&gt; --with-state-trackers=3Dglx,egl,es --enable-gallium-swrast<br>
&gt; --with-egl-driver-dir=3D${D}${libdir}/egl --with-egl-platforms=3Dx11,d=
rm<br>
&gt; --enable-gles-overlay*&quot;<br>
&gt; *************************************************<br>
&gt; ERROR LOG<br>
&gt; *******************************************<br>
&gt; | Traceback (most recent call last):<br>
&gt; | =A0 File &quot;main/es_generator.py&quot;, line 174, in &lt;module&g=
t;<br>
&gt; | =A0 =A0 keys =3D apiutil.GetAllFunctions(functionList, version)<br>
&gt; | =A0 File<br>
&gt; &quot;/home/kuberasamrat/poky-chrome/build/tmp/work/core2-poky-linux/m=
esa-dri-7.8.2-r2/Mesa-7.8.2/src/mesa/es/main/APIspecutil.py&quot;,<br>
&gt; line 87, in GetAllFunctions<br>
&gt; | =A0 =A0 _ParseXML(filename, api)<br>
&gt; | =A0 File<br>
&gt; &quot;/home/kuberasamrat/poky-chrome/build/tmp/work/core2-poky-linux/m=
esa-dri-7.8.2-r2/Mesa-7.8.2/src/mesa/es/main/APIspecutil.py&quot;,<br>
&gt; line 52, in _ParseXML<br>
&gt; | =A0 =A0 impl =3D spec.get_impl()<br>
&gt; | =A0 File<br>
&gt; &quot;/home/kuberasamrat/poky-chrome/build/tmp/work/core2-poky-linux/m=
esa-dri-7.8.2-r2/Mesa-7.8.2/src/mesa/es/main/APIspec.py&quot;,<br>
&gt; line 65, in get_impl<br>
&gt; | =A0 =A0 return API(self, self.impl_node)<br>
&gt; | =A0 File<br>
&gt; &quot;/home/kuberasamrat/poky-chrome/build/tmp/work/core2-poky-linux/m=
esa-dri-7.8.2-r2/Mesa-7.8.2/src/mesa/es/main/APIspec.py&quot;,<br>
&gt; line 101, in __init__<br>
&gt; | =A0 =A0 self.categories)<br>
&gt; | =A0 File<br>
&gt; &quot;/home/kuberasamrat/poky-chrome/build/tmp/work/core2-poky-linux/m=
esa-dri-7.8.2-r2/Mesa-7.8.2/src/mesa/es/main/APIspec.py&quot;,<br>
&gt; line 175, in __init__<br>
&gt; | =A0 =A0 self._init_params(param_nodes)<br>
&gt; | =A0 File<br>
&gt; &quot;/home/kuberasamrat/poky-chrome/build/tmp/work/core2-poky-linux/m=
esa-dri-7.8.2-r2/Mesa-7.8.2/src/mesa/es/main/APIspec.py&quot;,<br>
&gt; line 194, in _init_params<br>
&gt; | =A0 =A0 if not size or size &gt; param_node.lsCountNode():<br>
&gt; | =A0 File<br>
&gt; &quot;/home/kuberasamrat/poky-chrome/build/tmp/sysroots/x86_64-linux/u=
sr/lib/python2.6/site-packages/libxml2.py&quot;,<br>
&gt; line 2983, in lsCountNode<br>
&gt; | =A0 =A0 ret =3D libxml2mod.xmlLsCountNode(self._o)<br>
&gt; |* AttributeError: &#39;module&#39; object has no attribute &#39;xmlLs=
CountNode&#39;*<br>
&gt; *| make[2]: *** No rule to make target `depend&#39;, needed by `defaul=
t&#39;. =A0Stop.<br>
&gt; *<br>
&gt; *| make[2]: Leaving directory<br>
&gt; `/home/kuberasamrat/poky-chrome/build/tmp/work/core2-poky-linux/mesa-d=
ri-7.8.2-r2/Mesa-7.8.2/src/mesa/es&#39;<br>
&gt; *<br>
&gt; *| make[1]: *** [subdirs] Error 1*<br>
&gt; *| make[1]: Leaving directory<br>
&gt; `/home/kuberasamrat/poky-chrome/build/tmp/work/core2-poky-linux/mesa-d=
ri-7.8.2-r2/Mesa-7.8.2/src&#39;<br>
&gt; *<br>
&gt; *| make: *** [default] Error 1*<br>
&gt; *| FATAL: oe_runmake failed*<br>
</div></div>&gt; **********************************************************=
***************************************************************************=
***************<br>
<br>
This is a libxml2 issue. mesa requires libxml2 debug module (default is on)=
, which is however disabled by &quot;--without-debug&quot; option. so you c=
an try to remove this option in the libxml2 to fix this issue.<br>
<br>
This issue is already addressed in poky upstream =A0before. see commit <a h=
ref=3D"http://git.pokylinux.org/cgit/cgit.cgi/poky/commit/?id=3D032553036dc=
d0a4b977ab0e4e78b4af4a23e4ad6" target=3D"_blank">http://git.pokylinux.org/c=
git/cgit.cgi/poky/commit/?id=3D032553036dcd0a4b977ab0e4e78b4af4a23e4ad6</a>=
 for detail.<br>


<br>
Regards<br>
<font color=3D"#888888">Ke<br>
<br>
<br>
</font></blockquote></div><br><br clear=3D"all"><br></div></div><div><div><=
/div><div class=3D"h5">Thanks and regards,<br>V kubera Samrat<br>
</div></div></div><br><br clear=3D"all"><br><br><br>

--0016e6d7eaa371b8e0049f34b37c--

--0016e6d7eaa371b8f1049f34b37e
Content-Type: application/octet-stream; name="mesa-dri_7.8.2.bb"
Content-Disposition: attachment; filename="mesa-dri_7.8.2.bb"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_glna84fl0

aW5jbHVkZSBtZXNhLWNvbW1vbi5pbmMKCkxJQ19GSUxFU19DSEtTVU0gPSAiZmlsZTovL2RvY3Mv
bGljZW5zZS5odG1sO21kNT03YTMzNzNjMDM5YjZiOTI1YzQyNzc1NWE0Zjc3OWMxZCIKClBST1RP
X0RFUFMgPSAieGY4NmRyaXByb3RvIGdscHJvdG8gZHJpMnByb3RvIgpMSUJfREVQUyA9ICJsaWJk
cm0gdmlydHVhbC9saWJ4MTEgbGlieGV4dCBsaWJ4eGY4NnZtIGxpYnhkYW1hZ2UgbGlieGZpeGVz
IGV4cGF0IgoKREVQRU5EUyA9ICIke1BST1RPX0RFUFN9ICAke0xJQl9ERVBTfSBtZXNhLWRyaS1n
bHNsLW5hdGl2ZSBweXRob24tbmF0aXZlIgoKUFIgPSAicjIiCgpTUkNfVVJJICs9ICJmaWxlOi8v
Y3Jvc3NmaXgucGF0Y2giCgojIG1vc3Qgb2Ygb3VyIHRhcmdldHMgZG8gbm90IGhhdmUgRFJJIHNv
IHdpbGwgdXNlIG1lc2EteGxpYgpERUZBVUxUX1BSRUZFUkVOQ0UgPSAiLTEiCgojIEF0b20gUENz
IGhhdmUgRFJJIHN1cHBvcnQgc28gdXNlIG1lc2EtZHJpIGJ5IGRlZmF1bHQKREVGQVVMVF9QUkVG
RVJFTkNFX2F0b20tcGMgPSAiMSIKCkxFQURfU09OQU1FID0gImxpYkdMLnNvLjEiCgpFWFRSQV9P
RUNPTkYgKz0gIi0td2l0aC1kcml2ZXI9ZHJpIFwKICAgICAgICAgICAgICAgICAtLWVuYWJsZS1l
Z2wgXAoJCSAtLWVuYWJsZS1nYWxsaXVtIFwgCgkJIC0tZW5hYmxlLWdhbGxpdW0tZWdsIFwgCgkJ
IC0tZW5hYmxlLWdseC10bHMgXAoJCSAtLWVuYWJsZS1nbC1vc21lc2EgXCAKCQkgLS1lbmFibGUt
Z2x1IFwKCQkgLS1lbmFibGUtZ2x3IFwKCQkgLS1lbmFibGUtZ2FsbGl1bS1zd3Jhc3QgXAoJCSAt
LWVuYWJsZS14Y2IgXCAKCQkgLS1lbmFibGUtZ2xlcy1vdmVybGF5IFwKCQkgLS1lbmFibGUtZ2xl
czIgXAoJCSAtLWVuYWJsZS1nbGVzMSBcCgkJIC0td2l0aC1lZ2wtcGxhdGZvcm1zPSd4MTEgZHJt
JyBcCgkJIC0td2l0aC1zdGF0ZS10cmFja2Vycz1lZ2wsZXMiIAojIFdlIG5lZWQgZ2xzbC1jb21w
aWxlIGJ1aWx0IGZvciBidWlsZGhvc3QgYXJjaCBpbnN0ZWFkIG9mIHRhcmdldCAoaXMgcHJvdmlk
ZWQgYnkgbWVzYS1kcmktZ2xzbC1uYXRpdmUpIgojZG9fY29uZmlndXJlX3ByZXBlbmQoKSB7CiMJ
c2VkIC1pICJzI15HTFNMX0NMID0gLipcJCNHTFNMX0NMID0gJHtTVEFHSU5HX0JJTkRJUl9OQVRJ
VkV9L2dsc2wtY29tcGlsZSNnIiAke1N9L3NyYy9tZXNhL3NoYWRlci9zbGFuZy9saWJyYXJ5L01h
a2VmaWxlCiN9Cgpkb19pbnN0YWxsX2FwcGVuZCAoKSB7CglpbnN0YWxsIC1kICR7RH0vdXNyL2Jp
bgoJaW5zdGFsbCAtZCAke0R9JHtsaWJkaXJ9L2RyaQoJaW5zdGFsbCAtZCAke0R9JHtsaWJkaXJ9
L2VnbAoJaW5zdGFsbCAtbSAwNzU1ICR7U30vcHJvZ3MveGRlbW9zL3tnbHhkZW1vLGdseGdlYXJz
LGdseGhlYWRzLGdseGluZm99ICR7RH0vdXNyL2Jpbi8KfQoKI3B5dGhvbiBwb3B1bGF0ZV9wYWNr
YWdlc19wcmVwZW5kKCkgewojCWltcG9ydCBvcy5wYXRoCgojCWRyaV9kcml2ZXJzX3Jvb3QgPSBv
cy5wYXRoLmpvaW4oYmIuZGF0YS5nZXRWYXIoJ2xpYmRpcicsIGQsIDEpLCAiZHJpIikKCiMJZG9f
c3BsaXRfcGFja2FnZXMoZCwgZHJpX2RyaXZlcnNfcm9vdCwgJ14oLiopX2RyaVwuc28kJywgJ21l
c2EtZHJpLWRyaXZlci0lcycsICdNZXNhICVzIERSSSBkcml2ZXInLCBleHRyYV9kZXBlbmRzPScn
KQojfQoKQ09NUEFUSUJMRV9IT1NUID0gJyhpLjg2LiotbGludXh8eDg2XzY0LiotbGludXgpJwoK
UEFDS0FHRVMgPSsgIiR7UE59LXhwcm9ncyIKUEFDS0FHRVNfRFlOQU1JQyA9ICJtZXNhLWRyaS1k
cml2ZXItKiIKCkZJTEVTXyR7UE59LWRiZyArPSAiJHtsaWJkaXJ9L2RyaS8uZGVidWcvKiIKRklM
RVNfJHtQTn0teHByb2dzID0gIiR7YmluZGlyfS9nbHhkZW1vICR7YmluZGlyfS9nbHhnZWFycyAk
e2JpbmRpcn0vZ2x4aGVhZHMgJHtiaW5kaXJ9L2dseGluZm8iCgoKRklMRVNfJHtQTn0gKz0gIiR7
bGliZGlyfS9kcmkvaTk2NV9kcmkuc28iCkZJTEVTXyR7UE59ICs9ICIke2xpYmRpcn0vZHJpL3N3
cmFzdF9kcmkuc28iCkZJTEVTXyR7UE59ICs9ICIke2xpYmRpcn0vZWdsLyoiCiNGSUxFU18ke1BO
fS14cHJvZ3MgPSAiJHtiaW5kaXJ9L2dseGRlbW8gJHtiaW5kaXJ9L2dseGdlYXJzICR7YmluZGly
fS9nbHhoZWFkcyAke2JpbmRpcn0vZ2x4aW5mbyIKCiMKIyBIZWFkZXIgZ2VuZXJhdGVkIGJ5IGk1
ODYtcG9reS1saW51eC1nY2MgZ2VuX21hdHlwZXMuYyAtbyBnZW5fbWF0eXBlcyAtSSAuLi8uLi8u
Li9pbmNsdWRlL0dMIC1JIC4uLy4uLy4uL2luY2x1ZGUgLUkgLi4gLUkgLi4vbWFpbi8gLUkgLi4v
bWF0aCAtSSAuLi9nbGFwaS8gLUkgLi4vdG5sCiMgdGhlbiBydW4gZ2VuX21hdHlwZXMgPiBtYXR5
cGVzLmggb24gZGV2aWNlCiMK

--0016e6d7eaa371b8f1049f34b37e--
