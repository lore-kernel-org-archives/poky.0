Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 014474C80BD4
	for <poky@yoctoproject.org>; Sun, 21 Nov 2010 12:06:56 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oALI6rBR017413;
	Sun, 21 Nov 2010 18:06:53 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 16842-09; Sun, 21 Nov 2010 18:06:49 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oALI6jBT017407
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Sun, 21 Nov 2010 18:06:46 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: Tom Zanussi <tom.zanussi@intel.com>
In-Reply-To: <cover.1290351524.git.tom.zanussi@intel.com>
References: <cover.1290351524.git.tom.zanussi@intel.com>
Date: Sun, 21 Nov 2010 18:06:24 +0000
Message-ID: <1290362784.1272.15726.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] emenlow build fix
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
X-List-Received-Date: Sun, 21 Nov 2010 18:06:57 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2010-11-21 at 08:58 -0600, Tom Zanussi wrote:
> This patch fixes up a small oversight in the recent renaming that causes
> a build failure for emenlow.
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: tzanussi/emenlow-fixes
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=tzanussi/emenlow-fixes
> 
> Thanks,
>     Tom Zanussi <tom.zanussi@intel.com>

Thanks Tom, I was about to merge this but I see Saul has beaten us to
it.

Cheers,

Richard


