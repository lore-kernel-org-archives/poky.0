Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 096CF4C811F4
	for <poky@pokylinux.org>; Wed,  8 Dec 2010 05:13:13 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oB8BD51Z019208;
	Wed, 8 Dec 2010 11:13:05 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 19169-01; Wed,  8 Dec 2010 11:13:01 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oB8BCw1Z019202
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 8 Dec 2010 11:12:58 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: Jon Masters <jonathan@jonmasters.org>
In-Reply-To: <1291791085.2779.125.camel@constitution.bos.jonmasters.org>
References: <1291791085.2779.125.camel@constitution.bos.jonmasters.org>
Date: Wed, 08 Dec 2010 11:12:50 +0000
Message-ID: <1291806770.1554.304.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
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
X-List-Received-Date: Wed, 08 Dec 2010 11:13:14 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2010-12-08 at 01:51 -0500, Jon Masters wrote:
> Anyone happen to know if poky plays nicely with distcc?

I think most success has been with icecc in the past and there is a
icecc class which has code to enable that. It turns out that compiling
isn't the main bottleneck in builds though and icecc isn't something we
test in Poky at this time, we just provide the same class OE has which
may or may not work.

Cheers,

Richard


