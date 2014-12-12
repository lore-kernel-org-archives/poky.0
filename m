Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4218CE0099A; Thu, 11 Dec 2014 23:42:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5295AE00982
	for <poky@yoctoproject.org>; Thu, 11 Dec 2014 23:42:19 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	sBC7ddZ2028354; Fri, 12 Dec 2014 07:41:37 GMT
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id XwWhDi1dg9sJ; Fri, 12 Dec 2014 07:41:37 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	sBC7fM5c028512
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Fri, 12 Dec 2014 07:41:34 GMT
Message-ID: <1418370119.22903.84.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: matti kaasinen <matti.kaasinen@gmail.com>
Date: Fri, 12 Dec 2014 07:41:59 +0000
In-Reply-To: <CADnUhn1ExKeMJ7GysgxbyJK5V21dp+SCXnm24LJ=SVHaf0crKw@mail.gmail.com>
References: <CADnUhn1ExKeMJ7GysgxbyJK5V21dp+SCXnm24LJ=SVHaf0crKw@mail.gmail.com>
X-Mailer: Evolution 3.12.7-0ubuntu1 
Mime-Version: 1.0
Cc: paul.eggleton@linux.intel.com, poky@yoctoproject.org
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
X-List-Received-Date: Fri, 12 Dec 2014 07:42:25 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2014-12-12 at 08:46 +0200, matti kaasinen wrote:
> I get following error message when trying to run :
> bitbake core-image-sato 
> from scratch.
>
> ---------- snip ----------- 
> ERROR: libxml-parser-perl-native: chrpath command failed with exit
> code 7:
> /TMPDIR/work/x86_64-linux/libxml-parser-perl-native/2.41-r3/sysroot-destdir/TMPDIR/sysroots/x86_64-linux/usr/lib/perl-native/perl/5.14.3/auto/XML/Parser/Expat/Expat.so: RPATH=/TMPDIR/sysroots/x86_64-linux/usr/lib
> new rpath '$ORIGIN/../../../../../../../../../usr/lib' too large;
> maximum length 37
>
> ERROR: Function failed
> ERROR: Logfile of failure stored
> in: /TMPDIR/work/x86_64-linux/libxml-parser-perl-native/2.41-r3/temp/log.do_populate_sysroot.2122
> ERROR: Task 3021
> (virtual:native:/yocto/poky/meta/recipes-devtools/perl/libxml-parser-perl_2.41.bb, do_populate_sysroot) failed with exit code '1'
> ---------- snip ----------- 
>
> This seems pretty much the same as in:
> http://lists.openembedded.org/pipermail/openembedded-core/2012-August/067002.html
> at Aug 17, 2012
> 
Its trying to fit a 43 character string into a field 37 long. The reason
is the very short path you're building in (/TMPDIR), if you a slightly
deeper path (by say seven extra characters), this error should be
resolved.

I think in later versions we did improve this with the patch:

http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=6fcb96076ca60ef30062fda0ff8308cc840ab07d

so you could also try cherry-picking that and I think it may work
better.

Cheers,

Richard



