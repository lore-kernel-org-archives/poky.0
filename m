Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id BE83C4C80BD4
	for <poky@pokylinux.org>; Fri, 31 Dec 2010 19:13:14 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p011EhMB030513; Sat, 1 Jan 2011 01:14:44 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id DGp9i6DCtCtv; Sat,  1 Jan 2011 01:14:43 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p011EcLR030509
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Sat, 1 Jan 2011 01:14:40 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <AANLkTi=w4gHiegVVMVCyoe4Qf29DCjW1UaPYuhMS_pr9@mail.gmail.com>
References: <625BA99ED14B2D499DC4E29D8138F1504D5F72D6C3@shsmsx502.ccr.corp.intel.com>
	<1293201465.17519.1428.camel@rex>
	<AANLkTi=w4gHiegVVMVCyoe4Qf29DCjW1UaPYuhMS_pr9@mail.gmail.com>
Date: Sat, 01 Jan 2011 01:12:53 +0000
Message-ID: <1293844373.17519.14827.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "poky@pokylinux.org" <poky@pokylinux.org>
Subject: Re: --with-gxx-include-dir and sysroot
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
X-List-Received-Date: Sat, 01 Jan 2011 01:13:15 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2010-12-31 at 02:01 -0800, Khem Raj wrote:
> > I really don't think its this simple.
> >
> > Looking at the gcc code, I propose we patch cppdefault.c so instead of
> >
> > GPLUSPLUS_INCLUDE_DIR "G++", 1, 1, 0, 0
> >
> > is says
> >
> > GPLUSPLUS_INCLUDE_DIR "G++", 1, 1, 1, 0
> 
> This looks ok fix if you take care of doing it only for case
> when sysroot is set and its cross compiling.Although I wonder
> if this will also alter the install location of the headers

In Poky the sysroot option is always set since the sstate packages
including the -cross ones can relocate. It shouldn't matter that we set
this even in the native case since there isn't a sysroot set there.

I wonder how receptive upstream would be to fixing this there...

Cheers,

Richard


