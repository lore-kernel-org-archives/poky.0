Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id B7D254C811AB
	for <poky@yoctoproject.org>; Mon, 31 Jan 2011 09:15:20 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0VFHIRt002251; Mon, 31 Jan 2011 15:17:19 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 0x97rLEf3yOV; Mon, 31 Jan 2011 15:17:18 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0VFHEO4002239
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Mon, 31 Jan 2011 15:17:16 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Zhai, Edwin" <edwin.zhai@intel.com>
In-Reply-To: <4D46CEF9.7000808@intel.com>
References: <cover.1296485859.git.edwin.zhai@intel.com>
	<d4ed42c98ddae97ccf3fa42843d7a1ecfbab799c.1296485859.git.edwin.zhai@intel.com>
	<4D46CEF9.7000808@intel.com>
Date: Mon, 31 Jan 2011 15:15:04 +0000
Message-ID: <1296486904.13501.13316.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 5/6] gdk-pixbuf: Fix the native png load error and	remove duplicated recipe
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
X-List-Received-Date: Mon, 31 Jan 2011 15:15:21 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-01-31 at 15:02 +0000, Zhai, Edwin wrote:
> Koen,
> I merged gdk-pixbuf & gdk-pixbuf-native, but do_split_packages make 
> gdk-pixbuf-native also provide gdk-pixbuf-loader-xxx then cause multiple 
> providers. Any way to comment it in gdk-pixbuf-native?

PACKAGES_DYNAMIC_virtclass-native = ""

> RP,
> I saw your patch to resolve the multiple providers from gdk-pixbuf and 
> gtk+, and just was curious why not just remove old gtk+ recipes given no 
> others depend on them. Any other concerns?

The old version of gtk+ has some sato patches we've yet to forward port
to the newer gtk+. Its something I want to resolve before we delete it.

As an added bonus we uncovered a nasty dependency provider problem in
bitbake which was nice to fix.

Cheers,

Richard


