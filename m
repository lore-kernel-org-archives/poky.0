Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1B75D4C811DB
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 16:39:10 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oB7Md4qG010567;
	Tue, 7 Dec 2010 22:39:04 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 10347-04; Tue,  7 Dec 2010 22:39:00 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oB7McwHO010561
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 7 Dec 2010 22:38:58 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <4CFEB16A.1010507@linux.intel.com>
References: <4CFEB16A.1010507@linux.intel.com>
Date: Tue, 07 Dec 2010 22:38:50 +0000
Message-ID: <1291761530.1554.169.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: RFC: Undocumented Recipe Variables Script
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
X-List-Received-Date: Tue, 07 Dec 2010 22:39:11 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2010-12-07 at 14:12 -0800, Darren Hart wrote:
> I whipped up a script to find variables in recipes
> and determine if they have been documented. 
[...]
> ALTERNATIVE_LINK
> ALTERNATIVE_LINKS
> ALTERNATIVE_NAME
> ALTERNATIVE_PATH
> ALTERNATIVE_PRIORITY

yet if I look at:

http://www.yoctoproject.org/docs/poky-ref-manual/poky-ref-manual.html#ref-classes-update-alternatives

these ones are.

There is a lot of noise in that script but its probably worth a pass
over the output to hint as to what we need to document.

Cheers,

Richard



