Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5104D4C810D2
	for <poky@yoctoproject.org>; Sat, 15 Jan 2011 07:12:12 -0600 (CST)
Received: by wye20 with SMTP id 20so3802110wye.35
	for <poky@yoctoproject.org>; Sat, 15 Jan 2011 05:12:11 -0800 (PST)
Received: by 10.227.147.18 with SMTP id j18mr1472381wbv.198.1295097131280;
	Sat, 15 Jan 2011 05:12:11 -0800 (PST)
Received: from [172.20.1.5] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id
	m50sm1233323wek.32.2011.01.15.05.12.09
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Sat, 15 Jan 2011 05:12:10 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <1865303E0DED764181A9D882DEF65FB685AFA1B329@shsmsx502.ccr.corp.intel.com>
Date: Sat, 15 Jan 2011 14:12:09 +0100
Message-Id: <467D1FAB-0557-4C3F-BC6B-1D010DC18DD3@dominion.thruhere.net>
References: <cover.1295089968.git.dexuan.cui@intel.com>
	<1fbef243a72576df8cac5fa1304569fddf9e9c4d.1295089968.git.dexuan.cui@intel.com>
	<2912EC4A-4B47-40DB-AC12-8C9DC27F3C25@dominion.thruhere.net>
	<1865303E0DED764181A9D882DEF65FB685AFA1B329@shsmsx502.ccr.corp.intel.com>
To: "Cui, Dexuan" <dexuan.cui@intel.com>
X-Mailer: Apple Mail (2.1082)
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
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
X-List-Received-Date: Sat, 15 Jan 2011 13:12:13 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 15 jan 2011, om 12:55 heeft Cui, Dexuan het volgende geschreven:

> Koen Kooi wrote:
>> Op 15 jan 2011, om 12:23 heeft Dexuan Cui het volgende geschreven:
>>=20
>>> Currently gcc-runtime installs the files, but actually gcc-runtime's
>>> do_configure checks if the files are available, so before we build
>>> gcc-runtime,=20
>>> we should have some recipe install the files first! -- currently
>>> gcc-cross-intermediate actually does that(gcc-cross also installs
>>> the files,=20
>>> but it installs into the gcc-build-internal* directory), but
>>> gcc-cross-intermediate will have its own sysroot in future, after
>>> that,=20
>>> gcc-runtime won't build. So let us add this new target recipe and
>>> move the=20
>>> installation of the files from gcc-runtime into it.
>>=20
>> I understand the problem, but...
>>=20
>>> diff --git a/meta/recipes-devtools/gcc/libgcc_4.5.1.bb
>>> b/meta/recipes-devtools/gcc/libgcc_4.5.1.bb=20
>>>=20
>>> +do_install () {
>>> +	target=3D`echo ${MULTIMACH_TARGET_SYS} | sed -e s#-nativesdk##` =
+
>>> +	# Install libgcc from our gcc-cross saved data
>>> +	install -d ${D}${base_libdir} ${D}${libdir}
>>> +	cp -fpPR ${STAGING_INCDIR_NATIVE}/gcc-build-internal-$target/* =
${D}
>>=20
>> ... why can't gcc-cross create the libgcc(-dev) packages? You're
>> using the exact files gcc-cross installs, so why have an extra
>> recipe? It feels backwards to have one package grab files from
>> another package from sysroots and package those.  =20
> I discussed this with Richard in the #yocto IRC channel several days =
ago.
> Richard thinks the packaging of the files should be in a target recipe =
rather than a cross one.
> Cc Richard for further explanation why doing the packaging in a =
gcc-cross is a mistake. :-)

I know packaging files from gcc-cross leads to all kinds of problems, =
but you're not using a target recipe, you are now indirectly packaging =
files from gcc-cross instead of directly.

Since the files are exactly the same, why is this work around better =
than just packaging them directly. Or the other options, just building a =
new libgcc with a "real" recipe.

regards,

Koen=20=

