Return-Path: <andrei@gherzan.ro>
Received: from mail-vc0-f172.google.com (mail-vc0-f172.google.com
	[209.85.220.172]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 1DAD2E006CB
	for <poky@yoctoproject.org>; Mon, 25 Feb 2013 09:51:33 -0800 (PST)
Received: by mail-vc0-f172.google.com with SMTP id l6so1908925vcl.3
	for <poky@yoctoproject.org>; Mon, 25 Feb 2013 09:51:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:x-originating-ip:in-reply-to:references
	:from:date:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=qUwj21p3Gj13GjmKkMDj8S5hUzkROf95KxzdRg2ay+I=;
	b=iHpKuHZT79dr0Rr+iT7ZMnSdiPCAWAd5GdXERG8b2tfar8VTXd7SSNLym6Q8IWfwS2
	/K5KgOHVxIX61HkRDgrBUfvB66iv6wTi77N29/bEsb6mUGuhX4vZuEFoncxIkzUs0Zg7
	/5OJrBDcJbWwXsSP0RaTFRKHswknB8UhDQtEJeeFxCUfzo7EcYUyguluwlFRsX4kgtxz
	TGQ6Ps38/KzXNpOmdkC6MMrpZ1OMqhY2iolqalOZe2sHQyM9EHqpf2oeWmm8rTj38/p+
	jdg6M2p/saANNBc5sY0pI1KJSKE3/oN2IeSaWv5ioAZxcebArU7h0DPyeNxOSVpcJxVO
	pE6w==
X-Received: by 10.52.99.1 with SMTP id em1mr8967399vdb.48.1361814682317; Mon,
	25 Feb 2013 09:51:22 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.75.9 with HTTP; Mon, 25 Feb 2013 09:51:00 -0800 (PST)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <CAJTo0LZEkT7SJEAedGv4TKz7DEFoi+3oHbm-qsaW1jp+xxkbwg@mail.gmail.com>
References: <CAK18fxEj1UYMV21aOLfbMpVOfGYuSCgUj0b_ArADsHCJbUkLYA@mail.gmail.com>
	<512BA2A6.1070905@linux.intel.com>
	<CAJTo0LZEkT7SJEAedGv4TKz7DEFoi+3oHbm-qsaW1jp+xxkbwg@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Mon, 25 Feb 2013 19:51:00 +0200
Message-ID: <CAK18fxEoN-r__3aWP66GRg3U7wQuohNgYRqLA0kayvPK=6hPTA@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
X-Gm-Message-State: ALoCoQlowi0iU066XhctR5sFc9i4X+4aMbYFbRQwZ1xtL4WbT7K2G2OMQW0rbuW5VI0/XYYmvfMl
Cc: poky@yoctoproject.org
Subject: Re: Error when removing dependency with oe_filter_out
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
X-List-Received-Date: Mon, 25 Feb 2013 17:51:35 -0000
Content-Type: multipart/alternative; boundary=20cf307f390063ce8f04d690308a

--20cf307f390063ce8f04d690308a
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Feb 25, 2013 at 7:47 PM, Burton, Ross <ross.burton@intel.com> wrote:

> On 25 February 2013 17:43, Saul Wold <sgw@linux.intel.com> wrote:
> > Can you put a space in the filter_out above?  I have not tried that, but
> > what's happening in the filter out is finding the "db" part of "gdb" and
> > removing it from the depends line for the cross tools.
> >
> > Try " db" or some such.
>
> Actually, looking at the source (lib/oe/utils.py), it does this:
>
>     return " ".join(filter(lambda x: not match(f, x, 0), str.split()))
>
> So " db" won't work, but "^db$" will.
>


Nothing works.

ERROR: Nothing PROVIDES
'virtual/nativesdk-arm-oe-linux-gnueabi-compilerlibs' (but
virtual:nativesdk:/media/HDD-WRS/Projects/Yocto/pfi/oe-core/meta/recipes-devtools/python/
python_2.7.3.bb DEPENDS on or otherwise requires it)
NOTE: Runtime target 'gdb-cross-canadian-arm' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['gdb-cross-canadian-arm',
'nativesdk-python', 'virtual/nativesdk-arm-oe-linux-gnueabi-compilerlibs']
NOTE: Runtime target 'packagegroup-cross-canadian-arm' is unbuildable,
removing...
Missing or unbuildable dependency chain was:
['packagegroup-cross-canadian-arm', 'gdb-cross-canadian-arm',
'nativesdk-python', 'virtual/nativesdk-arm-oe-linux-gnueabi-compilerlibs']
ERROR: Required build target 'pfi-image-test' has no buildable providers.
Missing or unbuildable dependency chain was: ['pfi-image-test',
'packagegroup-cross-canadian-arm', 'gdb-cross-canadian-arm',
'nativesdk-python', 'virtual/nativesdk-arm-oe-linux-gnueabi-compilerlibs']


-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--20cf307f390063ce8f04d690308a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Mon, Feb 25, 2013 at 7:47 PM, Burton, Ross <span dir=3D"ltr">&lt=
;<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@int=
el.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div class=3D"im">On 25 February 2013 17:43, Saul Wold &lt=
;<a href=3D"mailto:sgw@linux.intel.com">sgw@linux.intel.com</a>&gt; wrote:<=
br>


&gt; Can you put a space in the filter_out above? =A0I have not tried that,=
 but<br>
&gt; what&#39;s happening in the filter out is finding the &quot;db&quot; p=
art of &quot;gdb&quot; and<br>
&gt; removing it from the depends line for the cross tools.<br>
&gt;<br>
&gt; Try &quot; db&quot; or some such.<br>
<br>
</div>Actually, looking at the source (lib/oe/utils.py), it does this:<br>
<br>
=A0 =A0 return &quot; &quot;.join(filter(lambda x: not match(f, x, 0), str.=
split()))<br>
<br>
So &quot; db&quot; won&#39;t work, but &quot;^db$&quot; will.<br></blockquo=
te><div><br></div><div><br></div><div style>Nothing works.</div><div style>=
<br></div><div style><div>ERROR: Nothing PROVIDES &#39;virtual/nativesdk-ar=
m-oe-linux-gnueabi-compilerlibs&#39; (but virtual:nativesdk:/media/HDD-WRS/=
Projects/Yocto/pfi/oe-core/meta/recipes-devtools/python/<a href=3D"http://p=
ython_2.7.3.bb">python_2.7.3.bb</a> DEPENDS on or otherwise requires it)</d=
iv>

<div>NOTE: Runtime target &#39;gdb-cross-canadian-arm&#39; is unbuildable, =
removing...</div><div>Missing or unbuildable dependency chain was: [&#39;gd=
b-cross-canadian-arm&#39;, &#39;nativesdk-python&#39;, &#39;virtual/natives=
dk-arm-oe-linux-gnueabi-compilerlibs&#39;]</div>

<div>NOTE: Runtime target &#39;packagegroup-cross-canadian-arm&#39; is unbu=
ildable, removing...</div><div>Missing or unbuildable dependency chain was:=
 [&#39;packagegroup-cross-canadian-arm&#39;, &#39;gdb-cross-canadian-arm&#3=
9;, &#39;nativesdk-python&#39;, &#39;virtual/nativesdk-arm-oe-linux-gnueabi=
-compilerlibs&#39;]</div>

<div>ERROR: Required build target &#39;pfi-image-test&#39; has no buildable=
 providers.</div><div>Missing or unbuildable dependency chain was: [&#39;pf=
i-image-test&#39;, &#39;packagegroup-cross-canadian-arm&#39;, &#39;gdb-cros=
s-canadian-arm&#39;, &#39;nativesdk-python&#39;, &#39;virtual/nativesdk-arm=
-oe-linux-gnueabi-compilerlibs&#39;]</div>

<div><br></div></div></div><div><br></div>-- <br><div dir=3D"ltr"><div styl=
e=3D"text-align:center"></div><div style=3D"text-align:center"><div align=
=3D"left" style=3D"font-family:&#39;Times New Roman&#39;;font-size:medium">=
<b style=3D"color:rgb(51,51,51);font-family:Arial;font-size:small;text-alig=
n:center">Andrei Gherzan</b><font face=3D"Arial" color=3D"#333333" size=3D"=
-1"><br>

</font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.744.478.41=
4 | =A0f: +40.31.816.28.12</font><br></div></div></div>
</div></div>

--20cf307f390063ce8f04d690308a--
