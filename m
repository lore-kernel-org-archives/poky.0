Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id C41064C80039
	for <poky@yoctoproject.org>; Sun,  5 Dec 2010 19:10:22 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oB61AIW2032587;
	Mon, 6 Dec 2010 01:10:18 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 32142-07; Mon,  6 Dec 2010 01:10:14 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oB61A9AD032578
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 6 Dec 2010 01:10:10 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: "Tian, Kevin" <kevin.tian@intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504D475430ED@shsmsx502.ccr.corp.intel.com>
References: <cover.1289982751.git.qing.he@intel.com>
	<a03c4017a13bda3f20b8f39a4c099cb28f349968.1289982751.git.qing.he@intel.com>
	<1290954166.27143.217.camel@rex>
	<625BA99ED14B2D499DC4E29D8138F1504D42C686F3@shsmsx502.ccr.corp.intel.com>
	<AANLkTi=oxv9goiEMAfpkDAvq7n_GfGUMSXsonXDdzixd@mail.gmail.com>
	<1291033557.14277.944.camel@rex> <20101130014427.GA6584@qhe2-db>
	<625BA99ED14B2D499DC4E29D8138F1504D475430ED@shsmsx502.ccr.corp.intel.com>
Date: Mon, 06 Dec 2010 01:10:08 +0000
Message-ID: <1291597808.14277.2932.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Chris Larson <clarson@kergoth.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 1/1] curl: fix native dependency
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
X-List-Received-Date: Mon, 06 Dec 2010 01:10:23 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2010-12-05 at 17:43 +0800, Tian, Kevin wrote:
> >From: He, Qing
> >Sent: Tuesday, November 30, 2010 9:44 AM
> >To be more specific, if append is to be handled earlier than virtclass,
> >FOO may not be able to be evaluated at the time when append/prepend is
> >processed, as the following test case:
> >
> >FOO = "A"
> >FOO_virtclass-native = "B"
> >FOO_append = "C"
> >FOO_append_virtclass-nativesdk = "D"
> >
> >How should it be handled?
> >
> 
> The expected result will be:
> 
> a) if you build pkgname, you'll get FOO = "AC" as the effect of _append
> 
> b) if you build pkgname-native, you'll get FOO = "BC" because overrides are
> handled before _append/_prepend
> 
> a) if you build pkgname-nativesdk, you'll get FOO = "AD" because override
> appendix is used

but this last case should be ACD as I think we've determined there is a
bug in bitbake :)

Cheers,

Richard


