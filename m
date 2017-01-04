Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1729FE00443; Wed,  4 Jan 2017 06:23:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,HTML_OBFUSCATE_10_20,RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.220.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.1 HTML_OBFUSCATE_10_20 BODY: Message is 10% to 20% HTML obfuscation
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.178 listed in dnsbl.sorbs.net]
Received: from mail-qk0-f178.google.com (mail-qk0-f178.google.com
	[209.85.220.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4CAEE00405
	for <poky@yoctoproject.org>; Wed,  4 Jan 2017 06:23:26 -0800 (PST)
Received: by mail-qk0-f178.google.com with SMTP id n21so401796147qka.3
	for <poky@yoctoproject.org>; Wed, 04 Jan 2017 06:23:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=FDpaiqFxUpx3zq7PNjt2UqiWyuJVjQDj0GfAluSJX5I=;
	b=anE9jk2IDjjrOrcSmCVQLr1bdPAIsK8/9O3/RNoOLKENr4a64wlOl94GipL16kCJzS
	oTOSlIRjEjt6lS7VohlAXhKSXdrzMmzaigLqrS3CKpShvfI86aKSvU17MGVJvILrAzeb
	sJMwANv/OwSZnxnxm6y1nsJhjNDO5YtDawhuV2zKNzqu5AbLBQ87ep1qlgabiwJLzDG7
	jHawwhJyr8SuGUO8l27fXbSQIVn1kZlKRIFBR2lEV3YO0YerBIww83oC37jSyLcNO646
	YW9SJu2D2oyoLOsIQrE9ZsRWUQxcW3HbO8jLFsLW2cYym5zndEAtAoJzLnnc8FNtXSPj
	k0/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=FDpaiqFxUpx3zq7PNjt2UqiWyuJVjQDj0GfAluSJX5I=;
	b=rHA3090ubY9ed+YLKf2iXKmTCBDngD5MDyn7BRe2B9W+H20IzZzuAfJ1WcVlnx2c+2
	90Afw5wHyZWjDFvVIAlHoLCqlRU3SIXJ5+6ML6zU0vQH4YLY38LdyULwJ+HesznkD3wF
	7buUohbr5714c2QQ+d3FRcOU4gpw2eKNNTxm3Yh1dN3GCU20uSLr/usuTEyxTx2O4SdC
	zM9j1SNk9w7In927cYEjBYXxo5ELCv/CF7iudHJLhtaMIFNN/dHAJu/cWCYaHOXk8Cp6
	jLdT+l3IqPyEUzWgtLnXqwAMkYtUGn5ro760g5ALvIAoQy7B9cDCugUjlvyeX/DM/Mty
	jGQA==
X-Gm-Message-State: AIkVDXLem4Zwwbsk7+I+7nHAfm0DsqQuwvpoG4wkBw32FGUurTBom3DDnFMVRlUv/y7EreatVZFpwYaOEUV78zvL
X-Received: by 10.55.31.24 with SMTP id f24mr63213264qkf.221.1483539805777;
	Wed, 04 Jan 2017 06:23:25 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.106.99 with HTTP; Wed, 4 Jan 2017 06:23:05 -0800 (PST)
In-Reply-To: <1483517967-3705-1-git-send-email-oleksandr.kravchuk@pelagicore.com>
References: <1483517967-3705-1-git-send-email-oleksandr.kravchuk@pelagicore.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 4 Jan 2017 14:23:05 +0000
Message-ID: <CAJTo0Lbqngtd2bMLnMRMZo3ZX87M082M2Y2qWKCooA1pTAJScA@mail.gmail.com>
To: Oleksandr Kravchuk <oleksandr.kravchuk@pelagicore.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH] curl: upgrade to 7.52.1
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
X-List-Received-Date: Wed, 04 Jan 2017 14:23:29 -0000
Content-Type: multipart/alternative; boundary=001a1147e2ba2272aa05454587db

--001a1147e2ba2272aa05454587db
Content-Type: text/plain; charset=UTF-8

Patches for oe-core should be sent to the
openembedded-core@lists.openembedded.org list, not poky@.

Thanks,
Ross

On 4 January 2017 at 08:19, Oleksandr Kravchuk <
oleksandr.kravchuk@pelagicore.com> wrote:

> Signed-off-by: Oleksandr Kravchuk <oleksandr.kravchuk@pelagicore.com>
> ---
>  meta/recipes-support/curl/{curl_7.51.0.bb => curl_7.52.1.bb} | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>  rename meta/recipes-support/curl/{curl_7.51.0.bb => curl_7.52.1.bb} (94%)
>
> diff --git a/meta/recipes-support/curl/curl_7.51.0.bb
> b/meta/recipes-support/curl/curl_7.52.1.bb
> similarity index 94%
> rename from meta/recipes-support/curl/curl_7.51.0.bb
> rename to meta/recipes-support/curl/curl_7.52.1.bb
> index a9589b8..2882bc0 100644
> --- a/meta/recipes-support/curl/curl_7.51.0.bb
> +++ b/meta/recipes-support/curl/curl_7.52.1.bb
> @@ -14,8 +14,8 @@ SRC_URI = "http://curl.haxx.se/download/
> curl-${PV}.tar.bz2 \
>  #
>  SRC_URI += " file://configure_ac.patch"
>
> -SRC_URI[md5sum] = "09a7c5769a7eae676d5e2c86d51f167e"
> -SRC_URI[sha256sum] = "7f8240048907e5030f67be0a6129bc
> 4b333783b9cca1391026d700835a788dde"
> +SRC_URI[md5sum] = "dd014df06ff1d12e173de86873f9f77a"
> +SRC_URI[sha256sum] = "d16185a767cb2c1ba3d5b9096ec54e
> 5ec198b213f45864a38b3bda4bbf87389b"
>
>  CVE_PRODUCT = "libcurl"
>  inherit autotools pkgconfig binconfig multilib_header
> --
> 2.7.4
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

--001a1147e2ba2272aa05454587db
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Patches for oe-core should be sent to the <a href=3D"mailt=
o:openembedded-core@lists.openembedded.org">openembedded-core@lists.openemb=
edded.org</a> list, not poky@.<div><br></div><div>Thanks,</div><div>Ross</d=
iv></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On 4 Jan=
uary 2017 at 08:19, Oleksandr Kravchuk <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:oleksandr.kravchuk@pelagicore.com" target=3D"_blank">oleksandr.kravchuk=
@pelagicore.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" =
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Sig=
ned-off-by: Oleksandr Kravchuk &lt;<a href=3D"mailto:oleksandr.kravchuk@pel=
agicore.com">oleksandr.kravchuk@<wbr>pelagicore.com</a>&gt;<br>
---<br>
=C2=A0meta/recipes-support/curl/{<a href=3D"http://curl_7.51.0.bb" rel=3D"n=
oreferrer" target=3D"_blank">cur<wbr>l_7.51.0.bb</a> =3D&gt; <a href=3D"htt=
p://curl_7.52.1.bb" rel=3D"noreferrer" target=3D"_blank">curl_7.52.1.bb</a>=
} | 4 ++--<br>
=C2=A01 file changed, 2 insertions(+), 2 deletions(-)<br>
=C2=A0rename meta/recipes-support/curl/{<a href=3D"http://curl_7.51.0.bb" r=
el=3D"noreferrer" target=3D"_blank">cur<wbr>l_7.51.0.bb</a> =3D&gt; <a href=
=3D"http://curl_7.52.1.bb" rel=3D"noreferrer" target=3D"_blank">curl_7.52.1=
.bb</a>} (94%)<br>
<br>
diff --git a/meta/recipes-support/curl/<a href=3D"http://curl_7.51.0.bb" re=
l=3D"noreferrer" target=3D"_blank">cu<wbr>rl_7.51.0.bb</a> b/meta/recipes-s=
upport/curl/<a href=3D"http://curl_7.52.1.bb" rel=3D"noreferrer" target=3D"=
_blank">cu<wbr>rl_7.52.1.bb</a><br>
similarity index 94%<br>
rename from meta/recipes-support/curl/<a href=3D"http://curl_7.51.0.bb" rel=
=3D"noreferrer" target=3D"_blank">curl<wbr>_7.51.0.bb</a><br>
rename to meta/recipes-support/curl/<a href=3D"http://curl_7.52.1.bb" rel=
=3D"noreferrer" target=3D"_blank">curl<wbr>_7.52.1.bb</a><br>
index a9589b8..2882bc0 100644<br>
--- a/meta/recipes-support/curl/<a href=3D"http://curl_7.51.0.bb" rel=3D"no=
referrer" target=3D"_blank">cu<wbr>rl_7.51.0.bb</a><br>
+++ b/meta/recipes-support/curl/<a href=3D"http://curl_7.52.1.bb" rel=3D"no=
referrer" target=3D"_blank">cu<wbr>rl_7.52.1.bb</a><br>
@@ -14,8 +14,8 @@ SRC_URI =3D &quot;<a href=3D"http://curl.haxx.se/download=
/curl-${PV}.tar.bz2" rel=3D"noreferrer" target=3D"_blank">http://curl.haxx.=
se/download/<wbr>curl-${PV}.tar.bz2</a> \<br>
=C2=A0#<br>
=C2=A0SRC_URI +=3D &quot; file://configure_ac.patch&quot;<br>
<br>
-SRC_URI[md5sum] =3D &quot;<wbr>09a7c5769a7eae676d5e2c86d51f16<wbr>7e&quot;=
<br>
-SRC_URI[sha256sum] =3D &quot;<wbr>7f8240048907e5030f67be0a6129bc<wbr>4b333=
783b9cca1391026d700835a78<wbr>8dde&quot;<br>
+SRC_URI[md5sum] =3D &quot;<wbr>dd014df06ff1d12e173de86873f9f7<wbr>7a&quot;=
<br>
+SRC_URI[sha256sum] =3D &quot;<wbr>d16185a767cb2c1ba3d5b9096ec54e<wbr>5ec19=
8b213f45864a38b3bda4bbf87<wbr>389b&quot;<br>
<br>
=C2=A0CVE_PRODUCT =3D &quot;libcurl&quot;<br>
=C2=A0inherit autotools pkgconfig binconfig multilib_header<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
2.7.4<br>
<br>
--<br>
______________________________<wbr>_________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" rel=3D"noreferrer"=
 target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/poky</a><br=
>
</font></span></blockquote></div><br></div>

--001a1147e2ba2272aa05454587db--
