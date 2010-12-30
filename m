Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 74B534C81003
	for <poky@yoctoproject.org>; Thu, 30 Dec 2010 03:38:48 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBU9eFS9001419; Thu, 30 Dec 2010 09:40:16 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id dhezVr--VNUU; Thu, 30 Dec 2010 09:40:15 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBU9e89T001413
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Thu, 30 Dec 2010 09:40:11 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Tom Zanussi <tom.zanussi@intel.com>
In-Reply-To: <cover.1293654518.git.tom.zanussi@intel.com>
References: <cover.1293654518.git.tom.zanussi@intel.com>
Date: Thu, 30 Dec 2010 09:38:29 +0000
Message-ID: <1293701909.17519.9942.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/2] Fix blktrace Makefile problem and re-enable blktrace recipe
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
X-List-Received-Date: Thu, 30 Dec 2010 09:38:48 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2010-12-29 at 14:34 -0600, Tom Zanussi wrote:
> This patchset fixes the build problem seen recently with blktrace;
> with that fixed, the blktrace recipe can then be re-enabled, which
> this patchset also does.
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: tzanussi/blktrace-build-fixes
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=tzanussi/blktrace-build-fixes
> 
> Thanks,
>     Tom Zanussi <tom.zanussi@intel.com>
> ---

Merged into master, thanks.

Richard


