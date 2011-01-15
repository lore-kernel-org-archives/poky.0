Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id E96B14C81003
	for <poky@yoctoproject.org>; Sat, 15 Jan 2011 05:37:11 -0600 (CST)
Received: by wwb31 with SMTP id 31so3983074wwb.11
	for <poky@yoctoproject.org>; Sat, 15 Jan 2011 03:37:11 -0800 (PST)
Received: by 10.227.133.10 with SMTP id d10mr1856659wbt.82.1295091422503;
	Sat, 15 Jan 2011 03:37:02 -0800 (PST)
Received: from [172.20.1.5] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id s9sm1092975wby.22.2011.01.15.03.37.01
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Sat, 15 Jan 2011 03:37:01 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <1fbef243a72576df8cac5fa1304569fddf9e9c4d.1295089968.git.dexuan.cui@intel.com>
Date: Sat, 15 Jan 2011 12:37:00 +0100
Message-Id: <2912EC4A-4B47-40DB-AC12-8C9DC27F3C25@dominion.thruhere.net>
References: <cover.1295089968.git.dexuan.cui@intel.com>
	<1fbef243a72576df8cac5fa1304569fddf9e9c4d.1295089968.git.dexuan.cui@intel.com>
To: Dexuan Cui <dexuan.cui@intel.com>
X-Mailer: Apple Mail (2.1082)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/2] libgcc: use the new recipe (rather than gcc-runtime) to install libgcc_s.so* and crt*.o
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
X-List-Received-Date: Sat, 15 Jan 2011 11:37:12 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 15 jan 2011, om 12:23 heeft Dexuan Cui het volgende geschreven:

> Currently gcc-runtime installs the files, but actually gcc-runtime's
> do_configure checks if the files are available, so before we build =
gcc-runtime,
> we should have some recipe install the files first! -- currently
> gcc-cross-intermediate actually does that(gcc-cross also installs the =
files,
> but it installs into the gcc-build-internal* directory), but
> gcc-cross-intermediate will have its own sysroot in future, after =
that,
> gcc-runtime won't build. So let us add this new target recipe and move =
the
> installation of the files from gcc-runtime into it.

I understand the problem, but...

> diff --git a/meta/recipes-devtools/gcc/libgcc_4.5.1.bb =
b/meta/recipes-devtools/gcc/libgcc_4.5.1.bb
>=20
> +do_install () {
> +	target=3D`echo ${MULTIMACH_TARGET_SYS} | sed -e s#-nativesdk##`
> +
> +	# Install libgcc from our gcc-cross saved data
> +	install -d ${D}${base_libdir} ${D}${libdir}
> +	cp -fpPR ${STAGING_INCDIR_NATIVE}/gcc-build-internal-$target/* =
${D}

... why can't gcc-cross create the libgcc(-dev) packages? You're using =
the exact files gcc-cross installs, so why have an extra recipe? It =
feels backwards to have one package grab files from another package from =
sysroots and package those.

regards,

Koen=

