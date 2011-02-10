Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2780A4C8007E
	for <poky@yoctoproject.org>; Thu, 10 Feb 2011 07:19:31 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1ADJSnY019897;
	Thu, 10 Feb 2011 13:19:28 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 19789-02; Thu, 10 Feb 2011 13:19:24 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1ADJJa9019891
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 10 Feb 2011 13:19:20 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Dexuan Cui <dexuan.cui@intel.com>
In-Reply-To: <cover.1297321220.git.dexuan.cui@intel.com>
References: <cover.1297321220.git.dexuan.cui@intel.com>
Date: Thu, 10 Feb 2011 13:19:14 +0000
Message-ID: <1297343954.20543.4558.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] lttng-ust: fix ppc build
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
X-List-Received-Date: Thu, 10 Feb 2011 13:19:32 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-02-10 at 15:03 +0800, Dexuan Cui wrote:
> From: Dexuan Cui <dexuan.cui@intel.com>
> 
> Here I introduced a patch from lttng mailing list to fix ppc build:
> http://lists.casi.polymtl.ca/pipermail/ltt-dev/2011-February/003903.html
> 
> The patch looks good and I think it would be in next release.
> At present, let's add it into SRC_URI.
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: dcui/master
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dcui/master
> 
> Thanks,
>     Dexuan Cui <dexuan.cui@intel.com>

Merged to master, thanks.

Richard


