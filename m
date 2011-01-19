Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id C84F94C8106A
	for <poky@yoctoproject.org>; Wed, 19 Jan 2011 15:25:09 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0JLQpsg017600; Wed, 19 Jan 2011 21:26:51 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id NqYEgokOQnxO; Wed, 19 Jan 2011 21:26:51 +0000 (GMT)
Received: from [192.168.1.45] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0JLQiGB017590
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Wed, 19 Jan 2011 21:26:47 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Mark Hatle <mark.hatle@windriver.com>
In-Reply-To: <4D374390.5040500@windriver.com>
References: <cover.1295455496.git.paul.eggleton@linux.intel.com>
	<20F0A899-BE2B-4743-B435-7B9C64AD501C@dominion.thruhere.net>
	<4D374390.5040500@windriver.com>
Date: Wed, 19 Jan 2011 21:24:44 +0000
Message-ID: <1295472284.14388.23266.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, poky@yoctoproject.org
Subject: Re: [PATCH 0/3] util-linux: split out libuuid and libblkid
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
X-List-Received-Date: Wed, 19 Jan 2011 21:25:10 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-01-19 at 14:03 -0600, Mark Hatle wrote:
> On 1/19/11 1:51 PM, Koen Kooi wrote:
> > Tangent: have you considered switching to util-linux-ng?
> > 
> > Op 19 jan 2011, om 17:55 heeft Paul Eggleton het volgende geschreven:
> > 
> >> Split libuuid and libblkid from util-linux into separate runtime packages.
> >> Slightly reduces the overall footprint of other packages that depend on these 
> >> libraries.
> 
> The util-linux-ng components are licensed GPLv3, so they could be alternatives,
> but we need a GPLv2 version of the components for some systems.

According to the license headers, only lscpu is GPLv3 and since we
package that separately from everything else and clearly identify its
license, we are currently using util-linux-ng for this purpose as things
stand.

Cheers,

Richard


