Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id BF58A4C8086E
	for <poky@yoctoproject.org>; Mon, 21 Feb 2011 11:55:08 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1LHt6Ze019191;
	Mon, 21 Feb 2011 17:55:06 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 19075-02; Mon, 21 Feb 2011 17:55:02 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1LHt1Al019178
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 21 Feb 2011 17:55:01 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Mei Lei <lei.mei@intel.com>
In-Reply-To: <cover.1298270198.git.lei.mei@intel.com>
References: <cover.1298270198.git.lei.mei@intel.com>
Date: Mon, 21 Feb 2011 17:54:58 +0000
Message-ID: <1298310898.11289.3187.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1]distrodata.bbclass: Fix some checkpkg bugs
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
X-List-Received-Date: Mon, 21 Feb 2011 17:55:09 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-01-21 at 14:39 +0800, Mei Lei wrote:
> From: Mei Lei <lei.mei@intel.com>
> 
> Hi Saul,
>     This commit fix some bugs in checkpkg function when checking upstream version.
> 
> Thanks
> Lei
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: lmei3/distrodata.bbclass
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=lmei3/distrodata.bbclass
> 
> Thanks,
>     Mei Lei <lei.mei@intel.com>
> ---
> 
> 
> Mei Lei (1):
>   distrodata.bbclass: Fix some bugs for rpm,icu and quicky recipe when
>     checking upstream version
> 
>  meta/classes/distrodata.bbclass |   14 +++++++-------
>  1 files changed, 7 insertions(+), 7 deletions(-)

Merged to master, thanks.

Richard


