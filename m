Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5A0D04C811BA
	for <poky@yoctoproject.org>; Wed, 26 Jan 2011 03:43:20 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0Q9jF1Z025941; Wed, 26 Jan 2011 09:45:15 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id JcmOwh6QQdE7; Wed, 26 Jan 2011 09:45:15 +0000 (GMT)
Received: from [192.168.1.45] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0Q9j9N7025922
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Wed, 26 Jan 2011 09:45:10 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Lu, Lianhao" <lianhao.lu@intel.com>
In-Reply-To: <C10D3FB0CD45994C8A51FEC1227CE22F20A8339088@shsmsx502.ccr.corp.intel.com>
References: <C10D3FB0CD45994C8A51FEC1227CE22F20A8339044@shsmsx502.ccr.corp.intel.com>
	<4D3FBCB0.1030609@intel.com>
	<C10D3FB0CD45994C8A51FEC1227CE22F20A8339088@shsmsx502.ccr.corp.intel.com>
Date: Wed, 26 Jan 2011 09:42:50 +0000
Message-ID: <1296034970.27814.2181.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Is the grammar of .la files changed in new libtool 2.4?
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
X-List-Received-Date: Wed, 26 Jan 2011 09:43:20 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-01-26 at 14:39 +0800, Lu, Lianhao wrote:
> Garman, Scott A wrote on 2011-01-26:
> The code snippet I mentioned about fixing broken .la files is in
> function do_populate_sdk() in file
> meta/recipies-core/meta/meta-toolchina.bb, you might search for "# Fix
> or remove broken .la files" to locate the code.

We should just be able to drop that now.

> > Once I have the code sections to examine we should be able to iron
> > this out more clearly.
> > 
> 
> I have one more question about how to use the new libtool (sysroot
> enabled libroot 2.4) in meta-toolchain. Is there anything missing in
> the following sequence(takes mips as example)? Thank you!
> 
> $libtoolize --automake
> $aclocal -I <m4 dir containing m4 files from libtool 2.4> 
> $autoconf
> $autoheader
> $automake -a
> $./configure --host=mips-poky-linux --target=mips-poky-linux --with-libtool-sysroot=<mips sysroot dir>

This looks correct off the top of my head, the important bit is the
libtoolize call and the specification of the libtool sysroot to
configure. I'm assuming libtoolize is from libtool-nativesdk?

Cheers,

Richard


