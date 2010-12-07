Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 93B904C80050
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 05:57:13 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oB7BvBGY002016;
	Tue, 7 Dec 2010 11:57:11 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 32580-09; Tue,  7 Dec 2010 11:57:07 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oB7Bv5Y4002008
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 7 Dec 2010 11:57:06 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: Scott Garman <scott.a.garman@intel.com>
In-Reply-To: <cover.1291711822.git.scott.a.garman@intel.com>
References: <cover.1291711822.git.scott.a.garman@intel.com>
Date: Tue, 07 Dec 2010 11:56:58 +0000
Message-ID: <1291723018.14277.2974.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/2] Add sanity scenarios for -lsb images
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
X-List-Received-Date: Tue, 07 Dec 2010 11:57:14 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2010-12-07 at 00:50 -0800, Scott Garman wrote:
> This pull request adds sanity test scenarios for -lsb images, and also
> removes a leftover file from when tunctl used to be built from within
> scripts/
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: sgarman/lsb_sanity_tests
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=sgarman/lsb_sanity_tests
> 
> Thanks,
>     Scott Garman <scott.a.garman@intel.com>

Merged into master, thanks.

Richard


