Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id C17304C800A3
	for <poky@yoctoproject.org>; Tue,  8 Mar 2011 12:50:54 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p28IhOaI023080;
	Tue, 8 Mar 2011 18:43:24 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 22665-07; Tue,  8 Mar 2011 18:43:20 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p28IhC2I023074
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 8 Mar 2011 18:43:16 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
In-Reply-To: <cover.1299431945.git.sgw@linux.intel.com>
References: <cover.1299431945.git.sgw@linux.intel.com>
Date: Tue, 08 Mar 2011 10:43:10 -0800
Message-ID: <1299609790.602.87.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [OE-core] [PATCH 0/2] 2 More Dependency Fixes for RC2
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
X-List-Received-Date: Tue, 08 Mar 2011 18:50:55 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2011-03-06 at 09:19 -0800, Saul Wold wrote:
> From: Saul Wold <sgw@linux.intel.com>
> 
> Fix more dependency issues
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: distro/oe-core
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=distro/oe-core
> 
> Thanks,
>     Saul Wold <sgw@linux.intel.com>
> ---
> 
> 
> Saul Wold (2):
>   gst-plugins: Added hal to DEPENDS
>   attr: Added ncurses to depends
> 
>  meta/recipes-multimedia/gstreamer/gst-plugins.inc |    2 +-
>  meta/recipes-support/attr/attr.inc                |    2 ++
>  2 files changed, 3 insertions(+), 1 deletions(-)

Merged into master, thanks.

Richard


