Return-Path: <rpurdie@linux.intel.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id 868D54C80FAC
	for <poky@lists.pokylinux.org>; Thu,  2 Dec 2010 08:04:46 -0600 (CST)
Received: by pug.o-hand.com (Postfix)
	id ECCD712EC3D9; Thu,  2 Dec 2010 08:42:37 -0600 (CST)
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id 9C28A12EC1F6
	for <poky@o-hand.com>; Thu,  2 Dec 2010 08:42:37 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oB2E4fmh019619;
	Thu, 2 Dec 2010 14:04:41 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 19229-07; Thu,  2 Dec 2010 14:04:37 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oB2E4Qfg019613
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 2 Dec 2010 14:04:32 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: Saul Wold <saul.wold@intel.com>
In-Reply-To: <4CF72EB9.4070903@intel.com>
References: <4CF72EB9.4070903@intel.com>
Date: Thu, 02 Dec 2010 06:04:25 -0800
Message-ID: <1291298665.14277.2739.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "poky@o-hand.com" <poky@o-hand.com>
Subject: Re: [PULL] Consolidated Pull Request
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
X-List-Received-Date: Thu, 02 Dec 2010 14:04:46 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2010-12-01 at 21:29 -0800, Saul Wold wrote:
> Please pull this as it has fixes for master build.

I've merged it with two changes. One is that I had to remove the ${L}
variable from the opkg-config-base change, the other is I explicitly
disabled gobject-introspection for gssdp, not added it as a dependency
as its broken for cross compiling.

Cheers,

Richard


