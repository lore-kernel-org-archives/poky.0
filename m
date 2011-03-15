Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 716074C8009A
	for <poky@yoctoproject.org>; Tue, 15 Mar 2011 12:50:02 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2FHo0D1022182;
	Tue, 15 Mar 2011 17:50:00 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 21774-06; Tue, 15 Mar 2011 17:49:56 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2FHnt8f022176
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 15 Mar 2011 17:49:56 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Lianhao Lu <lianhao.lu@intel.com>
In-Reply-To: <cover.1300182097.git.lianhao.lu@intel.com>
References: <cover.1300182097.git.lianhao.lu@intel.com>
Date: Tue, 15 Mar 2011 17:49:46 +0000
Message-ID: <1300211386.30423.1818.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] Fix missing dependencies in package-index.bb
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
X-List-Received-Date: Tue, 15 Mar 2011 17:50:02 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-03-15 at 17:42 +0800, Lianhao Lu wrote:
> From: Lianhao Lu <lianhao.lu@intel.com>
> 
> Fixed bug #871. Added missing dependencies on opkg-utils-native and opkg-native to package-index.bb.
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: llu/bug871
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=llu/bug871
> 
> Thanks,
>     Lianhao Lu <lianhao.lu@intel.com>
> ---
> 
> 
> Lianhao Lu (1):
>   package-index.bb: Added missing dependencies.
> 
>  meta/recipes-core/meta/package-index.bb |    3 +++
>  1 files changed, 3 insertions(+), 0 deletions(-)

Applied to master, thanks.

Richard


