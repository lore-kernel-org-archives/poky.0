Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id C63A24C81065
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 09:24:31 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0HFQFYq025849; Mon, 17 Jan 2011 15:26:16 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id Lg8fYRK5xia3; Mon, 17 Jan 2011 15:26:15 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0HFQAV4025839
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Mon, 17 Jan 2011 15:26:13 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Saul Wold <saul.wold@intel.com>
In-Reply-To: <4D339BF0.5080607@intel.com>
References: <4D339BF0.5080607@intel.com>
Date: Mon, 17 Jan 2011 15:24:14 +0000
Message-ID: <1295277854.14388.14938.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: libxml-parser-perl failure
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
X-List-Received-Date: Mon, 17 Jan 2011 15:24:32 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi,

On Sun, 2011-01-16 at 17:31 -0800, Saul Wold wrote:
> Nitin, Richard:
> 
> I was looking into the libxml failure today, and found a couple of 
> different items that have changed in the newer version.  First is the 
> addition of an arch_check function in the Extuils/MM_Any.pm and used
> MakeMaker.pm. This check seems to use the archlib, which is set to 
> ${STAGING_LIBDIR}/perl/${PV} by poky, but expects the final directory to 
> be the ARCH, which is why we get 5.12.2 for the Arch!
> 
> Why do we set archlib to the ${PV} instead of ${PV}/${target}
> 
> 
> The next issue that I saw had to do with Errno.pm and another 
> architecture check, this time the errors:
> 
>   ERROR from evaluation of 
> /vol/1/sgw/builds/ppc/tmp/work/ppc603e-poky-linux/libxml-parser-perl-2.36-r0/XML-Parser-2.36/Expat/Makefile.PL: 
> Errno architecture (x86_64-linux-thread-multi-2.6.34.7-56.fc13.x86_64) 
> does not match executable architecture 
> (powerpc-linux-2.6.37-rc5-yocto-standard+) at 
> /vol/1/sgw/builds/ppc/tmp/sysroots/x86_64-linux/usr/lib/perl/5.12.2/Errno.pm 
> line 11.
> 
> This looks like another check that will need some work

This seemed to be introduced by my change to wrap the perl binary with a
wrapper script. I've updated the wrapper to append to PERL5LIB rather
than overwrite it which I think is why these failures were appearing.
They change the lib search path to pass data around, ugly but we can
work around it.

We still need to check the perl binary does work ok with sstate
relocation after this.

Cheers,

Richard


