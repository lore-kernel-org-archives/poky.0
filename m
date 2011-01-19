Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 721E64C80FAD
	for <poky@yoctoproject.org>; Wed, 19 Jan 2011 10:06:13 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0JG81q0002485; Wed, 19 Jan 2011 16:08:02 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id YiWC6iHWy6bD; Wed, 19 Jan 2011 16:08:01 +0000 (GMT)
Received: from [192.168.1.45] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0JG7pfv002480
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Wed, 19 Jan 2011 16:07:56 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Scott Garman <scott.a.garman@intel.com>
In-Reply-To: <1295448538.14388.22027.camel@rex>
References: <cover.1295410231.git.scott.a.garman@intel.com>
	<9353d0517633d5580387f4cee0c24cf17b6b826f.1295410231.git.scott.a.garman@intel.com>
	<1295448538.14388.22027.camel@rex>
Date: Wed, 19 Jan 2011 16:05:51 +0000
Message-ID: <1295453151.14388.22265.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/9] libtool: changes to enable sysroot support
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
X-List-Received-Date: Wed, 19 Jan 2011 16:06:14 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-01-19 at 14:48 +0000, Richard Purdie wrote:
> On Tue, 2011-01-18 at 20:19 -0800, Scott Garman wrote:
> > * Added OE patches by Khem Raj which enable sysroot support
> >   and rename the command line option --with-sysroot to
> >   --with-libtool-sysroot to avoid conflicts with binutils and
> >   gcc
> > * Stage the -cross and -native libtool in the same relative path
> >   so it can be accessed equally well from recipes using
> >   BBCLASSEXTEND = "native"
> > * Removed obsolete cross_compile.patch
> > * Reorganized common things to libtool.inc
> > * Changed SRC_URI_append to SRC_URI +=
> > * PR bump for all recipes
> 
> I'm afraid this patch has too many changes rolled into one. Not all of
> these changes are sysroot related.

In the interests of moving this forward quickly, I've put together:

http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=rpurdie/libtool

which is this patch split out into three with some ideas/improvements
from me on the layout.

Your nativesdk PACKAGES change is wrong, the correct fix is to call
libltdl libltdl-nativesdk in the nativesdk case. The simplest way is:

PKGSUFFIX = ""
PACKAGES = "libltdl${PKGSUFFIX}"

and then change PKGSUFFIX in the nativesdk recipe.

I really wasn't sure about the -cross recipe changes. The change to use
libtool.inc looked incorrect and the patch changes for the do_install
also worried me a little and at least need more explanation. Dropping
the PACKAGES line from the -cross recipe is also almost pretty certainly
incorrect.

Can you see if you're happy with the revised patch versions above and
also send out anything else you think is missing such as the suffix fix
above please.

Cheers,

Richard



