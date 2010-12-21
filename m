Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1CF8E4C808B0
	for <poky@yoctoproject.org>; Tue, 21 Dec 2010 02:58:53 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBL90DpD032481; Tue, 21 Dec 2010 09:00:13 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id yG-wfJQ3HE2W; Tue, 21 Dec 2010 09:00:13 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBL906Cc032476
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Tue, 21 Dec 2010 09:00:08 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Lianhao Lu <lianhao.lu@intel.com>
In-Reply-To: <cover.1292899187.git.lianhao.lu@intel.com>
References: <cover.1292899187.git.lianhao.lu@intel.com>
Date: Tue, 21 Dec 2010 08:58:21 +0000
Message-ID: <1292921901.25087.5761.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/2] [BUGID #565] fixing. Added meta-environment pacakge.
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
X-List-Received-Date: Tue, 21 Dec 2010 08:58:54 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2010-12-21 at 10:39 +0800, Lianhao Lu wrote:
> Added pacakge of meta-environment-${TARGET_ARCH} for environment files.
> Had config site files with correct target config site files' content.
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: llu/bug565
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=llu/bug565
> 
> Thanks,
>     Lianhao Lu <lianhao.lu@intel.com>

I've merged these but I squashed the two commits into one.

Cheers,

Richard


