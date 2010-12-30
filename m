Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id C2EB94C80FBE
	for <poky@yoctoproject.org>; Thu, 30 Dec 2010 06:27:00 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBUCST3A006164; Thu, 30 Dec 2010 12:28:29 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id rMp3SZ2Av5Nm; Thu, 30 Dec 2010 12:28:29 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBUCSPOG006157
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Thu, 30 Dec 2010 12:28:27 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <1293707874-13485-1-git-send-email-koen@openembedded.org>
References: <1293707874-13485-1-git-send-email-koen@openembedded.org>
Date: Thu, 30 Dec 2010 12:26:46 +0000
Message-ID: <1293712006.17519.10134.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] factor out shared state settings into a .inc
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
X-List-Received-Date: Thu, 30 Dec 2010 12:27:01 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2010-12-30 at 12:17 +0100, Koen Kooi wrote:
> From: Koen Kooi <koen@dominion.thruhere.net>
> 
> This allows other distros to keep up with the latest shared state improvements
> 
> Signed-off-by: Koen Kooi <koen@dominion.thruhere.net>

This is a good point but I've done this slightly differently. I've moved
the definitions to bitbake.conf with a ?= assignment so people can
override as needed. I also moved the do_patch variable exclude to live
alongside the function it refers to.

Cheers,

Richard


