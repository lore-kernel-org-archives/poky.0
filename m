Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id C06424C800C0
	for <poky@yoctoproject.org>; Wed,  2 Feb 2011 08:06:53 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p12E8rLn009085; Wed, 2 Feb 2011 14:08:53 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id E7lzwrkvAvY5; Wed,  2 Feb 2011 14:08:53 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p12E8gKE009079
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Wed, 2 Feb 2011 14:08:47 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Mark Hatle <mark.hatle@windriver.com>
In-Reply-To: <4D4962A5.8060406@windriver.com>
References: <9AFCD584B0B67B48AE8D8585BE30BA9506BAAFDF@orsmsx504.amr.corp.intel.com>
	<1296382406.13501.7899.camel@rex>
	<625BA99ED14B2D499DC4E29D8138F1504E6294E1D3@shsmsx502.ccr.corp.intel.com>
	<C10D3FB0CD45994C8A51FEC1227CE22F20F8C32A4B@shsmsx502.ccr.corp.intel.com>
	<C10D3FB0CD45994C8A51FEC1227CE22F20F8C32C7C@shsmsx502.ccr.corp.intel.com>
	<1296492009.13501.13668.camel@rex>
	<9AFCD584B0B67B48AE8D8585BE30BA9506C267B0@orsmsx504.amr.corp.intel.com>
	<1296561316.13501.18767.camel@rex>
	<9AFCD584B0B67B48AE8D8585BE30BA950D73A848@orsmsx504.amr.corp.intel.com>
	<1296567139.13501.19158.camel@rex>
	<20110201192705.2546DB187@gemini.denx.de>
	<1296602979.13501.21658.camel@rex>
	<20110202070331.CA6FBEA65FA@gemini.denx.de>
	<1296645484.1544.2556.camel@rex>
	<20110202113340.2FFCAEA65FA@gemini.denx.de>
	<4D4962A5.8060406@windriver.com>
Date: Wed, 02 Feb 2011 14:06:29 +0000
Message-ID: <1296655589.1544.3260.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: poky-image-sato-sdk failed at do_rootfs
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
X-List-Received-Date: Wed, 02 Feb 2011 14:06:54 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-02-02 at 07:56 -0600, Mark Hatle wrote:
> On 2/2/11 5:33 AM, Wolfgang Denk wrote:
> > Dear Richard Purdie,
> > 
> > In message <1296645484.1544.2556.camel@rex> you wrote:
> >>
> >>>> Did you leave NO32LIBS set in local.conf as per the default?
> >>>
> >>> Good point - sorry, I had forgotten about that.  I always comment out
> >>> NO32LIBS because when building the SDK I also need this for 32 bit
> >>> machines.
> >>
> >> This option really just controls psuedo-native, it has no effect on the
> > 
> > I see - that was not clear to me from the comment ("Default to not
> > build 32 bit libs on 64 bit systems, comment this out if that is
> > desired").
> > 
> > When is this option needed, then?  If it was not needed (and is
> > broken), should it eventually be removed?
> 
> PSEUDO is similar to fakeroot, it is a LD_PRELOADed library that intercepts
> certain calls, and emulates a root user capable environment.
> 
> As such, it MUST be able to intercept both 32-bit and 64-bit function calls,
> when both are available on a host.
> 
> So if you have both 32-bit and 64-bit binaries installed on your host, you need
> to disable the NO32LIBS, otherwise you could end up with an incomplete faked
> root environment.

Since poky builds all its own tools out the box, this isn't something
I've ever seen a user get bitten by so far. There are people using say
an external 32 bit toolchain on a 64 bit machine who do need this
functionality though.

Cheers,

Richard


