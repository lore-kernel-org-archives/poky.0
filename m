Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 911284C80BD8
	for <poky@pokylinux.org>; Mon, 20 Dec 2010 15:17:58 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBKLHhWI012095; Mon, 20 Dec 2010 21:17:43 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 29eL0eTgl5d7; Mon, 20 Dec 2010 21:17:43 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBKLHan5012092
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Mon, 20 Dec 2010 21:17:38 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <20101220032118.GD26429@gmail.com>
References: <b9dded$hdep5f@orsmga002.jf.intel.com>
	<20101220032118.GD26429@gmail.com>
Date: Mon, 20 Dec 2010 21:15:52 +0000
Message-ID: <1292879752.25087.5050.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: paul.eggleton@linux.intel.com, poky@pokylinux.org
Subject: Re: [PATCH 2/3] kernel.bbclass: introduce UIMAGE_BASE_NAME
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
X-List-Received-Date: Mon, 20 Dec 2010 21:17:59 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2010-12-19 at 19:21 -0800, Khem Raj wrote:
> On (17/12/10 08:51), Kevin Tian wrote:
> >  addtask sizecheck before do_install after do_compile
> >  
> >  KERNEL_IMAGE_BASE_NAME ?= "${KERNEL_IMAGETYPE}-${PV}-${PR}-${MACHINE}-${DATETIME}"
> > +UIMAGE_BASE_NAME ?= "uImage-${PV}-${PR}-${MACHINE}-${DATETIME}"
> >  # Don't include the DATETIME variable in the sstate package signatures
> >  KERNEL_IMAGE_BASE_NAME[vardepsexclude] = "DATETIME"
> >  KERNEL_IMAGE_SYMLINK_NAME ?= "${KERNEL_IMAGETYPE}-${MACHINE}"
> > @@ -484,16 +485,16 @@ kernel_do_deploy() {
> >  
> >  	if test "x${KERNEL_IMAGETYPE}" = "xuImage" ; then 
> >  		if test -e arch/${ARCH}/boot/uImage ; then
> > -			cp arch/${ARCH}/boot/uImage ${DEPLOYDIR}/uImage-${PV}-${PR}-${MACHINE}-${DATETIME}.bin
> > +			cp arch/${ARCH}/boot/uImage ${DEPLOYDIR}/${UIMAGE_BASE_NAME}.bin
> 
> why using KERNEL_IMAGE_BASE_NAME does not work here ?

Agreed, this doesn't make sense. I've pushed:

http://git.pokylinux.org/cgit.cgi/poky/commit/?id=2e94e9a4fed33b1c7c5b0ce1dbc566e24344280c

since its clear that KERNEL_IMAGETYPE = "uImage".

Cheers,

Richard


