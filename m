Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2D501E00B66; Fri,  9 May 2014 03:06:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 1.3 RDNS_NONE Delivered to internal network by a host
	with no rDNS
X-Greylist: delayed 127 seconds by postgrey-1.32 at yocto-www;
	Fri, 09 May 2014 03:06:33 PDT
Received: from dan.rpsys.net (unknown [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C8C0E00B60
	for <poky@yoctoproject.org>; Fri,  9 May 2014 03:06:33 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu4) with ESMTP id
	s49A4J9x023136; Fri, 9 May 2014 11:04:19 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id VzyAGZ5qvzeW; Fri,  9 May 2014 11:04:18 +0100 (BST)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	s49A4GTU023133
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NOT);
	Fri, 9 May 2014 11:04:17 +0100
Message-ID: <1399629850.31891.81.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Sreejith N <sreejith.naarakathil@gmail.com>
Date: Fri, 09 May 2014 11:04:10 +0100
In-Reply-To: <CADFtRykSnQSPZ0rQqhpr8ehEWe19iCra1K03zYGTZiYn=u1nqw@mail.gmail.com>
References: <CADFtRykSnQSPZ0rQqhpr8ehEWe19iCra1K03zYGTZiYn=u1nqw@mail.gmail.com>
X-Mailer: Evolution 3.8.4-0ubuntu1 
Mime-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: Build error when building image for core-image-sato
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
X-List-Received-Date: Fri, 09 May 2014 10:06:38 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2014-05-09 at 13:01 +0530, Sreejith N wrote:
> Hi,
> 
>          I am new to yocto and trying to build my first image using
> the instructions in the quick start guide,
> 
> https://www.yoctoproject.org/docs/current/yocto-project-qs/yocto-project-qs.html
> 
> 
> My build environment is Ubuntu 12.04.4 LTS. Build fails with the
> following errors,
> 
> | i686-linux-libtool: link: (cd ".libs" && rm -f "libgettextsrc.so" &&
> ln -s "libgettextsrc-0.18.3.so" "libgettextsrc.so")
> | ../gnulib-lib/.libs/libgettextlib.so: undefined reference to
> `libiconv'
> | ../gnulib-lib/.libs/libgettextlib.so: undefined reference to
> `libiconv_open'
> | ../gnulib-lib/.libs/libgettextlib.so: undefined reference to
> `libiconv_close'
> | collect2: ld returned 1 exit status
> 
> 
> Any help in this regard is greatly appreciated.

Can you tell us what configuration you used? This doesn't look like one
of our standard targets. A complete error log of the failed build would
be more helpful.

Cheers,

Richard



