Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8E3AC4C800AB;
	Fri, 11 Feb 2011 04:28:09 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1BAS3rd031964;
	Fri, 11 Feb 2011 10:28:03 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 31866-02; Fri, 11 Feb 2011 10:27:59 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1BARtXG031957
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 11 Feb 2011 10:27:58 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Esben Haabendal <eha@dev.doredevelopment.dk>
In-Reply-To: <1297371961.3911.1.camel@eha>
References: <cover.1297232632.git.bruce.ashfield@windriver.com>
	<a80cd52437e3b3874ea0196d31127f14cf486f2f.1297232632.git.bruce.ashfield@windriver.com>
	<1297371961.3911.1.camel@eha>
Date: Fri, 11 Feb 2011 10:27:51 +0000
Message-ID: <1297420071.20543.9726.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: Re: [PATCH 1/3] linux: factor dts/dtc/dtb handling into a specific include
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
X-List-Received-Date: Fri, 11 Feb 2011 10:28:10 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-02-10 at 22:06 +0100, Esben Haabendal wrote:
> On Wed, 2011-02-09 at 01:27 -0500, Bruce Ashfield wrote:
> > diff --git a/meta/recipes-kernel/linux/linux-dtb.inc b/meta/recipes-kernel/linux/linux-dtb.inc
> > new file mode 100644
> > index 0000000..0b27d18
> > --- /dev/null
> > +++ b/meta/recipes-kernel/linux/linux-dtb.inc
> > @@ -0,0 +1,27 @@
> > +# Support for device tree generation
> > +FILES_kernel_devicetree = "/boot/devicetree*"
> 
> I guess that should be FILES_kernel-devicetree to actually match the
> package name.

Yes, I've pushed a fix for that, thanks.

Richard


