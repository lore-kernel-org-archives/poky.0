Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E8DEAE00DA5; Tue, 11 Jun 2019 10:24:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.193 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
	[209.85.210.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35208E00D54
	for <poky@yoctoproject.org>; Tue, 11 Jun 2019 10:24:23 -0700 (PDT)
Received: by mail-pf1-f193.google.com with SMTP id a186so7842324pfa.5
	for <poky@yoctoproject.org>; Tue, 11 Jun 2019 10:24:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=nOavQjBvB6BQhKkCui4OnFIwKQI3951mOznWS5CAyVA=;
	b=TPcQew7WHdHvYAzwAITxABaAViAd6t7kylJ5A5SV0u0tAivU42L2BnD2iPeptHlRAD
	iaIDxGlF4Jkasu8sgMfa46i1J0bFkwp6AecgREtseF7oE4BRElJTW+Q7drE8eC1ueaPc
	SZmF1wSIaI1BXpjpMlA5iWifbBfxpoPl/pBpJ2ndeRFpdZNl7YbaNbhzVtZN9S/Ft48c
	mxMjiAuVERw84nhR/JpU7Hc3OhzHqWfBxud7nuvmCuHQpB7LcRwzUhN9OUx37IqNdr/d
	5DZZYuvm506itNwz8C+r0bSQSa2xuIEdcYAE+HUcBdhVZLieZ6pZp+BEo4W6XqNRIm9A
	RA9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=nOavQjBvB6BQhKkCui4OnFIwKQI3951mOznWS5CAyVA=;
	b=uFSNNnruFE8KBe4JNb9GkuVig5vGMIZ7/USL0DJa028JrYHM6JuZ4BMBpdAMo0XlJa
	eFUzhQB+PAcNkXg8VEdoGLeRoESLU07skeAZbdcNSWeekG49CRwo/siJLc0wcNw8CZIX
	RYnJYq9oXzNSw+DBL1ocfQvQlOTQLYjBVZnA6tleYylUebkmBV/jCPl02oxuHcmA+u4/
	P1Oy77lFhdzU/Wh3yqHHiOrFxyr/vhNOeQI6jvv7ghVzY/SOvTnMpqHkjb4GxUhYpdbt
	beBJc9eECTayyRSyzCuOmyYx5yOCLJBM2VvQM6BqqRMsNUaC/T2FoYSSOzWaf5JnAqJ/
	s1mg==
X-Gm-Message-State: APjAAAW1tTHfQYdpS4CkyyYQKb/RZEFKERj7d2ZLHWs4y8nApDsCt8GX
	xIXIZqRXOAWyCJOrrplOy9HspYhw
X-Google-Smtp-Source: APXvYqxI81I5IvZcQOhRGcjwD7Xct3/TJ8fBc9jK1+Yu3Q42nN5De6vCWds0qpAlRaR1XMfE2rwBFw==
X-Received: by 2002:a63:e70c:: with SMTP id b12mr12943286pgi.242.1560273862581;
	Tue, 11 Jun 2019 10:24:22 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:c33:ac5b:d26e:fac2:f89f?
	([2601:202:4180:c33:ac5b:d26e:fac2:f89f])
	by smtp.gmail.com with ESMTPSA id
	m8sm26224150pff.137.2019.06.11.10.24.20
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 11 Jun 2019 10:24:21 -0700 (PDT)
To: Quentin Schulz <quentin.schulz@streamunlimited.com>, poky@yoctoproject.org
References: <20190611144648.30886-1-quentin.schulz@streamunlimited.com>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	mQINBFnlUP4BEADpKf+FQdLykenQXKk8i6xJNxDow+ypFeVAy8iFJp7Dsev+BtwUFo8VG7hx
	Jmd71vHMw+coBetWC3lk+IKjX815Ox0puYXQVRRtI+yMCgd6ib3oGxoQ8tCMwhf9c9/aKjaz
	mP97lWgGHbiEVsDpjzmMZGlJ6pDVZzxykkJExKaosE46AcA8KvfhRQg5zRyYBtinzs8Zu8AP
	aquZVHNXxPwjKPaSEEYqQjFeiNgFTavV+AhM2dmPmGUWCX9RZisrqA4slGwEB0srMdFf12Zg
	mD35Y9jZ80qpu5LPtJCFcsaAlebqR+dg36pIpiRR+olhN1wmC6LYP1vw6uMEYBjkTa2Rnb6+
	C4FDzCJD4UCrUvLMNeTW810DY0bjMMj3SfmSGSfQUssaaaTXCVlLGuGxyCr/kza1rHaXMKum
	Ek4EFj1fyn7AfkSLEHfJfY4sO1tpgigvs4eD/4ZSQEXSu/TjVvyKx4EvUbhlGMRyH2CPwD/H
	7DFF8tcVtJvCwUUW+zKtjxjSSLrhniNMXAOQJZ6CdaqCe4OyJQT5aRdr+FWbBRjpaRCCf5nf
	dTc88NMU9PrBT3vu0QJ5WNPO6MJpnb+d8iMNLZAz8tv8JMm2l+sMcNKSJ6lhX8peoBsfMVqc
	FgiykEO0fUt7DCbUYR5tLjM/3E5tHvTjMooVJyOxoufVLYtTtQARAQABtCFha3VzdGVyODA4
	IDxha3VzdGVyODA4QGdtYWlsLmNvbT6JAj0EEwEIACcFAlnlUP4CGyMFCQlmAYAFCwkIBwIG
	FQgJCgsCBBYCAwECHgECF4AACgkQ7ou0mfRW5/kuhRAAlR2FTq5572jrX5nnPR7AqI2bvSVb
	vqGLlvv739WhghvagbC+tu05QguopAhWW1/DcHK2+QtfIoC9UZrSW4RaO0CCo5sPjqK7l1KT
	ngWX/rGjF6xTF2QN0U/btcpMyVN2CNtVLwsDF9e+GHKoUcnFkP+JP8vHGokN9k6E/c97hLaL
	IJPeKl8LZXc2Efk+MaW1NXkfDJdcp/p+voajbihSQO6OZ/o+x9d2I3ZybKfTZ71+ek5Hxzjz
	g6KkMOI7KJjlmBlrQFAtVbS+CFAKrwkYznE6ggkcmGv3N7DeUBTUR78hf+EZEAM+ajeLMtrG
	rXE00pIb+gLGYPZxba5pCdQ+qWUW38qi9UnIRPm6fq7Ypx1r6XwJvbgCOkhbxo3D4YUdyC0b
	FE9lgrg8htbc9in4j2+hVI6ALswNjLprzXdzdKrd+T3Egx36o3Z/qrYsW2o5/A5sVvvASVKi
	wRPuEKhEhfmiHUPLvuKqhMoymHaz3fg5D2Q8G0gSDkLgeEpAjiWqf4+AGLx+MSDai7DSOsmI
	t61kWxs7cFTB32UrB/TDoVNn3Fm88ZFQpA/bngikE9jgEm045mSY86fNlbFj2mcCd0Ha1i1n
	aYc97RpgfjNMWyHDVHOGrNg/hJjkGa5RsAXkfyBwltHRw0Hj4urUQ3rr8um8PLe43SezPwXA
	oRoyDxC5Ag0EWeVQ/gEQALNHwj5VSPdnvXy1RXUuH+rclMx4x8zaqDyY0YqHfA7b/d8Y0VAt
	Y6YpzDeFTwD8A0Wfb7kZ2mlDIE6ODCB71uT/E3C6b+FiiN+lgzslznjUW+9l8ddDhRrC8HMG
	37vrXF5h++PTXUKEKUlkDib1w093tu3mlJXUvIAzl8CEHkptF6Br0L9XxFwuWoNUfjT9IorQ
	0SVIhvq5PhVAITXUD5fD7/N8B4TYegmHFRo1UaaKSnSHwlJJkzKpeWOH8QTYrP0RHxX86Obv
	IZuwbAo3F3oojcvLJt9NxWnbEmEALkleklLZnukgu7q5Wp1VDwhUbMFTLb6qmnBa/Xi30uOk
	0l1TMHDbeQswvQDOZBAMukSRqyBetKxQ3iTfZ/3z1ubQRcVDbVlMDScSHQq0LK3F9yMOMM/6
	0QPqJjl13xn/+Bn7WJiAIXXwzAV7uo6i0khFfjDtCDQ40aeffqOLxp1yMLkc3EKJGcQ5F6O2
	ycEf4QXCYUbMXjxB0EJB8y7z+xOi5Mmd/pPlVmZ2gQK84NAL90p7n7jRlyf3gOUY+JOl4c5e
	UFiIhOzmuqNrvPOiZ02GXh6SGUU5y7IgSoIKvXSFgHAn2OG/tcspBmkyv6IuNVpmbmEgYn4I
	Rnt40UXVQkxTh0dENFhk2cjunMYozV/OqYCgmZLFSeJd8kAo4yn+yOtNABEBAAGJAiUEGAEI
	AA8FAlnlUP4CGwwFCQlmAYAACgkQ7ou0mfRW5/nNcg//R63cbOS6zLtvdnPub3Ssp1Ft8Wmv
	mni+kccuNApuDV7d63QckYxjAfUv2zYMLpbh87gVbLyCq9ASn552EbfRhTvHdk44CgbHBVcI
	ZBEdZWgRR5ViJakQSYHpP2e5AGNFnx9gSIuRTaa5rvZM+4xeoZ2vJiq93TtaYPr7UFNfK+c4
	vv4C66lkt9l95/I10eSc3RqbOKZW47emlg4X3ygEoB9k2lPrpspyf6sUuSEi0WrlSxoLAr6p
	JG8rTUErYNeXe6JCdL31odDx1Dh5sdKIj2RicUYZNilxu9f1M7jZwf2ra1FGAlKj2ybqmgpZ
	EFteaiCinEYsvDyZyOiWHjAFI+RZIPQQL3AnVp4l7wYD3r9hnqYPww0slyMDcb9262RoFkHq
	dDwxPYarrNjWUpOzxB6bFxOgNRdCTgvQl8Ftk8a/yXB6vHeUSm1vPFCBxQPZytyfOLhEWm0J
	/mkVL0Z6iRK3p1LKnpLYCS4/esL2u7RrhPyCs2SsL58YcQF/g+PpeT9geZ+oyZ/4IQ+TWJoU
	PNHndk8VBTpzrmOaJxrebNL/W6C8JCmbLM11TAUMmHYi9JDytN8Au78hWpDbIdKwg1LeSxpw
	ZZD/OqOc0DBvHOpQhzkSrtR1lVlDV/+9E8J1T4uDhrGmZwYV+4xQetypHax8aAHisYbjXdVa
	8CS2NxU=
Message-ID: <f827d3c0-2fab-2313-1666-3d3375abec53@gmail.com>
Date: Tue, 11 Jun 2019 10:24:20 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190611144648.30886-1-quentin.schulz@streamunlimited.com>
Cc: andriy.danylovskyy@streamunlimited.com
Subject: Re: [thud] [PATCH 0/2] opkg and BAD_RECOMMENDATIONS in thud 2.6.2
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
X-List-Received-Date: Tue, 11 Jun 2019 17:24:24 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On 6/11/19 7:46 AM, Quentin Schulz wrote:
> Hi all,
>
> I've been hit with a rather unsettling bug when building an image with
> PACKAGE_CLASSES = "ipk" in Thud 2.6.2.
>
> The error message is the following:
> ERROR: meh-1.0-r0 do_rootfs: Unable to install packages. Command
> '/tmp/yocto/temp/work/machine-poky-linux/meh/1.0-r0/recipe-sysroot-native/usr/bin/opkg --volatile-cache -f /tmp/yocto/temp/work/machine-poky-linux/meh/1.0-r0/opkg.conf -t /tmp/yocto/temp/work/machine-poky-linux/meh/1.0-r0/temp/ipktemp/ -o /tmp/yocto/temp/work/machine-poky-linux/meh/1.0-r0/rootfs  --force_postinstall --prefer-arch-to-version   --force-maintainer --force-overwrite install packagegroup-base-extended packagegroup-core-boot plop run-postinsts' returned 2:
> Collected errors:
>  * Solver encountered 2 problem(s):
>  * Problem 1/2:
>  *   - nothing provides bluez5 needed by plop-1.0-r0.aarch64
>  * 
>  * Solution 1:
>  *   - do not ask to install a package providing plop
>
>  * Problem 2/2:
>  *   - nothing provides bluez5 needed by packagegroup-base-bluetooth-1.0-r83.stream1832prime
>  * 
>  * Solution 1:
>  *   - do not ask to install a package providing packagegroup-base-extended
>
>
>
>
> ERROR: meh-1.0-r0 do_rootfs: Function failed: do_rootfs
> ERROR: Logfile of failure stored in: /tmp/yocto/temp/work/machine-poky-linux/meh/1.0-r0/temp/log.do_rootfs.30869
> ERROR: Task (/media/qschulz/yocto/build/oe/recipes-images/nsdk/meh.bb:do_rootfs) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 3059 tasks of which 3046 didn't need to be rerun and 1 failed.
>
> Summary: 1 task failed:
>   /media/qschulz/yocto/build/oe/recipes-images/nsdk/meh.bb:do_rootfs
> Summary: There were 7 WARNING messages shown.
> Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
>
>
> I could reproduce it with an image meh.bb:
> inherit core-image
>
> CORE_IMAGE_EXTRA_INSTALL += "plop"
>
> BAD_RECOMMENDATIONS += "bluez5"
>
> with plop.bb being:
> DESCRIPTION = "Plap"
> LICENSE = "CLOSED"
>
> RDEPENDS_${PN} += "bluez5"
>
> do_install() {
>         install -d ${D}${bindir}
>         echo "plip" > ${D}${bindir}/plep
> }
>
> I took me a while to find out that it's an issue with opkg itself and
> nothing could be done in Yocto to fix it but I found the three following
> patches in yocto-2.7:
>
> https://git.yoctoproject.org/cgit.cgi/poky/commit/?id=d8e12f2bfc4deaa0dc7530cf3af905e18e8037f6
> https://git.yoctoproject.org/cgit.cgi/poky/commit/?id=c76c50df6498d85e7a6254002ff8f5e0ef3e67f7
> https://git.yoctoproject.org/cgit.cgi/poky/commit/?id=5bcb626cf49d2295ccca45d6fc7e1617cca932d6

You mentioned 3 git commits but i only see 2 patches on the list.

please clarify.

And Thanks for the fixes.

- Armin
>
> With those three applied on top of thud 2.6.2, my image is built without
> complaints.
>
> Please apply those backported patches for next Thud releases.
>
>
> Thanks,
> Quentin
>
> Alejandro del Castillo (2):
>   opkg: add --ignore-recommends flag
>   OpkgPM: use --add-ignore-recommends to process BAD_RECOMMENDATIONS
>
>  meta/lib/oe/package_manager.py                |  41 +--
>  meta/lib/oe/rootfs.py                         |   2 -
>  ...pkg-add-add-ignore-recommends-option.patch | 260 ++++++++++++++++++
>  meta/recipes-devtools/opkg/opkg_0.3.6.bb      |   1 +
>  4 files changed, 263 insertions(+), 41 deletions(-)
>  create mode 100644 meta/recipes-devtools/opkg/opkg/0001-libopkg-add-add-ignore-recommends-option.patch
>


