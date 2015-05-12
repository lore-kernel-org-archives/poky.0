Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81E0DE00998; Tue, 12 May 2015 07:27:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qc0-f175.google.com (mail-qc0-f175.google.com
	[209.85.216.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F5FAE00982
	for <poky@yoctoproject.org>; Tue, 12 May 2015 07:27:44 -0700 (PDT)
Received: by qcbgu10 with SMTP id gu10so5091426qcb.2
	for <poky@yoctoproject.org>; Tue, 12 May 2015 07:27:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=SFD3N6+B9i+a2cKdpgj28PZHaE3yormWgheR/Y3L64Y=;
	b=HAYAVatihCeizUWWlUdEZ2H4/HWlJgcZlUDrnnWRIbKxH5zC42XQ9YGTpWm7rP7EA+
	eXloiR+NCQBcZ+/8NB3Hfr4zAM36KzQCMtFHSK6yOu3/66+OwZeudIKRPKpwbdTIH0br
	EwysrAagauaAzYHhgzRiz+Fcf0VPVVRU9iUgyFDzv0hG5giWjK7mIEbo33O2kjUtk4Ee
	v3bQXlaiWUmnMvKtP37PbsyGyvD2gIqmVhGaWrnteY54Wd0lh7YbZ/zTm7epb1coOEwC
	SMWcUCEv9Oiul/QiN/W1gaD21O/yj7GjfOfLXqzUtVLX8NnGp+upU5BkkjyXqaS/kWfq
	opSA==
X-Gm-Message-State: ALoCoQkiB0ARSwF8N8osBVxZiq+g1FC4MLBCwLSsJFgPORoxRY6xqC+7kq3C974wemNd64PFfnks
X-Received: by 10.55.50.20 with SMTP id y20mr33491283qky.58.1431440864387;
	Tue, 12 May 2015 07:27:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.231 with HTTP; Tue, 12 May 2015 07:27:24 -0700 (PDT)
In-Reply-To: <1431340642-1538-1-git-send-email-george.l.musat@intel.com>
References: <1431340642-1538-1-git-send-email-george.l.musat@intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 12 May 2015 15:27:24 +0100
Message-ID: <CAJTo0Lb_94aXvkvzqnYSTgyV08eXh9yXLvKfvWFKry2U4=HHCA@mail.gmail.com>
To: Lucian Musat <george.l.musat@intel.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH] meta-yocto/distro: Added Ubuntu 15.04 to SANITY_TESTED_DISTROS
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
X-List-Received-Date: Tue, 12 May 2015 14:27:49 -0000
Content-Type: multipart/alternative; boundary=001a114713923d3b500515e34cd9

--001a114713923d3b500515e34cd9
Content-Type: text/plain; charset=UTF-8

Is this actually tested by QA yet, and if not should we wait until it is?

Ross

On 11 May 2015 at 11:37, Lucian Musat <george.l.musat@intel.com> wrote:

> Signed-off-by: Lucian Musat <george.l.musat@intel.com>
> ---
>  meta-yocto/conf/distro/poky.conf | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/meta-yocto/conf/distro/poky.conf
> b/meta-yocto/conf/distro/poky.conf
> index aa6f01e..ec76ae1 100644
> --- a/meta-yocto/conf/distro/poky.conf
> +++ b/meta-yocto/conf/distro/poky.conf
> @@ -74,6 +74,7 @@ SANITY_TESTED_DISTROS ?= " \
>              poky-1.8 \n \
>              Ubuntu-14.04 \n \
>              Ubuntu-14.10 \n \
> +            Ubuntu-15.04 \n \
>              Fedora-21 \n \
>              CentOS-6.* \n \
>              CentOS-7.* \n \
> --
> 2.1.4
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

--001a114713923d3b500515e34cd9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Is this actually tested by QA yet, and if not should we wa=
it until it is?<div><br></div><div>Ross</div></div><div class=3D"gmail_extr=
a"><br><div class=3D"gmail_quote">On 11 May 2015 at 11:37, Lucian Musat <sp=
an dir=3D"ltr">&lt;<a href=3D"mailto:george.l.musat@intel.com" target=3D"_b=
lank">george.l.musat@intel.com</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">Signed-off-by: Lucian Musat &lt;<a href=3D"mailto:george.l.mu=
sat@intel.com">george.l.musat@intel.com</a>&gt;<br>
---<br>
=C2=A0meta-yocto/conf/distro/poky.conf | 1 +<br>
=C2=A01 file changed, 1 insertion(+)<br>
<br>
diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky=
.conf<br>
index aa6f01e..ec76ae1 100644<br>
--- a/meta-yocto/conf/distro/poky.conf<br>
+++ b/meta-yocto/conf/distro/poky.conf<br>
@@ -74,6 +74,7 @@ SANITY_TESTED_DISTROS ?=3D &quot; \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0poky-1.8 \n \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Ubuntu-14.04 \n \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Ubuntu-14.10 \n \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Ubuntu-15.04 \n \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Fedora-21 \n \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0CentOS-6.* \n \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0CentOS-7.* \n \<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
2.1.4<br>
<br>
--<br>
_______________________________________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" target=3D"_blank">=
https://lists.yoctoproject.org/listinfo/poky</a><br>
</font></span></blockquote></div><br></div>

--001a114713923d3b500515e34cd9--
