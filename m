Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id DB3D64C800AF
	for <poky@yoctoproject.org>; Fri, 27 May 2011 07:22:21 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p4RCMHdA002091;
	Fri, 27 May 2011 13:22:17 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 02040-02; Fri, 27 May 2011 13:22:13 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p4RCM97J002085
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 27 May 2011 13:22:10 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Yu Ke <ke.yu@intel.com>
In-Reply-To: <7782fb15d65bb7156da2f776c98832368f2d7c38.1306483559.git.ke.yu@intel.com>
References: <cover.1306483559.git.ke.yu@intel.com>
	<7782fb15d65bb7156da2f776c98832368f2d7c38.1306483559.git.ke.yu@intel.com>
Date: Fri, 27 May 2011 13:22:04 +0100
Message-ID: <1306498924.27470.265.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] xorg.conf: update keyboard config with evdev
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
X-List-Received-Date: Fri, 27 May 2011 12:22:23 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-05-27 at 16:14 +0800, Yu Ke wrote:
> with xserver 1.10, the evdev driver is used by default, so update the
> keyboard config entry in xorg.conf accordingly.
> 
> Fix [YOCTO #1108]
> 
> Signed-off-by: Yu Ke <ke.yu@intel.com>
> ---
>  .../xserver-xf86-config/qemux86-64/xorg.conf       |    5 +++--
>  .../xserver-xf86-config/qemux86/xorg.conf          |    5 +++--
>  .../xorg-xserver/xserver-xf86-config_0.1.bb        |    2 +-
>  3 files changed, 7 insertions(+), 5 deletions(-)

Merged to master, thanks.

Richard


