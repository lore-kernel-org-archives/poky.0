Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9C7F14C80050
	for <poky@pokylinux.org>; Mon, 20 Dec 2010 08:51:13 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBKEqTaN027058; Mon, 20 Dec 2010 14:52:29 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id SsVisreoXSay; Mon, 20 Dec 2010 14:52:29 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBKEqLFG027053
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Mon, 20 Dec 2010 14:52:23 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Kevin Tian <kevin.tian@intel.com>
In-Reply-To: <0d30dc$kg4eqd@orsmga001.jf.intel.com>
References: <0d30dc$kg4eqd@orsmga001.jf.intel.com>
Date: Mon, 20 Dec 2010 14:50:38 +0000
Message-ID: <1292856638.25087.4485.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: paul.eggleton@linux.intel.com, poky@pokylinux.org
Subject: Re: [PATCH 1/3] siggen.py: print taskname when seeing mismatched hash in cache
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
X-List-Received-Date: Mon, 20 Dec 2010 14:51:14 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2010-12-16 at 17:00 +0800, Kevin Tian wrote:
> Signed-off-by: Kevin Tian <kevin.tian@intel.com>
> ---
>  bitbake/lib/bb/siggen.py |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)

Merged into master, thanks.

Richard


