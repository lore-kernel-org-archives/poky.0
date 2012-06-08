Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 723A4E00723
	for <poky@yoctoproject.org>; Fri,  8 Jun 2012 03:59:07 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q58Awo50014568;
	Fri, 8 Jun 2012 11:58:50 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 13414-07; Fri,  8 Jun 2012 11:58:46 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q58AwdVE014562
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 8 Jun 2012 11:58:40 +0100
Message-ID: <1339153120.30460.1.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Date: Fri, 08 Jun 2012 11:58:40 +0100
In-Reply-To: <cover.1339099275.git.bruce.ashfield@windriver.com>
References: <cover.1339099275.git.bruce.ashfield@windriver.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: dvhart@linux.intel.com, poky@yoctoproject.org, saul.wold@intel.com
Subject: Re: [PATCH 0/7] linux-yocto/meta-yocto: consolidated pull request
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
X-List-Received-Date: Fri, 08 Jun 2012 10:59:07 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2012-06-07 at 16:03 -0400, Bruce Ashfield wrote:
> Richard/Saul,
> 
> This stack on top of my 9 patch series to oe-core. This patch series
> does largely the same thing as the oe-core one:
> 
>   - removes 2.6.37
>   - adds 2.6.34
>   - updates recipes for machine / tool changes
>   - make 3.4 the default kernel for qemu*
> 
> Cheers,
> 
> Bruce
> 
> The following changes since commit 987e5fba8f7b6f09cc96f4e3d2a5857209a45b7b:
> 
>   kern-tools: anchor KMACHINE test (2012-06-07 15:46:53 -0400)
> 
> are available in the git repository at:
>   git://git.pokylinux.org/poky-contrib zedd/kernel-yocto
>   http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel-yocto
> 
> Bruce Ashfield (7):
>   linux-yocto/meta-yocto: update to v3.0.32
>   linux-yocto/meta-yocto: update to v3.2.18
>   linux-yocto/meta-yocto: remove 2.6.37 bbappend
>   linux-yocto/meta-yocto: add machine aliases for yocto BSPs
>   linux-yocto/meta-yocto: introduce 3.4 bbappend
>   linux-yocto/meta-yocto/3.2: fri2 and chiefriver machine updates
>   meta-yocto: make 3.4 the default kernel for qemu*

Merged to master, thanks.

Richard


