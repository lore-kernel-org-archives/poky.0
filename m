Return-Path: <stefan.seyfried@googlemail.com>
Received: from mail-ea0-f170.google.com (mail-ea0-f170.google.com
	[209.85.215.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C7AAE0082D
	for <poky@yoctoproject.org>; Wed,  8 Jan 2014 08:11:18 -0800 (PST)
Received: by mail-ea0-f170.google.com with SMTP id k10so929838eaj.1
	for <poky@yoctoproject.org>; Wed, 08 Jan 2014 08:11:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=XiCVwbaHv/JgTkZAtMNqv2VhcHbYZXBIRqQJMUZsVFs=;
	b=gPFuuzIgba/B4BxEXU08ioTS4N5iLl1M1cXQAVvoFMrwb0IZ27ACpqW8jLIxK8HSNY
	jusUMTHpY69rZMSg7wvmFwemHpP5toV16UqkNCrifB+bw/93yew/YpTmWSa6pNjeHsU7
	R6niuiREWLCFaedKRq4dM5sxX21g3RcDTFmMYn1y2m8HaSPZslF08Ynrk8hWhbJ7NkuH
	bNqNpLaryeWRgcHb2Cq5m0Ye7ICJivhaC30XgqQo87qrn/AuM4YGxX1aEoCM9kV8jyfa
	U+DcVV2Yk0FottciGmLS5Rc5pX/fQPVfhCatcaro7KmJjDTAriuRmQZuiTzoZntqWm02
	a3/g==
X-Received: by 10.15.45.135 with SMTP id b7mr27824927eew.88.1389197474034;
	Wed, 08 Jan 2014 08:11:14 -0800 (PST)
Received: from susi.home.s3e.de ([155.56.40.91])
	by mx.google.com with ESMTPSA id o13sm9635698eex.19.2014.01.08.08.11.12
	for <poky@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 08 Jan 2014 08:11:13 -0800 (PST)
Message-ID: <52CD789E.7090201@message-id.googlemail.com>
Date: Wed, 08 Jan 2014 17:11:10 +0100
From: Stefan Seyfried <stefan.seyfried@googlemail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <CAL-qi526ua3G0iyPqE+awLKNgiobftcswofZ2qHXMgCsX1-WRQ@mail.gmail.com>
In-Reply-To: <CAL-qi526ua3G0iyPqE+awLKNgiobftcswofZ2qHXMgCsX1-WRQ@mail.gmail.com>
X-Enigmail-Version: 1.6
Subject: Re: Problem populating rootfs with a binary only recipe
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
X-List-Received-Date: Wed, 08 Jan 2014 16:11:19 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi Scott,

Am 07.01.2014 20:17, schrieb Kroll, Scott:
> I have a recipe for NVIDIA display drivers written that simply fetches
> the drivers, compiles a kernel module, and populates some
> (unfortunately) binary only libraries. The RPMs created work just
> fine, but when generating the root filesystem, an issue crops up due
> to a "missing" dependency.
> 
> The drivers provide a libGL.so.325.15, which eventually becomes the
> symlinked libGL.so (at least in the -dev package). However, one of the
> required libraries in the NVIDIA package depends directly on libGL.so
> instead of libGL.so.325.15, so when the root filesystem population is
> to occur, the RPM refuses to install because no package provides
> libGL.so.

Maybe putting the libGL.so into the main package might already be enough?

You can achieve that by using

FILES_${PN}-dev = ""

(but then -dev is completely empty).

Another thing worth trying might be

PROVIDES += "libGL.so"

Good luck :-)

	Stefan
-- 
Stefan Seyfried
Linux Consultant & Developer -- GPG Key: 0x731B665B

B1 Systems GmbH
Osterfeldstraße 7 / 85088 Vohburg / http://www.b1-systems.de
GF: Ralph Dehner / Unternehmenssitz: Vohburg / AG: Ingolstadt,HRB 3537

