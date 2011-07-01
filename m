Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8C00D4C80836
	for <poky@yoctoproject.org>; Fri,  1 Jul 2011 18:41:36 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p61NfYGp022500;
	Sat, 2 Jul 2011 00:41:34 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 22336-04; Sat,  2 Jul 2011 00:41:30 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p61NfQAE022494
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Sat, 2 Jul 2011 00:41:26 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Dexuan Cui <dexuan.cui@intel.com>
In-Reply-To: <cover.1309513556.git.dexuan.cui@intel.com>
References: <cover.1309513556.git.dexuan.cui@intel.com>
Date: Sat, 02 Jul 2011 00:41:03 +0100
Message-ID: <1309563663.20015.594.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] poky.conf: add largefile support into DISTRO_FEATURES
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
X-List-Received-Date: Fri, 01 Jul 2011 23:41:37 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-07-01 at 17:53 +0800, Dexuan Cui wrote:
> Dexuan Cui (1):
>   poky.conf: add largefile support into DISTRO_FEATURES
> 
> are available in the git repository at:
>   git://git.pokylinux.org/poky-contrib dcui/mkswap
>   http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dcui/mkswap
> 
>  meta-yocto/conf/distro/poky-lsb.conf |    2 +-
>  meta-yocto/conf/distro/poky.conf     |    2 ++
>  2 files changed, 3 insertions(+), 1 deletions(-)

Merged to master, thanks.

Richard



