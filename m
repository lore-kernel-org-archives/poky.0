Return-Path: <raj.khem@gmail.com>
Received: from mail-gx0-f176.google.com (mail-gx0-f176.google.com
	[209.85.161.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A511E011C6
	for <poky@yoctoproject.org>; Tue, 16 Aug 2011 07:35:47 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by gxk7 with SMTP id 7so5190758gxk.35
	for <poky@yoctoproject.org>; Tue, 16 Aug 2011 07:35:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:x-enigmail-version:content-type
	:content-transfer-encoding;
	bh=N3KfseeKXCvOSOdY5Z4GjMkFBWik4pzUlV7B/1yTDg4=;
	b=fp2x0e3es5XI8qBNZWFe2z0Js37Sh80QEXc4ko/dGiSQ+JJLup5r9JfSU97nbhg4/a
	mmJUWhluZOlA2jtVkNewdkVyRch3bM6lMucrOl388Mq5buF7eHKbl5PMghaXp41szUaG
	OyseWUNV1Yyzloajud3MoMBVd77F+Qk6uO6/4=
Received: by 10.236.72.226 with SMTP id t62mr4698087yhd.95.1313505356988;
	Tue, 16 Aug 2011 07:35:56 -0700 (PDT)
Received: from [172.23.10.27] (natint3.juniper.net [66.129.224.36])
	by mx.google.com with ESMTPS id r28sm115233yhm.24.2011.08.16.07.35.55
	(version=SSLv3 cipher=OTHER); Tue, 16 Aug 2011 07:35:56 -0700 (PDT)
Message-ID: <4E4A804A.3090102@gmail.com>
Date: Tue, 16 Aug 2011 07:35:54 -0700
From: Khem Raj <raj.khem@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:6.0) Gecko/20110809 Thunderbird/6.0
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <cover.1313477829.git.jiajun.xu@intel.com>
	<90c7a0495c570e70d0445468788efb16a4083824.1313477829.git.jiajun.xu@intel.com>
In-Reply-To: <90c7a0495c570e70d0445468788efb16a4083824.1313477829.git.jiajun.xu@intel.com>
X-Enigmail-Version: 1.2.1
Subject: Re: [PATCH 1/1] poky.conf: add flag opengl into DISTRO_FEATURES
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
X-List-Received-Date: Tue, 16 Aug 2011 14:35:47 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

On 08/15/2011 11:59 PM, Jiajun Xu wrote:
> libsdl will check if opengl is set in DISTRO_FEATURES, then enable 
> openGL option during do_configure. It is required for 3D game
> testing.
> 

is it also affecting how qemu is built ?


> Fix [YOCTO #883]
> 
> Signed-off-by: Jiajun Xu <jiajun.xu@intel.com> --- 
> meta-yocto/conf/distro/poky.conf |    2 +- 1 files changed, 1
> insertions(+), 1 deletions(-)
> 
> diff --git a/meta-yocto/conf/distro/poky.conf
> b/meta-yocto/conf/distro/poky.conf index 88b8adf..c65cbc4 100644 ---
> a/meta-yocto/conf/distro/poky.conf +++
> b/meta-yocto/conf/distro/poky.conf @@ -10,7 +10,7 @@ TARGET_VENDOR =
> "-poky"
> 
> LOCALCONF_VERSION = "1"
> 
> -DISTRO_FEATURES_append = " largefile" +DISTRO_FEATURES_append = "
> largefile opengl"
> 
> PREFERRED_VERSION_linux-yocto ?= "2.6.37+git%"
> 

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iEYEARECAAYFAk5KgEkACgkQuwUzVZGdMxSsbgCdE2H7I8C9LywfUnYEmreGB2+9
2uwAn3iKwGpobq1ZVK4D11IZAeLLkXk5
=XlfZ
-----END PGP SIGNATURE-----

