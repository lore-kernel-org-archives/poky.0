Return-Path: <linux.matthew@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 80922E00D2D; Fri, 15 Apr 2016 05:36:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (linux.matthew[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.179 listed in list.dnswl.org]
Received: from mail-pf0-f179.google.com (mail-pf0-f179.google.com
	[209.85.192.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54D33E00B6F
	for <poky@yoctoproject.org>; Fri, 15 Apr 2016 05:36:40 -0700 (PDT)
Received: by mail-pf0-f179.google.com with SMTP id e128so56500479pfe.3
	for <poky@yoctoproject.org>; Fri, 15 Apr 2016 05:36:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to;
	bh=Dmo00KnmADhMO69y3bjmgQOAcR5SXhlyjvoFWgkuokE=;
	b=YG1BOvbzkCFbkGPcadT5tixpA9CxR05ZeCnXWGWh3+M0nFJnwO/rIkPc7ZIv5Vw5kQ
	Vl+cQHZXPwunV3RK3/yGg5UyL6ROUCjYPyI7ckCmNhCcUaQs64Rybqk9xDNwXpIn6rUd
	74jCJTJszybIqNYoyprm1KmPr+30c9iH23RBnzqOVwPgS1lUSLGOuAqWSVQZHJhZZAWN
	s9G/GpZpcwiOPb94o8AWrjRAsoF3xDpbnitzM+AlIQTeuP5Q4AtTzGhPEU3psc5cwDKf
	H/tltprAmbeNXGTXUieXL2/uIP+KvijHg6oj9rSbMCx4m3er5ITCmWHA852iQqJ9atD3
	N6eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
	bh=Dmo00KnmADhMO69y3bjmgQOAcR5SXhlyjvoFWgkuokE=;
	b=aXymS7lDKA59vT4tsh6fT7+OO+qgDefqJy+/bnswq2tfrMTG+gr3ebpqG0cKyH2k8/
	qjJMk6Njip6h1iTRXav7Ya6jAe/SrqP1zOkA4OduYQcsc5LkaOjw2dTUV8Q5vqNCIpee
	tUM6R3nOYIl/BSsKt+HWgKudoykdmxwFap08mBH48AH6zCHhfft/tP4LNzYSV84PgVPh
	o5YW2n76nr92W+wotUMbt91XXt6TH2n9fF0Lmo0HInpEX5AzJM7Txqm0zYX+fRvj7lfR
	n8/s+MKVcpJD320fLByu6mmITE9qL5SWttvvrTJRK30pRXqmm036hPx6aEs5+3rEFd17
	2Nlw==
X-Gm-Message-State: AOPr4FVjxM2kyuZoGFJYGwWEcfOs9vVXVqQt82BjIQwESjkm6EWX+oNVIJ+sSRpIx+MYZSpW3na6349cT7k3rg==
MIME-Version: 1.0
X-Received: by 10.98.78.205 with SMTP id c196mr25402551pfb.129.1460723800254; 
	Fri, 15 Apr 2016 05:36:40 -0700 (PDT)
Received: by 10.66.180.100 with HTTP; Fri, 15 Apr 2016 05:36:40 -0700 (PDT)
Date: Fri, 15 Apr 2016 08:36:40 -0400
Message-ID: <CAHHS9cEP-_y9REmys0Mb-21NMnTcmYy1qCoYonzzXzxATZAb8Q@mail.gmail.com>
From: Matthew Clark <linux.matthew@gmail.com>
To: poky@yoctoproject.org
Subject: How to add libraries to poky tool chain?
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
X-List-Received-Date: Fri, 15 Apr 2016 12:36:44 -0000
Content-Type: text/plain; charset=UTF-8

I'm trying to cross build a package with a configure script and I'm
running into a problem because it can't find a missing library
dependency:

arm-poky-linux-gnueabi-gcc  -march=armv7-a -mfloat-abi=hard -mfpu=neon
-mtune=cortex-a8
--sysroot=/opt/poky/1.8/sysroots/cortexa8hf-vfp-neon-poky-linux-gnueabi
-o conftest
-O2 -pipe -g -feliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=gnu
-Wl,--as-needed myconftest.c -lgdbm

/opt/poky/1.8/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.9.2/ld:
cannot find -lgdbm
collect2: error: ld returned 1 exit status

A quick look shows there's no libgdbm in
/opt/poky/1.8/sysroots/cortexa8hf-vfp-neon-poky-linux-gnueabi folder,
though it is in
/opt/poky/1.8/sysroots/x86_64-pokysdk-linux (which, of course, is for
86_64, not ARM)

I'd bitbaked the meta-toolchain and installed the .sh file, but
apparently I need to add more libraries.  What's the best way to do
that?  Is there an additional package I need to bitbake?   I can
kludge it myself, by manually copying stuff into
/opt/poky/1.8/sysroots/cortexa8hf-vfp-neon-poky-linux-gnueabi but I'd
much rather have something more elegant so I can replicate it to other
development machines.

Thanks.

Matt

