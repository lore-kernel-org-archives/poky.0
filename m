Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0C5F94C800B2
	for <poky@yoctoproject.org>; Tue, 22 Feb 2011 04:28:30 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1MASNn8027948;
	Tue, 22 Feb 2011 10:28:23 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 27573-07; Tue, 22 Feb 2011 10:28:19 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1MASFm4027942
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 22 Feb 2011 10:28:18 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Dongxiao Xu <dongxiao.xu@intel.com>
In-Reply-To: <cover.1298362595.git.dongxiao.xu@intel.com>
References: <cover.1298362595.git.dongxiao.xu@intel.com>
Date: Tue, 22 Feb 2011 10:28:12 +0000
Message-ID: <1298370492.11289.3262.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1][PULL] Fix bug 615 and 616
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
X-List-Received-Date: Tue, 22 Feb 2011 10:28:31 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-02-22 at 16:19 +0800, Dongxiao Xu wrote:
> From: Dongxiao Xu <dongxiao.xu@intel.com>
> 
> libowl-av uses playbin2 instead of original playbin, which needs
> uridecodebin library from gst-plugins-base. This pull request adds its
> support.
> 
> This fixes [BUGID #615] and [BUGID #616].
> 
> Please help to review and pull. Thanks!
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: dxu4/bugfix
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dxu4/bugfix
> 
> Thanks,
>     Dongxiao Xu <dongxiao.xu@intel.com>
> ---
> 
> 
> Dongxiao Xu (1):
>   gst-meta-base: add uridecodebin library support
> 
>  .../gstreamer/gst-meta-base_0.10.bb                |    3 ++-
>  1 files changed, 2 insertions(+), 1 deletions(-)

Merged into master, thanks!

Richard


