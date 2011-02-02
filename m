Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 46BDD4C8008C
	for <poky@yoctoproject.org>; Wed,  2 Feb 2011 05:18:21 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p12BKMOS001666; Wed, 2 Feb 2011 11:20:23 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id egKyNZFEPNGj; Wed,  2 Feb 2011 11:20:22 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p12BKG66001662
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Wed, 2 Feb 2011 11:20:18 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Wolfgang Denk <wd@denx.de>
In-Reply-To: <20110202070331.CA6FBEA65FA@gemini.denx.de>
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
Date: Wed, 02 Feb 2011 11:18:04 +0000
Message-ID: <1296645484.1544.2556.camel@rex>
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
X-List-Received-Date: Wed, 02 Feb 2011 11:18:22 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-02-02 at 08:03 +0100, Wolfgang Denk wrote:
> Dear Richard,
> 
> In message <1296602979.13501.21658.camel@rex> you wrote:
> >
> > Did you leave NO32LIBS set in local.conf as per the default?
> 
> Good point - sorry, I had forgotten about that.  I always comment out
> NO32LIBS because when building the SDK I also need this for 32 bit
> machines.

This option really just controls psuedo-native, it has no effect on the
SDK which is controlled by SDKMACHINE?

Cheers,

Richard


