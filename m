Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 94DB44C811DE
	for <poky@pokylinux.org>; Sun, 28 Nov 2010 15:19:40 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oASLJaZN021049;
	Sun, 28 Nov 2010 21:19:36 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 20784-05; Sun, 28 Nov 2010 21:19:32 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oASLJSXM021037
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Sun, 28 Nov 2010 21:19:30 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: "Tian, Kevin" <kevin.tian@intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504D3A619CCB@shsmsx502.ccr.corp.intel.com>
References: <625BA99ED14B2D499DC4E29D8138F1504D3A61970E@shsmsx502.ccr.corp.intel.com>
	<1290363431.1272.15745.camel@rex>
	<625BA99ED14B2D499DC4E29D8138F1504D3A619B9D@shsmsx502.ccr.corp.intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D3A619CCB@shsmsx502.ccr.corp.intel.com>
Date: Sun, 28 Nov 2010 12:37:15 +0000
Message-ID: <1290947835.27143.83.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "poky@pokylinux.org" <poky@pokylinux.org>
Subject: Re: update about SSTATE status
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
X-List-Received-Date: Sun, 28 Nov 2010 21:19:41 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2010-11-22 at 19:29 +0800, Tian, Kevin wrote:
> >From: Tian, Kevin
> >
> >Sorry that I don't have such info from existing debug log. There I just recorded dep
> >variables used in checksum calculation and also the task data itself. However I didn't
> >see direct invocation on OEROOT. I'll figure it out later.
> >
> 
> I think the reason is simple. OEROOT is exported as shell variable by poky-env-internal.
> All preserved shell variables are included in dependencies of shell tasks:

Ah, good find. Since nothing actually needs OEROOT anymore, lets remove
it :). I'll queue some patches.

Cheers,

Richard


