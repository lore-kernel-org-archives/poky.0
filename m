Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 654D64C808B0
	for <poky@yoctoproject.org>; Tue, 21 Dec 2010 08:46:33 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBLElo3X013404; Tue, 21 Dec 2010 14:47:50 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id G0VWvfjZKQpj; Tue, 21 Dec 2010 14:47:50 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBLEljEX013401
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Tue, 21 Dec 2010 14:47:47 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Wolfgang Denk <wd@denx.de>
In-Reply-To: <20101221072706.A79A3B715C@gemini.denx.de>
References: <cover.1292856365.git.josh@linux.intel.com>
	<20101221072706.A79A3B715C@gemini.denx.de>
Date: Tue, 21 Dec 2010 14:45:59 +0000
Message-ID: <1292942759.25087.6137.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org, Joshua Lock <josh@linux.intel.com>
Subject: Re: [PATCH 0/3] Misc build fixes v2
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
X-List-Received-Date: Tue, 21 Dec 2010 14:46:33 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2010-12-21 at 08:27 +0100, Wolfgang Denk wrote:
> Dear Joshua Lock,
> 
> In message <cover.1292856365.git.josh@linux.intel.com> you wrote:
> > This series includes a corrected fix for gst-plugins-base for make 3.82 as
> > well as a more correct fix to enable gthumb to build on a system without
> > gtk-doc installed.
> > 
> > We do this by providing a gtk-doc-native recipe and having gtk-doc depend on
> > it. That way we have a binary to run on the build system to generate the
> > documentation as well as a target version so that the pkgconfig test passes.
> > 
> > Pull URL: git://git.pokylinux.org/poky-contrib.git
> >   Branch: josh/make-382
> >   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=josh/make-382
> 
> I confirm that I can build both poky-image-sdk and meta-toolchain-sdk
> for "qemuppc" on Fedora 14 / x86_64 with these patches.
> 
> Tested-by: Wolfgang Denk <wd@denx.de>

Great, I'm pleased this is working better now. Thanks for reporting
back!

(and thanks Joshua for sorting the issues!)

Cheers,

Richard


