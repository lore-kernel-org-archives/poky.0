Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id B92634C8090C
	for <poky@yoctoproject.org>; Tue, 15 Feb 2011 13:26:17 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1FJQEIn029292;
	Tue, 15 Feb 2011 19:26:14 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 29074-04; Tue, 15 Feb 2011 19:26:10 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1FJQ8Hd029286
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 15 Feb 2011 19:26:08 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <0646bf8cbd7a19bfc12f4a71506428e3c0780df9.1297724276.git.dvhart@linux.intel.com>
References: <cover.1297724276.git.dvhart@linux.intel.com>
	<0646bf8cbd7a19bfc12f4a71506428e3c0780df9.1297724276.git.dvhart@linux.intel.com>
Date: Tue, 15 Feb 2011 19:26:05 +0000
Message-ID: <1297797965.4945.369.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] README.hardware: update the beagleboard serial port documentation
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
X-List-Received-Date: Tue, 15 Feb 2011 19:26:18 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-02-14 at 14:59 -0800, Darren Hart wrote:
> From: Darren Hart <dvhart@linux.intel.com>
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: dvhart/beagle
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/beagle
> 
> Thanks,
>     Darren Hart <dvhart@linux.intel.com>
> 
> Update the README.hardware beagleboard description to account for the use
> of the OMAP_SERIAL in recent kernel recipes. Add a note documenting how to
> use the old 8250 based serial devices for older kernels.
> 
> Correct a type.
> 
> Correct the boot script name from user.scr to boot.scr.
> 
> Signed-off-by: Darren Hart <dvhart@linux.intel.com>
> CC: Gary Thomas <gary@mlbassoc.com>

Merged to master, thanks.

Richard


