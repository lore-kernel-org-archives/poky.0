Return-Path: <kristian.amlie@mender.io>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7F999E00924; Tue, 25 Oct 2016 01:05:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.42 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.42 listed in list.dnswl.org]
Received: from mail-lf0-f42.google.com (mail-lf0-f42.google.com
	[209.85.215.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 467CDE0086E
	for <poky@yoctoproject.org>; Tue, 25 Oct 2016 01:05:31 -0700 (PDT)
Received: by mail-lf0-f42.google.com with SMTP id f134so43239498lfg.2
	for <poky@yoctoproject.org>; Tue, 25 Oct 2016 01:05:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mender-io.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding;
	bh=7Zp+wff2sdo1Ko7MTN2W63oEDC0xEUEFOMpcHcw1oVc=;
	b=bXVhL3UOmInGEC94QMohV07I95EX0Jl94BkZ6Rd4o6/isJgnDW5SsZGv1EbRZCii0e
	dzM2i27vLGdRcFTN1fqzMXmkeh0Qzq2wW4YJWhLtjv1vUaKZBFb8nnNIG8UCPchM0tVj
	RDikCnyQ/H4E8loXYlBTDmbHL9lWj8SSDLPehZ+wugYRxOlemuV+6YWRPkG/AfFofUJq
	PVVbChFKcjmW32gFIDgPY9SgErVQmxa4wmX6UBQ6sr0tZVhW87+FiRRgK0iq0Arq40TN
	leegN4oR9CUuB0vpr3TeAeipiu28MCkEpdv5/Ie9zTgFKN/+vIyXtXoIvS0sYcA0oqip
	HjWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=7Zp+wff2sdo1Ko7MTN2W63oEDC0xEUEFOMpcHcw1oVc=;
	b=GqwvPwTyArLBChae/KiUMWsEIr92hSpBjVnrL568s/L2YexIQgoxpedc42yw5IPyfZ
	02HUB5ZyLnPZirhmEJiVYneG5Hknn0CKND23cDT9zWcUjdrckF6jrgdKDc4UxnR+w1qb
	doWQlb0e7cCTaCfFe+z1n2nZjbokuXFJ17VECfFpmBv9w6mCwYPBrvHKjVSKZ/Mm0z7j
	+x69uwyCRgmG/pU1i5rjZCKaVGaZbUXktyx/t+mXL8nkYdN+snSnzGPKoH5e3m0OklyC
	ZznASAIbY1arS7qtsPELQIQ3V9B0wHuZkRIRl3koBTzS+QEITGUzJp8CfAF5R329N0XY
	AzKQ==
X-Gm-Message-State: ABUngvdeVHbvhYl/PwFxVY03m2S7Ru00ee+8YChe0TDPUOxXCrnsMgBRXOinSlVewSc8Rw==
X-Received: by 10.25.210.5 with SMTP id j5mr7890461lfg.14.1477382730423;
	Tue, 25 Oct 2016 01:05:30 -0700 (PDT)
Received: from [10.25.0.170] ([195.159.140.90])
	by smtp.googlemail.com with ESMTPSA id
	r123sm3789474lff.28.2016.10.25.01.05.29
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 25 Oct 2016 01:05:29 -0700 (PDT)
To: Steven Osborn <osborn.steven@gmail.com>, Khem Raj <raj.khem@gmail.com>
References: <CAA0Zw-yG86gejw2TT0Ly8AJ5MMcFV-NP7Q6S=BkbtyjeVqQ_hQ@mail.gmail.com>
	<CAMKF1soZfAUoXz0_0dh7j=H8dfQO2EpF2XUvWqJaX63QF0zY1g@mail.gmail.com>
	<CAA0Zw-xmfxKV=eu_c2Qdsdco3FeLWUdAeLGdDp7RBQu7hc=z8Q@mail.gmail.com>
	<F21C6A20-EBA1-4EEF-B29B-41FD96A05BDC@gmail.com>
	<CAA0Zw-wNd7gdGd9e15t94UV4dBQi8bou8V5h8dBirqKcgFDLOQ@mail.gmail.com>
From: Kristian Amlie <kristian.amlie@mender.io>
Message-ID: <e3ffee5f-b124-de14-cb23-0526301f9d23@mender.io>
Date: Tue, 25 Oct 2016 10:05:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <CAA0Zw-wNd7gdGd9e15t94UV4dBQi8bou8V5h8dBirqKcgFDLOQ@mail.gmail.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Poky issues
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
X-List-Received-Date: Tue, 25 Oct 2016 08:05:36 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit

On 25/10/16 08:52, Steven Osborn wrote:
> 
> well, I'm almost there.
> 
> ERROR: Task 22
> (/home/steven/Projects/iotas/poky/meta/recipes-extended/images/core-image-full-cmdline.bb
> <http://core-image-full-cmdline.bb>, do_image_mender) failed with exit
> code '1'
> ERROR: core-image-full-cmdline-1.0-r0 do_image_sdimg: No filesystem
> appropriate for sdimg was found in IMAGE_FSTYPES = ' tar.bz2 jffs2 sdimg
> mender'.
> ERROR: core-image-full-cmdline-1.0-r0 do_image_sdimg: Function failed:
> do_image_sdimg (log file is located at
> /home/steven/Projects/iotas/poky/build/tmp/work/beaglebone-poky-linux-gnueabi/core-image-full-cmdline/1.0-r0/temp/log.do_image_sdimg.21903)
> ERROR: Logfile of failure stored in:
> /home/steven/Projects/iotas/poky/build/tmp/work/beaglebone-poky-linux-gnueabi/core-image-full-cmdline/1.0-r0/temp/log.do_image_sdimg.21903
> ERROR: Task 19
> (/home/steven/Projects/iotas/poky/meta/recipes-extended/images/core-image-full-cmdline.bb
> <http://core-image-full-cmdline.bb>, do_image_sdimg) failed with exit
> code '1'
> 
> sdimg was found in IMAGE_FSTYPES = ' tar.bz2 jffs2 sdimg mender'.

Are you using NAND flash? Note that Mender doesn't support NAND flash at
the moment.

For this reason, jffs2 is not a supported filesystem type for Mender. It
expects the type to be ext2/ext3/ext4.

>>     ERROR: mender-0.1+gitAUTOINC+72069ff5d0-r0 do_configure: QA Issue:
>>     mender: The LIC_FILES_CHKSUM does not match for
>>     file://LIC_FILES_CHKSUM.sha256;md5=e304da41de5b57ce5b4601b53b1052b6
>>     mender: The new md5 checksum is 5d7dda2920f25253c9a3af5c28b10fb2
> 
>     I think mender changed something in its license text so its telling
>     you that. If you dont care then open the mender recipe and change
>     md5=e304da41de5b57ce5b4601b53b1052b6
>     to md5=5d7dda2920f25253c9a3af5c28b10fb2

Thanks, that's correct. But see below.

>>     mender: Check if the license information has changed in
>>     /home/steven/Projects/iotas/poky/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/mender/0.1+gitAUTOINC+72069ff5d0-r0/git/LIC_FILES_CHKSUM.sha256
>>     to verify that the LICENSE value "Apache-2.0 & BSD-2-Clause &
>>     BSD-3-Clause & MIT & OLDAP-2.8" remains valid [license-checksum]
>>     ERROR: mender-0.1+gitAUTOINC+72069ff5d0-r0 do_configure: Fatal QA
>>     errors found, failing task.
>>     ERROR: mender-0.1+gitAUTOINC+72069ff5d0-r0 do_configure: Function
>>     failed: do_qa_configure
>>     ERROR: Logfile of failure stored in:
>>     /home/steven/Projects/iotas/poky/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/mender/0.1+gitAUTOINC+72069ff5d0-r0/temp/log.do_configure.23139
>>     ERROR: Task 314
>>     (/home/steven/Projects/iotas/poky/meta-mender/recipes-mender/mender/mender_0.1.bb
>>     <http://mender_0.1.bb/>, do_configure) failed with exit code '1'

Are you using the krogoth branch of meta-mender? There was a delay in
our build check for krogoth, so the branch was stale for 24 hours or so.
But it's up to date now, and you shouldn't see this again. Since
upstream has been fixed now, so you should do:

git reset --hard && git pull


Given that your questions are quite Mender specific, it's probably
better if you post directly to mender@lists.mender.io. I do follow both
lists, but the poky list has pretty high traffic and I might miss
something. Also I'm sure the other poky members would appreciate keeping
the discussion to core poky issues.

-- 
Kristian

