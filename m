Return-Path: <jonathan@jonmasters.org>
Received: from edison.jonmasters.org (edison.jonmasters.org [173.255.233.168])
	by mx1.pokylinux.org (Postfix) with ESMTP id 38E3A4C811CC
	for <poky@pokylinux.org>; Wed,  8 Dec 2010 09:20:12 -0600 (CST)
Received: from boston.jonmasters.org ([74.92.29.237] helo=[192.168.1.2])
	by edison.jonmasters.org with esmtpsa
	(TLS1.0:DHE_RSA_AES_256_CBC_SHA1:32) (Exim 4.71)
	(envelope-from <jonathan@jonmasters.org>)
	id 1PQLoR-0003uN-0b; Wed, 08 Dec 2010 15:20:11 +0000
From: Jon Masters <jonathan@jonmasters.org>
To: Richard Purdie <rpurdie@linux.intel.com>
In-Reply-To: <1291806770.1554.304.camel@rex>
References: <1291791085.2779.125.camel@constitution.bos.jonmasters.org>
	<1291806770.1554.304.camel@rex>
Organization: World Organi[sz]ation Of Broken Dreams
Date: Wed, 08 Dec 2010 10:21:17 -0500
Message-ID: <1291821677.2779.143.camel@constitution.bos.jonmasters.org>
Mime-Version: 1.0
X-Mailer: Evolution 2.30.3 (2.30.3-1.fc13) 
X-SA-Exim-Connect-IP: 74.92.29.237
X-SA-Exim-Mail-From: jonathan@jonmasters.org
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	edison.jonmasters.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
	T_RP_MATCHES_RCVD autolearn=ham version=3.3.1
X-SA-Exim-Version: 4.2.1 (built Sun, 08 Nov 2009 07:31:22 +0000)
X-SA-Exim-Scanned: Yes (on edison.jonmasters.org)
Cc: poky@pokylinux.org
Subject: Re: distcc/ccache?
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
X-List-Received-Date: Wed, 08 Dec 2010 15:20:12 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2010-12-08 at 11:12 +0000, Richard Purdie wrote:
> On Wed, 2010-12-08 at 01:51 -0500, Jon Masters wrote:
> > Anyone happen to know if poky plays nicely with distcc?
> 
> I think most success has been with icecc in the past and there is a
> icecc class which has code to enable that. It turns out that compiling
> isn't the main bottleneck in builds though and icecc isn't something we
> test in Poky at this time, we just provide the same class OE has which
> may or may not work.

Thanks. Someone else pointed me to Icecream, too. I traditionally do the
toolchain copy manually to each build host at home, but apparently if I
read up on and use Ice it will do all of that toolchain management too.

Thanks,

Jon.



