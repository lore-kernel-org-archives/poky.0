Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DFADFE01254
	for <poky@yoctoproject.org>; Wed,  7 Sep 2011 15:14:57 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p87MKpik029765; Wed, 7 Sep 2011 23:20:51 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id VyRXLTjxIPBI; Wed,  7 Sep 2011 23:20:51 +0100 (BST)
Received: from [192.168.1.40] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p87MKmml029759
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Wed, 7 Sep 2011 23:20:49 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <cover.1315326700.git.dvhart@linux.intel.com>
References: <cover.1315326700.git.dvhart@linux.intel.com>
Date: Wed, 07 Sep 2011 23:14:45 +0100
Message-ID: <1315433685.13021.36.camel@ted>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] meta-yocto: beagleboard: document hard floating point abi
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
X-List-Received-Date: Wed, 07 Sep 2011 22:14:58 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-09-06 at 09:39 -0700, Darren Hart wrote:
> The following changes since commit dbff56238e083d0110eb13c1f5a07716340fdfe4:
> 
>   icu-3.6: fix building with big make -j (2011-09-06 16:37:02 +0100)
> 
> are available in the git repository at:
>   git://git.pokylinux.org/poky-contrib dvhart/beagleboard
>   http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/beagleboard
> 
> Darren Hart (1):
>   beagleboard: document how to enable the hard floating point abi
> 
>  meta-yocto/conf/machine/beagleboard.conf |    4 ++++
>  1 files changed, 4 insertions(+), 0 deletions(-)

Merged to master, thanks.

Richard



