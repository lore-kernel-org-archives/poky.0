Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id D71EA4C8085F;
	Mon, 10 Jan 2011 15:05:37 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0AL7ECC012888; Mon, 10 Jan 2011 21:07:14 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id dRU3DjmfxrPI; Mon, 10 Jan 2011 21:07:13 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0AL79fW012880
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Mon, 10 Jan 2011 21:07:10 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
In-Reply-To: <cover.1294680187.git.bruce.ashfield@windriver.com>
References: <cover.1294680187.git.bruce.ashfield@windriver.com>
Date: Mon, 10 Jan 2011 21:05:12 +0000
Message-ID: <1294693512.1492.1380.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: Re: [PATCH 0/5] linux-yocto: consolidated pull request
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
X-List-Received-Date: Mon, 10 Jan 2011 21:05:38 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-01-10 at 12:30 -0500, Bruce Ashfield wrote:
> It looks like some of my last pull request didn't make it
> to master, so I've repeated it here. Patches 4/5 have already
> been sent:
> 
>   kernel-yocto: pass the build directory to configme
>   routerstation: disable command line overrides
> 
> The remaining three changes are new and are:
> 
>  - A merge from Darren to update the default 2.6.37 configs
>    to enable the debug/ftrace configs we need.
> 
>  - A change to make board descriptions generic. These are
>    transparent to nearly everyone, but any new BSPs will be
>    described with: KARCH, KMACHINE and KTYPE which are more
>    generic variables and used internally during kernel
>    configuration. They are differnet from yocto/poky variables
>    on purpose, since the kernel tree can be cloned and used 
>    distinctly from any build system.
> 
>  - And finally an update to 2.6.37 with a port of the alternate
>    RPC ports patch which reinstates usermode NFS support to
>    2.6.37.
> 
> Also out of interest, the routerstation pro and fsl-mpc8315e-rdb
> have all been booted against 2.6.37 and will follow shortly. 
> Next up are feature merges (lttng, etc) to match the -stable 
> kernel functionality.

Merged into master, thanks!

Richard


