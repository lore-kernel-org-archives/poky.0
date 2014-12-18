Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 01AB7E008B4; Thu, 18 Dec 2014 01:51:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DFFC7E002A6
	for <poky@yoctoproject.org>; Thu, 18 Dec 2014 01:50:53 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	sBI9oD39011239; Thu, 18 Dec 2014 09:50:13 GMT
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id LkLR7YiiU1WR; Thu, 18 Dec 2014 09:50:13 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	sBI9o036011234
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 18 Dec 2014 09:50:11 GMT
Message-ID: <1418896237.5106.17.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: matti kaasinen <matti.kaasinen@gmail.com>
Date: Thu, 18 Dec 2014 09:50:37 +0000
In-Reply-To: <CADnUhn1M89hy9O5gT3Hf=66NYnp-DPiT8h0H7sD6BVB=K+y67Q@mail.gmail.com>
References: <CADnUhn1ExKeMJ7GysgxbyJK5V21dp+SCXnm24LJ=SVHaf0crKw@mail.gmail.com>
	<CADnUhn1M89hy9O5gT3Hf=66NYnp-DPiT8h0H7sD6BVB=K+y67Q@mail.gmail.com>
X-Mailer: Evolution 3.12.7-0ubuntu1 
Mime-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: bitbake core-image-sato fails
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
X-List-Received-Date: Thu, 18 Dec 2014 09:51:02 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2014-12-18 at 11:43 +0200, matti kaasinen wrote:
> Hi!
> I replaced chrpath.bbclass with the latest one. This resolved the
> original problem. Then bitbake proceeded until:
> ERROR: Function failed: do_compile (log file is located
> at /TMPDIR/work/armv7a-vfp-neon-poky-linux-gnueabi/e2fsprogs/1.42.8-r0/temp/log.do_compile.25157)
> ERROR: Logfile of failure stored
> in: /TMPDIR/work/armv7a-vfp-neon-poky-linux-gnueabi/e2fsprogs/1.42.8-r0/temp/log.do_compile.25157
>
> I tried also with dizzy - only difference was that e2fsprogs version
> changed to 1.42.9-r0.

Somehow the chmod operation is failing :(

What kind of filesystem are you building this on?

Cheers,

Richard



