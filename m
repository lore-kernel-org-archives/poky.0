Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id CE3C94C811F4
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 05:24:50 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0RBQk88026668; Thu, 27 Jan 2011 11:26:46 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id TmjYBOynICqj; Thu, 27 Jan 2011 11:26:46 +0000 (GMT)
Received: from [192.168.1.45] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0RBQc60026649
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Thu, 27 Jan 2011 11:26:41 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Dongxiao Xu <dongxiao.xu@intel.com>
In-Reply-To: <ff33a5f7c9fdbc069582bd224809b49b6784fa16.1296115229.git.dongxiao.xu@intel.com>
References: <cover.1296115229.git.dongxiao.xu@intel.com>
	<ff33a5f7c9fdbc069582bd224809b49b6784fa16.1296115229.git.dongxiao.xu@intel.com>
Date: Thu, 27 Jan 2011 11:24:12 +0000
Message-ID: <1296127452.27814.7107.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/3] bitbake: add ${MACHINE} for do_populate_sysroot_setscene and do_package_setscene
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
X-List-Received-Date: Thu, 27 Jan 2011 11:24:51 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-01-27 at 16:04 +0800, Dongxiao Xu wrote:
> From: Dongxiao Xu <dongxiao.xu@intel.com>
> 
> ${MACHINE} information is also needed to be tagged on stamps for
> do_populate_sysroot_setscene and do_package_setscene, otherwise if
> build two machines both from sstate, the second machine's sysroot will
> not be populated correctly.
> 
> Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>

The _setscene stuff is really an internal implementation issue within
bitbake. I don't like the idea that the metadata has to get this right
and I'd prefer it if bitbake always did the right thing. In this case
that means looking up the extra stamp info against the parent task, not
the setscene one.

I therefore merged:

http://git.pokylinux.org/cgit.cgi/poky/commit/?id=c34913ea5a4f20ce4bca3c68a65e9f64f1e3910c

which should obsolete this patch?

Good catch on finding the problem though!

Cheers,

Richard


