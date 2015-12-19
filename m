Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 77BA0E00AE6; Fri, 18 Dec 2015 20:50:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f172.google.com (mail-io0-f172.google.com
	[209.85.223.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5AE02E00406
	for <poky@yoctoproject.org>; Fri, 18 Dec 2015 20:50:50 -0800 (PST)
Received: by mail-io0-f172.google.com with SMTP id e126so109864655ioa.1
	for <poky@yoctoproject.org>; Fri, 18 Dec 2015 20:50:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=iqn7TTdS+wJIue2PYuqHZp64o+jom7NQ+AiiHT6X3oU=;
	b=HGBO6GAwYFudEzG7w/m4ILkrcmcTBrSwyL+6rwLdSpi/MjLVew/JutLcs7nymVUgg3
	Pwuvhc9xebwBvL1pyysxTc6gEw2a4f6VvK+NayQ8V5Blw6lvPZkWoyK8ibKxGWQrjvMi
	P+nkviaPd4MaBjg2YeDNzQ1Hvf1lom07LU17c13Pg2e8FQeP0BfbaaahF30nELfzlQ3A
	mAZ5c33hJGC6eCj42n5keAfU7r7dx7djuE7jqPpMwXT0FIJMXZmN168gy6LPkPoLSD8Y
	70ysPCT7Z364Vs0O0ZpoGro0mdfvXSlU40ERaMjLNEfXUZlcoGEW2Dy9NXLWIw1Vd2S+
	nOYg==
MIME-Version: 1.0
X-Received: by 10.107.9.224 with SMTP id 93mr8396483ioj.112.1450500649792;
	Fri, 18 Dec 2015 20:50:49 -0800 (PST)
Received: by 10.107.12.205 with HTTP; Fri, 18 Dec 2015 20:50:49 -0800 (PST)
Received: by 10.107.12.205 with HTTP; Fri, 18 Dec 2015 20:50:49 -0800 (PST)
In-Reply-To: <1450458030-26912-1-git-send-email-ross.burton@intel.com>
References: <1450458030-26912-1-git-send-email-ross.burton@intel.com>
Date: Fri, 18 Dec 2015 20:50:49 -0800
Message-ID: <CAMKF1sps_gtbAAA12+ZsiuFUgKV=YA+5qu6gX_Nh-YHQvdJ0+g@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: Ross Burton <ross.burton@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] conf/local.conf.sample: comment out ASSUME_PROVIDED=libsdl-native
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
X-List-Received-Date: Sat, 19 Dec 2015 04:50:54 -0000
Content-Type: multipart/alternative; boundary=001a113ebd7cfa3d2b052738fff4

--001a113ebd7cfa3d2b052738fff4
Content-Type: text/plain; charset=UTF-8

Can this be applied to oe-core as well
On Dec 18, 2015 9:01 AM, "Ross Burton" <ross.burton@intel.com> wrote:

> Ubuntu 15.10 and Debian testing can't build qemu-native against the host
> libsdl.
> Now that libsdl-native is buildable, comment out the ASSUME_PROVIDED which
> meant
> it wouldn't be used.
>
> [ YOCTO #8553 ]
>
> Signed-off-by: Ross Burton <ross.burton@intel.com>
> ---
>  meta-yocto/conf/local.conf.sample | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
>
> diff --git a/meta-yocto/conf/local.conf.sample
> b/meta-yocto/conf/local.conf.sample
> index 371349d..7a0dde5 100644
> --- a/meta-yocto/conf/local.conf.sample
> +++ b/meta-yocto/conf/local.conf.sample
> @@ -223,11 +223,12 @@ BB_DISKMON_DIRS = "\
>  # Qemu configuration
>  #
>  # By default qemu will build with a builtin VNC server where graphical
> output can be
> -# seen. The two lines below enable the SDL backend too. This assumes
> there is a
> -# libsdl library available on your build system.
> +# seen. The two lines below enable the SDL backend too. By default
> libsdl-native will
> +# be built, if you want to use your host's libSDL instead of the minimal
> libsdl built
> +# by libsdl-native then uncomment the ASSUME_PROVIDED line below.
>  PACKAGECONFIG_append_pn-qemu-native = " sdl"
>  PACKAGECONFIG_append_pn-nativesdk-qemu = " sdl"
> -ASSUME_PROVIDED += "libsdl-native"
> +#ASSUME_PROVIDED += "libsdl-native"
>
>
>  # CONF_VERSION is increased each time build/conf/ changes incompatibly
> and is used to
> --
> 2.6.4
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

--001a113ebd7cfa3d2b052738fff4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Can this be applied to oe-core as well </p>
<div class=3D"gmail_quote">On Dec 18, 2015 9:01 AM, &quot;Ross Burton&quot;=
 &lt;<a href=3D"mailto:ross.burton@intel.com">ross.burton@intel.com</a>&gt;=
 wrote:<br type=3D"attribution"><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Ubuntu 15.10=
 and Debian testing can&#39;t build qemu-native against the host libsdl.<br=
>
Now that libsdl-native is buildable, comment out the ASSUME_PROVIDED which =
meant<br>
it wouldn&#39;t be used.<br>
<br>
[ YOCTO #8553 ]<br>
<br>
Signed-off-by: Ross Burton &lt;<a href=3D"mailto:ross.burton@intel.com">ros=
s.burton@intel.com</a>&gt;<br>
---<br>
=C2=A0meta-yocto/conf/local.conf.sample | 7 ++++---<br>
=C2=A01 file changed, 4 insertions(+), 3 deletions(-)<br>
<br>
diff --git a/meta-yocto/conf/local.conf.sample b/meta-yocto/conf/local.conf=
.sample<br>
index 371349d..7a0dde5 100644<br>
--- a/meta-yocto/conf/local.conf.sample<br>
+++ b/meta-yocto/conf/local.conf.sample<br>
@@ -223,11 +223,12 @@ BB_DISKMON_DIRS =3D &quot;\<br>
=C2=A0# Qemu configuration<br>
=C2=A0#<br>
=C2=A0# By default qemu will build with a builtin VNC server where graphica=
l output can be<br>
-# seen. The two lines below enable the SDL backend too. This assumes there=
 is a<br>
-# libsdl library available on your build system.<br>
+# seen. The two lines below enable the SDL backend too. By default libsdl-=
native will<br>
+# be built, if you want to use your host&#39;s libSDL instead of the minim=
al libsdl built<br>
+# by libsdl-native then uncomment the ASSUME_PROVIDED line below.<br>
=C2=A0PACKAGECONFIG_append_pn-qemu-native =3D &quot; sdl&quot;<br>
=C2=A0PACKAGECONFIG_append_pn-nativesdk-qemu =3D &quot; sdl&quot;<br>
-ASSUME_PROVIDED +=3D &quot;libsdl-native&quot;<br>
+#ASSUME_PROVIDED +=3D &quot;libsdl-native&quot;<br>
<br>
<br>
=C2=A0# CONF_VERSION is increased each time build/conf/ changes incompatibl=
y and is used to<br>
--<br>
2.6.4<br>
<br>
--<br>
_______________________________________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" rel=3D"noreferrer"=
 target=3D"_blank">https://lists.yoctoproject.org/listinfo/poky</a><br>
</blockquote></div>

--001a113ebd7cfa3d2b052738fff4--
