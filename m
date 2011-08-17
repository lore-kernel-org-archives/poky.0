Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BAA7E006AB
	for <poky@pokylinux.org>; Wed, 17 Aug 2011 07:49:54 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p7HEo4Tv007992;
	Wed, 17 Aug 2011 15:50:04 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 07786-03; Wed, 17 Aug 2011 15:50:00 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p7HEnssf007977
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 17 Aug 2011 15:49:56 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Jiajun Xu <jiajun.xu@intel.com>
In-Reply-To: <90c7a0495c570e70d0445468788efb16a4083824.1313477829.git.jiajun.xu@intel.com>
References: <cover.1313477829.git.jiajun.xu@intel.com>
	<90c7a0495c570e70d0445468788efb16a4083824.1313477829.git.jiajun.xu@intel.com>
Date: Wed, 17 Aug 2011 15:49:46 +0100
Message-ID: <1313592586.13995.47.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@pokylinux.org
Subject: Re: [PATCH 1/1] poky.conf: add flag opengl into DISTRO_FEATURES
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
X-List-Received-Date: Wed, 17 Aug 2011 14:49:54 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-08-16 at 14:59 +0800, Jiajun Xu wrote:
> libsdl will check if opengl is set in DISTRO_FEATURES, then enable
> openGL option during do_configure. It is required for 3D game testing.
> 
> Fix [YOCTO #883]
> 
> Signed-off-by: Jiajun Xu <jiajun.xu@intel.com>

Merged to master, thanks.

Richard


