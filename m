Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4A7A44C800AD
	for <poky@yoctoproject.org>; Thu, 10 Feb 2011 09:28:21 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1AFSKcf021325;
	Thu, 10 Feb 2011 15:28:20 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 21041-05; Thu, 10 Feb 2011 15:28:16 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1AFSCiD021319
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 10 Feb 2011 15:28:15 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Yu Ke <ke.yu@intel.com>
In-Reply-To: <cover.1297344409.git.ke.yu@intel.com>
References: <cover.1297344409.git.ke.yu@intel.com>
Date: Thu, 10 Feb 2011 15:28:07 +0000
Message-ID: <1297351687.20543.5121.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/2] mesa 7.10: add missing dependency makedepend
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
X-List-Received-Date: Thu, 10 Feb 2011 15:28:22 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-02-10 at 22:25 +0800, Yu Ke wrote:
> the last upgrade of mesa 7.10 introduce a depdency of makedepend,
> which however is not listed in the recipe, thus cause do_configure
> failure, both in mesa-dri_7.10 and mesa-xlib_7.10.
> 
> this patch set add the missing dependency to resolev this issue.
> this patch set has been tested by building mesa from scratch in
> qemux86, qemuarm and qemumips
> 
> one lesson I got is: always build from scratch for testing.
> last time the mesa 7.10 upgrade patch is tested in incremental build,
> thus the missing depdency is not showed up.
> 
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: kyu3/mesa-fix
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kyu3/mesa-fix
> 
> Thanks,
>     Yu Ke <ke.yu@intel.com>

Merged to master, thanks!

Richard


