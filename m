Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7858F4C8007E
	for <poky@yoctoproject.org>; Tue,  1 Feb 2011 05:55:32 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p11BvWNY012785; Tue, 1 Feb 2011 11:57:32 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id e+QNyVUkVeVL; Tue,  1 Feb 2011 11:57:32 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p11BvSKm012778
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Tue, 1 Feb 2011 11:57:30 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Zhang, Jessica" <jessica.zhang@intel.com>
In-Reply-To: <9AFCD584B0B67B48AE8D8585BE30BA9506C267B0@orsmsx504.amr.corp.intel.com>
References: <9AFCD584B0B67B48AE8D8585BE30BA9506BAAFDF@orsmsx504.amr.corp.intel.com>
	<1296382406.13501.7899.camel@rex>
	<625BA99ED14B2D499DC4E29D8138F1504E6294E1D3@shsmsx502.ccr.corp.intel.com>
	<C10D3FB0CD45994C8A51FEC1227CE22F20F8C32A4B@shsmsx502.ccr.corp.intel.com>
	<C10D3FB0CD45994C8A51FEC1227CE22F20F8C32C7C@shsmsx502.ccr.corp.intel.com>
	<1296492009.13501.13668.camel@rex>
	<9AFCD584B0B67B48AE8D8585BE30BA9506C267B0@orsmsx504.amr.corp.intel.com>
Date: Tue, 01 Feb 2011 11:55:16 +0000
Message-ID: <1296561316.13501.18767.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: poky-image-sato-sdk failed at do_rootfs
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
X-List-Received-Date: Tue, 01 Feb 2011 11:55:32 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi Jessica,

On Mon, 2011-01-31 at 16:58 -0800, Zhang, Jessica wrote:
> Some update with recent do_package racing condition triggered build issues.
> Today, I've cherry-picked 3 related commits: Kevin's fix for rebuild,
> Richard's fix for change PACKAGE_CLASSES and do_package_write* depends on
> libc do_package and did the following test builds:
> 1. bitbake poky-image-minimal (incremental)
> 2. bitbake poky-image-sato-sdk (incremental)
> 3. switch PACKAGE_CLASSES setting, then bitbake poky-image-minimal
> Everything behaved as desired so far.  Then I did
> 4. bitbake libgcc virtual/libc -c package -f 
> 5. bitbake poky-image-minimal and stumbled on the eglibc depencies issues
> again, then Richard suggest me to make the following change:
> http://git.pokylinux.org/cgit.cgi/poky-contrib/commit/?h=jzhang/eglibc_issue
> , which solved my build issues.

I've tried locally and I cannot reproduce this problem any more with
master. I'm wondering if there is some kind of caches state problem
within your build which is causing this?

I don't think the above patch I've proposed is correct.

Cheers,

Richard



