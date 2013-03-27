Return-Path: <kergoth@gmail.com>
Received: from mail-la0-f53.google.com (mail-la0-f53.google.com
	[209.85.215.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 509CBE01483
	for <poky@yoctoproject.org>; Wed, 27 Mar 2013 07:59:18 -0700 (PDT)
Received: by mail-la0-f53.google.com with SMTP id fr10so15907022lab.12
	for <poky@yoctoproject.org>; Wed, 27 Mar 2013 07:59:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=VZlvQtuw9lt9arsH43ipJZDrVLTgeseRVLaYE/MxTcM=;
	b=P9pty6zUBVpwzGSnvs8V30nmY3UiwwJ5/QAYnRtMePVEtQilgDUa5QlC9mxovNUb+b
	XIf8U/McV0fGYNbUzPN9v9wqHhCT+0dvv8HWdaMUk2lGSGqzcktVXfRBXGHuafOQkPXb
	eiRC71dMkeQP8eyz3P1yIAs7AmlREN+3j3kQyldDDQ0mW39u2Of6SVSZgB5blBUG+cBq
	fMwK0uCNqU4/1hlojNQXElYA3gohac2SJtipQUjvtEBE9fS0SPRZ2xGYs1gMVoMzDiD5
	g5DmHtSDiFLC2NvzydiKdLy/L1yH6Ks4AhUzjDtNUtv9g119MgoKG2ftFVqhtMzKNFNb
	h24w==
X-Received: by 10.112.103.168 with SMTP id fx8mr10388622lbb.32.1364396356501; 
	Wed, 27 Mar 2013 07:59:16 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.112.25.195 with HTTP; Wed, 27 Mar 2013 07:58:56 -0700 (PDT)
In-Reply-To: <1364392789-24104-1-git-send-email-ross.burton@intel.com>
References: <1364392789-24104-1-git-send-email-ross.burton@intel.com>
From: Chris Larson <clarson@kergoth.com>
Date: Wed, 27 Mar 2013 07:58:56 -0700
X-Google-Sender-Auth: R4k7APzTn2VH5PpbeA3XfULUo4U
Message-ID: <CABcZANn9haGTBdmo1F=vwQw5G6kqGBdPKRaocDhmVc4uFp-ikQ@mail.gmail.com>
To: Ross Burton <ross.burton@intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH] poky.conf: enable Wayland DISTRO_FEATURE
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
X-List-Received-Date: Wed, 27 Mar 2013 14:59:18 -0000
Content-Type: multipart/alternative; boundary=f46d04016a99298b9904d8e9480e

--f46d04016a99298b9904d8e9480e
Content-Type: text/plain; charset=UTF-8

On Wed, Mar 27, 2013 at 6:59 AM, Ross Burton <ross.burton@intel.com> wrote:

> Without the Wayland feature you don't get the Wayland EGL platform built
> into
> Mesa, so Poky can't be used to test Wayland or Weston properly out of the
> box.
>
> Signed-off-by: Ross Burton <ross.burton@intel.com>
> ---
>  meta-yocto/conf/distro/poky.conf |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/meta-yocto/conf/distro/poky.conf
> b/meta-yocto/conf/distro/poky.conf
> index f146f5f..afe328b 100644
> --- a/meta-yocto/conf/distro/poky.conf
> +++ b/meta-yocto/conf/distro/poky.conf
> @@ -11,7 +11,7 @@ TARGET_VENDOR = "-poky"
>  LOCALCONF_VERSION = "1"
>  LAYER_CONF_VERSION ?= "6"
>
> -DISTRO_FEATURES_append = " largefile opengl multiarch"
> +DISTRO_FEATURES_append = " largefile opengl multiarch wayland"
>

This reminds me, could we make this overridable? There are distros which
are based on poky, but might want to tweak the supported features. Perhaps
these features could be shoved into a separate variable and _append that,
or just use +=.
-- 
Christopher Larson

--f46d04016a99298b9904d8e9480e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Wed, Mar 27, 2013 at 6:59 AM, Ross Burton <span dir=3D"ltr">&lt;<a href=
=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</=
a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div id=3D":1gw">Without the Wayland feature=
 you don&#39;t get the Wayland EGL platform built into<br>
Mesa, so Poky can&#39;t be used to test Wayland or Weston properly out of t=
he box.<br>
<br>
Signed-off-by: Ross Burton &lt;<a href=3D"mailto:ross.burton@intel.com">ros=
s.burton@intel.com</a>&gt;<br>
---<br>
=C2=A0meta-yocto/conf/distro/poky.conf | =C2=A0 =C2=A02 +-<br>
=C2=A01 file changed, 1 insertion(+), 1 deletion(-)<br>
<br>
diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky=
.conf<br>
index f146f5f..afe328b 100644<br>
--- a/meta-yocto/conf/distro/poky.conf<br>
+++ b/meta-yocto/conf/distro/poky.conf<br>
@@ -11,7 +11,7 @@ TARGET_VENDOR =3D &quot;-poky&quot;<br>
=C2=A0LOCALCONF_VERSION =3D &quot;1&quot;<br>
=C2=A0LAYER_CONF_VERSION ?=3D &quot;6&quot;<br>
<br>
-DISTRO_FEATURES_append =3D &quot; largefile opengl multiarch&quot;<br>
+DISTRO_FEATURES_append =3D &quot; largefile opengl multiarch wayland&quot;=
</div></blockquote></div><br>This reminds me, could we make this overridabl=
e? There are distros which are based on poky, but might want to tweak the s=
upported features. Perhaps these features could be shoved into a separate v=
ariable and _append that, or just use +=3D.<br>

-- <br>Christopher Larson</div></div>

--f46d04016a99298b9904d8e9480e--
