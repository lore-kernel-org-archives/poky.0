Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5FFD74C80B6B
	for <poky@yoctoproject.org>; Mon, 22 Nov 2010 09:56:58 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oAMFutCG029349;
	Mon, 22 Nov 2010 15:56:55 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 28901-09; Mon, 22 Nov 2010 15:56:51 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oAMFungY029342
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 22 Nov 2010 15:56:49 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: Saul Wold <sgw@linux.intel.com>
In-Reply-To: <cover.1290046217.git.sgw@linux.intel.com>
References: <cover.1290046217.git.sgw@linux.intel.com>
Date: Mon, 22 Nov 2010 15:56:48 +0000
Message-ID: <1290441408.1272.17029.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/5] Recipe Reorganization
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
X-List-Received-Date: Mon, 22 Nov 2010 15:56:58 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2010-11-17 at 18:10 -0800, Saul Wold wrote:
> This is the next stage in recipe reorganization to clean up
> the world build space.
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: distro/stage
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=distro/stage
> 
> Thanks,
>     Saul Wold <sgw@linux.intel.com>
> ---
> 
> 
> Saul Wold (5):
>   Meta: Recipe Reogranization
>   libsndfile: Upgrade to 1.0.23
>   telepathy: initial update
>   subversion: Fix host contamination
>   web_svn: Fixup Patching and add libowl

I've merged this series, thanks!

Richard


