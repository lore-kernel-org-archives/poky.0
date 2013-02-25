Return-Path: <andrei@gherzan.ro>
Received: from mail-ve0-f177.google.com (mail-ve0-f177.google.com
	[209.85.128.177]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 40783E00348
	for <poky@yoctoproject.org>; Mon, 25 Feb 2013 09:08:24 -0800 (PST)
Received: by mail-ve0-f177.google.com with SMTP id m1so2334659ves.8
	for <poky@yoctoproject.org>; Mon, 25 Feb 2013 09:08:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:x-originating-ip:from:date:message-id
	:subject:to:content-type:x-gm-message-state;
	bh=H/RY1QWAsme7UrOGZH1vyrkgEUFLPZhWtCnyeIWpa7s=;
	b=dO/n8cmlsjXHatc04RBGKKIAvO44AA3hf3PCOOZuhnTqDVXaUbdS7OjJceZSfwsmID
	FYVEwyFaDsB9CLROtNQkVxXwoB2nViev+dmyN9fycdaLss37qXWVf7DCqPf2qZCPGhOn
	/P7PP7wUolh54d6LPsFI78BbDxFqwvQdsui29zbwSWXl6wGH7pJgqwyakxYTNt/2VsT6
	b9VugYQMi5eS0TWY86BDf8PvhTnLiISMwSXYHELaC9mayPR3F0XahMCmHsAjJQFvEutG
	6ZmlH2H2i4J47Bs+U6ehauEgu4OE6ZfBwQqXHRKInGvK0ZTbafeeJR9pwcgrk/STJJhc
	7Tyw==
X-Received: by 10.52.178.161 with SMTP id cz1mr8798716vdc.7.1361812103200;
	Mon, 25 Feb 2013 09:08:23 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.75.9 with HTTP; Mon, 25 Feb 2013 09:08:03 -0800 (PST)
X-Originating-IP: [89.121.200.106]
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Mon, 25 Feb 2013 19:08:03 +0200
Message-ID: <CAK18fxEj1UYMV21aOLfbMpVOfGYuSCgUj0b_ArADsHCJbUkLYA@mail.gmail.com>
To: poky@yoctoproject.org
X-Gm-Message-State: ALoCoQkilLnAuipy9THBmAZVSY4QonMinzOO0Jr3Gip3k2xTpQLOl+PyRylokQimpjNFGJii27BC
Subject: Error when removing dependency with oe_filter_out
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
X-List-Received-Date: Mon, 25 Feb 2013 17:08:24 -0000
Content-Type: multipart/alternative; boundary=bcaec519644ba9a3c504d68f96d4

--bcaec519644ba9a3c504d68f96d4
Content-Type: text/plain; charset=ISO-8859-1

I want to add a bbappend to remove db dependency of python:
DEPENDS := "${@oe_filter_out('db', '${DEPENDS}', d)}"

If i do it so, build ends up with this error:

ERROR: Nothing PROVIDES 'virtual/arm-poky-linux-gnueabi-gcc-crosssdk' (but
virtual:nativesdk:/media/HDD-WRS/Projects/Yocto/poky/meta/recipes-devtools/python/
python_2.7.3.bb DEPENDS on or otherwise requires it)
NOTE: Runtime target 'gdb-cross-canadian-arm' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['gdb-cross-canadian-arm',
'nativesdk-python', 'virtual/arm-poky-linux-gnueabi-gcc-crosssdk']
NOTE: Runtime target 'packagegroup-cross-canadian-arm' is unbuildable,
removing...
Missing or unbuildable dependency chain was:
['packagegroup-cross-canadian-arm', 'gdb-cross-canadian-arm',
'nativesdk-python', 'virtual/arm-poky-linux-gnueabi-gcc-crosssdk']
ERROR: Required build target 'core-image-minimal' has no buildable
providers.
Missing or unbuildable dependency chain was: ['core-image-minimal',
'packagegroup-cross-canadian-arm', 'gdb-cross-canadian-arm',
'nativesdk-python', 'virtual/arm-poky-linux-gnueabi-gcc-crosssdk']

If i simply remove it from DEPENDS everything works.

Any help?

-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--bcaec519644ba9a3c504d68f96d4
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I want to add a bbappend to remove db dependency of python=
:<div>DEPENDS :=3D &quot;${@oe_filter_out(&#39;db&#39;, &#39;${DEPENDS}&#39=
;, d)}&quot;<br></div><div><br></div><div style>If i do it so, build ends u=
p with this error:</div>

<div><br></div><div><div>ERROR: Nothing PROVIDES &#39;virtual/arm-poky-linu=
x-gnueabi-gcc-crosssdk&#39; (but virtual:nativesdk:/media/HDD-WRS/Projects/=
Yocto/poky/meta/recipes-devtools/python/<a href=3D"http://python_2.7.3.bb">=
python_2.7.3.bb</a> DEPENDS on or otherwise requires it)</div>

<div>NOTE: Runtime target &#39;gdb-cross-canadian-arm&#39; is unbuildable, =
removing...</div><div>Missing or unbuildable dependency chain was: [&#39;gd=
b-cross-canadian-arm&#39;, &#39;nativesdk-python&#39;, &#39;virtual/arm-pok=
y-linux-gnueabi-gcc-crosssdk&#39;]</div>

<div>NOTE: Runtime target &#39;packagegroup-cross-canadian-arm&#39; is unbu=
ildable, removing...</div><div>Missing or unbuildable dependency chain was:=
 [&#39;packagegroup-cross-canadian-arm&#39;, &#39;gdb-cross-canadian-arm&#3=
9;, &#39;nativesdk-python&#39;, &#39;virtual/arm-poky-linux-gnueabi-gcc-cro=
sssdk&#39;]</div>

<div>ERROR: Required build target &#39;core-image-minimal&#39; has no build=
able providers.</div><div>Missing or unbuildable dependency chain was: [&#3=
9;core-image-minimal&#39;, &#39;packagegroup-cross-canadian-arm&#39;, &#39;=
gdb-cross-canadian-arm&#39;, &#39;nativesdk-python&#39;, &#39;virtual/arm-p=
oky-linux-gnueabi-gcc-crosssdk&#39;]</div>

<div><br></div><div style>If i simply remove it from DEPENDS everything wor=
ks.=A0</div><div style><br></div><div style>Any help?</div><div><br></div>-=
- <br><div dir=3D"ltr"><div style=3D"text-align:center"></div><div style=3D=
"text-align:center">

<div align=3D"left" style=3D"font-family:&#39;Times New Roman&#39;;font-siz=
e:medium"><b style=3D"color:rgb(51,51,51);font-family:Arial;font-size:small=
;text-align:center">Andrei Gherzan</b><font face=3D"Arial" color=3D"#333333=
" size=3D"-1"><br>

</font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.744.478.41=
4 | =A0f: +40.31.816.28.12</font><br></div></div></div>
</div></div>

--bcaec519644ba9a3c504d68f96d4--
