Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 164834C80AB7
	for <poky@yoctoproject.org>; Thu, 31 Mar 2011 09:36:18 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2VEa5W5026869;
	Thu, 31 Mar 2011 15:36:05 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 26603-04; Thu, 31 Mar 2011 15:36:01 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2VEa1cS026863
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 31 Mar 2011 15:36:01 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
In-Reply-To: <cover.1301503818.git.bruce.ashfield@windriver.com>
References: <cover.1301503818.git.bruce.ashfield@windriver.com>
Date: Thu, 31 Mar 2011 15:35:57 +0100
Message-ID: <1301582157.24596.110.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: dvhart@linux.intel.com, poky@yoctoproject.org,
	openembedded-core@lists.openembedded.org
Subject: Re: [PATCH 0/2] linux-yocto: update to 2.6.37.6 and consolidate changes
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
X-List-Received-Date: Thu, 31 Mar 2011 14:36:19 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-03-30 at 12:55 -0400, Bruce Ashfield wrote:
> Another minor update to the 2.6.37 kernel (which has almost
> run it's course for updates and will go into maintenance
> mode shortly) to 2.6.37.6.
> 
> The other patch in this series merges some out of tree configuration
> (profiling/latency) and pulls in the EMGD update to stage it for
> more BSPs.
> 
> Built and boot tested on all currently supported emulations.
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: zedd/kernel
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel
> 
> Thanks,
>     Bruce Ashfield <bruce.ashfield@windriver.com>
> ---
> 
> 
> Bruce Ashfield (2):
>   linux-yocto/qemux86-64: enable profiling and latency
>   linux-yocto: update base to 2.6.37.6

Merged to master, thanks.

Richard


