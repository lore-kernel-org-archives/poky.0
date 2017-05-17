Return-Path: <tharvey@gateworks.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F3D25E00B19; Wed, 17 May 2017 12:36:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.52 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.52 listed in list.dnswl.org]
Received: from mail-wm0-f52.google.com (mail-wm0-f52.google.com [74.125.82.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EDBD1E00AFD
	for <poky@yoctoproject.org>; Wed, 17 May 2017 12:36:18 -0700 (PDT)
Received: by mail-wm0-f52.google.com with SMTP id d127so27904706wmf.0
	for <poky@yoctoproject.org>; Wed, 17 May 2017 12:36:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gateworks-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=MScoZENXmk51jnDCPdYKDxPUA4MR1lCW7ncTnOen7dE=;
	b=bNI0+kP7FcMS6NHKbZXVZe0A+qGL+VGAqn6gVNyqjGQI7kQVEu0KrBKZq70VhourC9
	pH3R+Tg+MbTDnhyMavJsgbG/hdYj75gNnQF3DEHuTbky7EmAUr2i/ygbOym3zs6Zilys
	2YUUPP8zljWIoDaeK6H1oOm+lFv+LA7Ol5mDNpc4b1eiG55Ssj4JFknGtb1YBgbKMJEW
	as9MoAboREqY9cLvEDSWON3wLAIRMzH24/pVO6NWK6ah/6XrLVwUvjUQh3Vlp6tCp4hv
	b+FPpWoviGiR0y9r488cANG1MaimuTQiSbMge61epv5bVPwOEyZjeu+tVeD0+vCx5z/5
	jKpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=MScoZENXmk51jnDCPdYKDxPUA4MR1lCW7ncTnOen7dE=;
	b=Z8wpoTnq12aglFCjWGCmAZwV87wE9exViQY3AamvLhrq8kXIeIqQDj8AO/hQ8rYXz6
	pOCCtFIugR7iJU/7DxTQbxVcaMcNS9tEYiom73A6EpjziRW+ADDn0bfQtoMJSNVZ/2vt
	Cv1AG5cbQwbT3ZN7u7pYptXIfGrpXArTmedPgaMMME4UNNzUqlrP2T9+CUpUxzh46WDy
	GxjN55ec6eTGZTqNHvgfaxcCKbiX3CO7zbW1m4BFZA7WPvxYujRpYv8Jub9ECPh6LUDA
	lUfOl/Z5XhkQRWNjFiGeOtfmEbQI2ule4WYp8drj1dfUxdX2oX3wWWJIfhuel/G4RWD+
	5yDw==
X-Gm-Message-State: AODbwcD37ikqiO6+wRW54j9MglFXzRto5qa7f3TPJ0KqpkLlETFMhtFT
	7GjxXxt/jx9L8UVe9pyp1jFzkzWAmKt0c5k=
X-Received: by 10.28.137.201 with SMTP id l192mr11394701wmd.27.1495049776561; 
	Wed, 17 May 2017 12:36:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.212.21 with HTTP; Wed, 17 May 2017 12:36:15 -0700 (PDT)
From: Tim Harvey <tharvey@gateworks.com>
Date: Wed, 17 May 2017 12:36:15 -0700
Message-ID: <CAJ+vNU02n6DavkhuwM8gU7daWLyyd4QHgd0N5topHJQiO2_6RA@mail.gmail.com>
To: poky@yoctoproject.org, openembedded-core@lists.openembedded.org
Subject: populate sdk broken for u-boot-mkimage
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
X-List-Received-Date: Wed, 17 May 2017 19:36:21 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Greetings,

I'm running into the following build error when trying to create an
SDK for an image that includes u-boot-mkimage-native.

The nativesdk-u-boot-mkimage do_package task fails with:
ERROR: nativesdk-u-boot-mkimage: chrpath command failed with exit code 7:
b'/usr/src/ventana/yocto/pyro-2.3/build/tmp/work/x86_64-nativesdk-fslcsdk-l=
inux/nativesdk-u-boot-mkimage/1_2017.01-r0/package/opt/fslc-x11/2.3/sysroot=
s/x86_64-fslcsdk-linux/usr/bin/uboot-mkimage:
RPATH=3D/usr/src/ventana/yocto/pyro-2.3/build/tmp/work/x86_64-nativesdk-fsl=
csdk-linux/nativesdk-u-boot-mkimage/1_2017.01-r0/recipe-sysroot-native/usr/=
lib:/usr/src/ventana/yocto/pyro-2.3/build/tmp/work/x86_64-nativesdk-fslcsdk=
-linux/nativesdk-u-boot-mkimage/1_2017.01-r0/recipe-sysroot-native/lib\n'b"=
new
rpath '$ORIGIN/../../../../../../../usr/src/ventana/yocto/pyro-2.3/build/tm=
p/work/x86_64-nativesdk-fslcsdk-linux/nativesdk-u-boot-mkimage/1_2017.01-r0=
/recipe-sysroot-native/usr/lib:$ORIGIN/../../../../../../../usr/src/ventana=
/yocto/pyro-2.3/build/tmp/work/x86_64-nativesdk-fslcsdk-linux/nativesdk-u-b=
oot-mkimage/1_2017.01-r0/recipe-sysroot-native/lib'
too large; maximum length 287\n"
DEBUG: Python function perform_packagecopy finished
DEBUG: Python function do_package finished
ERROR: Function failed: perform_packagecopy

I'm guessing this has something to do with the long list of args in
EXTRA_OEMAKE_class-nativesdk from
http://git.yoctoproject.org/cgit.cgi/poky/tree/meta/recipes-bsp/u-boot/u-bo=
ot-mkimage_2017.01.bb

Any ideas?

Regards,

Tim

