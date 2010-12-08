Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id EBDF44C81207
	for <poky@pokylinux.org>; Wed,  8 Dec 2010 05:14:12 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oB8BE5V3019217;
	Wed, 8 Dec 2010 11:14:05 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 19103-03; Wed,  8 Dec 2010 11:14:01 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oB8BDv1P019211
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 8 Dec 2010 11:13:58 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: Jon Masters <jonathan@jonmasters.org>
In-Reply-To: <1291790384.2779.124.camel@constitution.bos.jonmasters.org>
References: <1291790384.2779.124.camel@constitution.bos.jonmasters.org>
Date: Wed, 08 Dec 2010 11:13:50 +0000
Message-ID: <1291806830.1554.307.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@pokylinux.org
Subject: Re: local.conf template
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
X-List-Received-Date: Wed, 08 Dec 2010 11:14:13 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2010-12-08 at 01:39 -0500, Jon Masters wrote:
> Can I suggest that the local.conf be updated to include MACHINE targets
> like beagleboard under "Other supported machines". It's listed neither
> in the 4.0 laverne release nor in the latest git tree. Alternatively,
> since I'm new here, would you accept a git pull request or two?

Patches are welcome, likewise git pull requests. Cleaning up the MACHINE
entries in local.conf.sample sounds like a good idea.

Cheers,

Richard


