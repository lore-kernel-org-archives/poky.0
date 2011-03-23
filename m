Return-Path: <kubera.samrat@gmail.com>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id 202574C80050
	for <poky@yoctoproject.org>; Wed, 23 Mar 2011 05:13:11 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wwd20 with SMTP id 20so9161287wwd.11
	for <poky@yoctoproject.org>; Wed, 23 Mar 2011 03:13:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=IDhyyYA68GYp1Sivx0v7z9V4AcJ98yOGThqPBNqMBiI=;
	b=woz7cUo5ZTiyrpsiibpkA5ptbY/crOSKOeJhng6Gllaw9Bn5t3RFxBwHHqlUMbBhiM
	VK062/ADDo/+jP0Uxqf6LU7BkFfSkmRBb78Z5XNWWm/ccNzDy8JI4Jh768yyO6Sc6CFB
	6Cpjge75NCIr17Ctgob5/NCnG8riiMlQZ+sfM=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	b=TrSJnQaupYOS5sciNMLR3IQ6vDGs+J3Blozi5zWpNM8NWhT6t1WUk6vzkeauajVROc
	74ZeS8Gjdf9TQYzFUq3BfiHw1HxsGh9+OKib3VxIvptAOWbhc5oVQCRO3eI1LKrCWT2A
	F80qGaf7RquyOTRQNDpHQFawOTvYk6z8kmAjQ=
MIME-Version: 1.0
Received: by 10.216.62.77 with SMTP id x55mr6167338wec.59.1300875189929; Wed,
	23 Mar 2011 03:13:09 -0700 (PDT)
Received: by 10.216.236.166 with HTTP; Wed, 23 Mar 2011 03:13:09 -0700 (PDT)
In-Reply-To: <20110323094041.GB26323@kyu3-hedt>
References: <AANLkTin_LpvXeF7K+Xp5KqwGWP=rALmt+DtdbgXUuuTB@mail.gmail.com>
	<20110323094041.GB26323@kyu3-hedt>
Date: Wed, 23 Mar 2011 15:43:09 +0530
Message-ID: <AANLkTi=kwHSYcSss8rQyGHY7N+9cg2CZ2H4XA=Dt5mbJ@mail.gmail.com>
From: kubera samrat <kubera.samrat@gmail.com>
To: Yu Ke <ke.yu@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: Problem while pulling mesa
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
X-List-Received-Date: Wed, 23 Mar 2011 10:13:11 -0000
Content-Type: multipart/alternative; boundary=000e0ce0b84297c91a049f239bc4

--000e0ce0b84297c91a049f239bc4
Content-Type: text/plain; charset=ISO-8859-1

Hi Yu ke,
           I have changed my extra conf. Now I am getting an error stated
below.

******************************************
EXTRA_OECONF += "--with-driver=dri --enable-egl --enable-gallium *
--enable-gallium-eg*l --enable-glx-tls --enable-gl-osmesa --enable-glu
--enable-glw --enable-gallium-swrast --enable-xcbi --enable-egl *--enable-gles2
--with-state-trackers=glx,egl,es --enable-gallium-swrast
--with-egl-driver-dir=${D}${libdir}/egl --with-egl-platforms=x11,drm
--enable-gles-overlay*"
*************************************************
ERROR LOG
*******************************************
| Traceback (most recent call last):
|   File "main/es_generator.py", line 174, in <module>
|     keys = apiutil.GetAllFunctions(functionList, version)
|   File
"/home/kuberasamrat/poky-chrome/build/tmp/work/core2-poky-linux/mesa-dri-7.8.2-r2/Mesa-7.8.2/src/mesa/es/main/APIspecutil.py",
line 87, in GetAllFunctions
|     _ParseXML(filename, api)
|   File
"/home/kuberasamrat/poky-chrome/build/tmp/work/core2-poky-linux/mesa-dri-7.8.2-r2/Mesa-7.8.2/src/mesa/es/main/APIspecutil.py",
line 52, in _ParseXML
|     impl = spec.get_impl()
|   File
"/home/kuberasamrat/poky-chrome/build/tmp/work/core2-poky-linux/mesa-dri-7.8.2-r2/Mesa-7.8.2/src/mesa/es/main/APIspec.py",
line 65, in get_impl
|     return API(self, self.impl_node)
|   File
"/home/kuberasamrat/poky-chrome/build/tmp/work/core2-poky-linux/mesa-dri-7.8.2-r2/Mesa-7.8.2/src/mesa/es/main/APIspec.py",
line 101, in __init__
|     self.categories)
|   File
"/home/kuberasamrat/poky-chrome/build/tmp/work/core2-poky-linux/mesa-dri-7.8.2-r2/Mesa-7.8.2/src/mesa/es/main/APIspec.py",
line 175, in __init__
|     self._init_params(param_nodes)
|   File
"/home/kuberasamrat/poky-chrome/build/tmp/work/core2-poky-linux/mesa-dri-7.8.2-r2/Mesa-7.8.2/src/mesa/es/main/APIspec.py",
line 194, in _init_params
|     if not size or size > param_node.lsCountNode():
|   File
"/home/kuberasamrat/poky-chrome/build/tmp/sysroots/x86_64-linux/usr/lib/python2.6/site-packages/libxml2.py",
line 2983, in lsCountNode
|     ret = libxml2mod.xmlLsCountNode(self._o)
|* AttributeError: 'module' object has no attribute 'xmlLsCountNode'*
*| make[2]: *** No rule to make target `depend', needed by `default'.  Stop.
*
*| make[2]: Leaving directory
`/home/kuberasamrat/poky-chrome/build/tmp/work/core2-poky-linux/mesa-dri-7.8.2-r2/Mesa-7.8.2/src/mesa/es'
*
*| make[1]: *** [subdirs] Error 1*
*| make[1]: Leaving directory
`/home/kuberasamrat/poky-chrome/build/tmp/work/core2-poky-linux/mesa-dri-7.8.2-r2/Mesa-7.8.2/src'
*
*| make: *** [default] Error 1*
*| FATAL: oe_runmake failed*
****************************************************************************************************************************************************






On Wed, Mar 23, 2011 at 3:10 PM, Yu Ke <ke.yu@intel.com> wrote:

> On Mar 22, 19:05, kubera samrat wrote:
> > Hi all,
> >          I have included mesa in my recipe. I got all the .so files which
> I
> > needed except GLES files. I am including my bb file in this mail below.
> So
> > please tell me the modifications which has to be done such that those
> > libraries get included. I have given extra conf according to the website
> > given below
> > http://mesa3d.sourceforge.net/
> > http://mesa3d.sourceforge.net/egl.html
>
> to enable GLES, the following configure options are required:
> --enable-gles1          enable support for OpenGL ES 1.x API [default=no]
> --enable-gles2          enable support for OpenGL ES 2.x API [default=no]
>
> so you can try to add:
>
> EXTRA_OECONF += "--enable-gles1"  or
> EXTRA_OECONF += "--enable-gles2"
>
> Regards
> Ke
>



Thanks and regards,
V kubera Samrat

--000e0ce0b84297c91a049f239bc4
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div>Hi Yu ke,</div><div>=A0=A0 =A0 =A0 =A0 =A0 I have changed my extra con=
f. Now I am getting an error stated below.</div><div><br></div><div>*******=
***********************************</div><div>EXTRA_OECONF +=3D &quot;--wit=
h-driver=3Ddri --enable-egl --enable-gallium <b>--enable-gallium-eg</b>l --=
enable-glx-tls --enable-gl-osmesa --enable-glu --enable-glw --enable-galliu=
m-swrast --enable-xcbi --enable-egl <b>--enable-gles2 --with-state-trackers=
=3Dglx,egl,es --enable-gallium-swrast --with-egl-driver-dir=3D${D}${libdir}=
/egl --with-egl-platforms=3Dx11,drm --enable-gles-overlay</b>&quot;</div>
<div>*************************************************</div><div>ERROR LOG<=
/div><div>*******************************************</div><div><div>| Trac=
eback (most recent call last):</div><div>| =A0 File &quot;main/es_generator=
.py&quot;, line 174, in &lt;module&gt;</div>
<div>| =A0 =A0 keys =3D apiutil.GetAllFunctions(functionList, version)</div=
><div>| =A0 File &quot;/home/kuberasamrat/poky-chrome/build/tmp/work/core2-=
poky-linux/mesa-dri-7.8.2-r2/Mesa-7.8.2/src/mesa/es/main/APIspecutil.py&quo=
t;, line 87, in GetAllFunctions</div>
<div>| =A0 =A0 _ParseXML(filename, api)</div><div>| =A0 File &quot;/home/ku=
berasamrat/poky-chrome/build/tmp/work/core2-poky-linux/mesa-dri-7.8.2-r2/Me=
sa-7.8.2/src/mesa/es/main/APIspecutil.py&quot;, line 52, in _ParseXML</div>=
<div>
| =A0 =A0 impl =3D spec.get_impl()</div><div>| =A0 File &quot;/home/kuberas=
amrat/poky-chrome/build/tmp/work/core2-poky-linux/mesa-dri-7.8.2-r2/Mesa-7.=
8.2/src/mesa/es/main/APIspec.py&quot;, line 65, in get_impl</div><div>| =A0=
 =A0 return API(self, self.impl_node)</div>
<div>| =A0 File &quot;/home/kuberasamrat/poky-chrome/build/tmp/work/core2-p=
oky-linux/mesa-dri-7.8.2-r2/Mesa-7.8.2/src/mesa/es/main/APIspec.py&quot;, l=
ine 101, in __init__</div><div>| =A0 =A0 self.categories)</div><div>| =A0 F=
ile &quot;/home/kuberasamrat/poky-chrome/build/tmp/work/core2-poky-linux/me=
sa-dri-7.8.2-r2/Mesa-7.8.2/src/mesa/es/main/APIspec.py&quot;, line 175, in =
__init__</div>
<div>| =A0 =A0 self._init_params(param_nodes)</div><div>| =A0 File &quot;/h=
ome/kuberasamrat/poky-chrome/build/tmp/work/core2-poky-linux/mesa-dri-7.8.2=
-r2/Mesa-7.8.2/src/mesa/es/main/APIspec.py&quot;, line 194, in _init_params=
</div>
<div>| =A0 =A0 if not size or size &gt; param_node.lsCountNode():</div><div=
>| =A0 File &quot;/home/kuberasamrat/poky-chrome/build/tmp/sysroots/x86_64-=
linux/usr/lib/python2.6/site-packages/libxml2.py&quot;, line 2983, in lsCou=
ntNode</div>
<div>| =A0 =A0 ret =3D libxml2mod.xmlLsCountNode(self._o)</div><div>|<b> At=
tributeError: &#39;module&#39; object has no attribute &#39;xmlLsCountNode&=
#39;</b></div><div><b>| make[2]: *** No rule to make target `depend&#39;, n=
eeded by `default&#39;. =A0Stop.</b></div>
<div><b>| make[2]: Leaving directory `/home/kuberasamrat/poky-chrome/build/=
tmp/work/core2-poky-linux/mesa-dri-7.8.2-r2/Mesa-7.8.2/src/mesa/es&#39;</b>=
</div><div><b>| make[1]: *** [subdirs] Error 1</b></div><div><b>| make[1]: =
Leaving directory `/home/kuberasamrat/poky-chrome/build/tmp/work/core2-poky=
-linux/mesa-dri-7.8.2-r2/Mesa-7.8.2/src&#39;</b></div>
<div><b>| make: *** [default] Error 1</b></div><div><b>| FATAL: oe_runmake =
failed</b></div><div>******************************************************=
***************************************************************************=
*******************</div>
</div><div><br></div><div><br></div><div><br></div><div><br></div><br><br><=
div class=3D"gmail_quote">On Wed, Mar 23, 2011 at 3:10 PM, Yu Ke <span dir=
=3D"ltr">&lt;<a href=3D"mailto:ke.yu@intel.com">ke.yu@intel.com</a>&gt;</sp=
an> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex;"><div class=3D"im">On Mar 22, 19:05, kubera =
samrat wrote:<br>
&gt; Hi all,<br>
&gt; =A0 =A0 =A0 =A0 =A0I have included mesa in my recipe. I got all the .s=
o files which I<br>
&gt; needed except GLES files. I am including my bb file in this mail below=
. So<br>
&gt; please tell me the modifications which has to be done such that those<=
br>
&gt; libraries get included. I have given extra conf according to the websi=
te<br>
&gt; given below<br>
&gt; <a href=3D"http://mesa3d.sourceforge.net/" target=3D"_blank">http://me=
sa3d.sourceforge.net/</a><br>
&gt; <a href=3D"http://mesa3d.sourceforge.net/egl.html" target=3D"_blank">h=
ttp://mesa3d.sourceforge.net/egl.html</a><br>
<br>
</div>to enable GLES, the following configure options are required:<br>
--enable-gles1 =A0 =A0 =A0 =A0 =A0enable support for OpenGL ES 1.x API [def=
ault=3Dno]<br>
--enable-gles2 =A0 =A0 =A0 =A0 =A0enable support for OpenGL ES 2.x API [def=
ault=3Dno]<br>
<br>
so you can try to add:<br>
<br>
EXTRA_OECONF +=3D &quot;--enable-gles1&quot; =A0or<br>
EXTRA_OECONF +=3D &quot;--enable-gles2&quot;<br>
<br>
Regards<br>
<font color=3D"#888888">Ke<br>
</font></blockquote></div><br><br clear=3D"all"><br>Thanks and regards,<br>=
V kubera Samrat<br><br><br>

--000e0ce0b84297c91a049f239bc4--
