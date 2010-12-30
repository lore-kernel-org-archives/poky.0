Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id CDCCC4C80FFE
	for <poky@yoctoproject.org>; Thu, 30 Dec 2010 04:25:05 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBUAQ80L002627; Thu, 30 Dec 2010 10:26:08 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id cYfiegl1bJwd; Thu, 30 Dec 2010 10:26:08 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBUAQ0XV002622
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Thu, 30 Dec 2010 10:26:02 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <4D1B5F7E.8070907@linux.intel.com>
References: <4D1A8103.2030501@linux.intel.com>
	<A1C71709-8C15-4B14-941E-965112512C5A@dominion.thruhere.net>
	<4D1B5F7E.8070907@linux.intel.com>
Date: Thu, 30 Dec 2010 10:24:21 +0000
Message-ID: <1293704661.17519.10004.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Library paths for Makefile based recipes
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
X-List-Received-Date: Thu, 30 Dec 2010 10:25:06 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2010-12-29 at 08:19 -0800, Darren Hart wrote:
> On 12/29/2010 01:18 AM, Koen Kooi wrote:
> >
> > Op 29 dec 2010, om 01:29 heeft Darren Hart het volgende geschreven:
> >
> >> I'm working on packaging kernelshark ("make gui" for the trace-cmd recipe
> >> basically). It fails trying to link to -lgtk-x11-2.0. I have added gtk+
> >> as a DEPENDS and the library does exist in the sysroots. I have also added
> >> "inherit pkgconfig" as the project Makefile uses it extensively.
> >
> > 'inherit pkgconfig' only does DEPENDS_prepend = "pkgconfig-native "
> 
> Right, but omitting it could result in the package being built using the 
> host pkg-config, which shouldn't be a build dependency.

Worse, it might use the host systems pkgconfig which might have broken
sysroot support or suffer from some other issues our own pkgconfig does
not.

E.g:

http://git.pokylinux.org/cgit.cgi/poky/tree/meta/recipes-devtools/pkgconfig/pkgconfig/disable-legacy.patch

and versions prior to 0.25 have broken sysroot support.

Cheers,

Richard



