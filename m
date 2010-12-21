Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1E1104C80039
	for <poky@pokylinux.org>; Tue, 21 Dec 2010 02:49:33 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBL8op8E032213; Tue, 21 Dec 2010 08:50:52 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id gDs-SrRJBI9Y; Tue, 21 Dec 2010 08:50:51 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBL8okL4032200
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Tue, 21 Dec 2010 08:50:49 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Kevin Tian <kevin.tian@intel.com>
In-Reply-To: <0d30dc$kh8l3j@orsmga001.jf.intel.com>
References: <0d30dc$kh8l3j@orsmga001.jf.intel.com>
Date: Tue, 21 Dec 2010 08:49:01 +0000
Message-ID: <1292921341.25087.5749.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@pokylinux.org
Subject: Re: [PATCH 1/1] runqueue.py: set BB_TASKHASH approriately after moving to fork()
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
X-List-Received-Date: Tue, 21 Dec 2010 08:49:34 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2010-12-21 at 15:02 +0800, Kevin Tian wrote:
> In previous exec() model, cooker is re-initialized from scratch with environmental
> variable exported accordingly. Now in fork() model, environmental variables are
> not exported again, and thus original method to export BB_TASKHASH doesn't apply
> now which breaks all sstate packages. Now we can set data variable directly instead.
> 
> Signed-off-by: Kevin Tian <kevin.tian@intel.com>
> ---
>  bitbake/lib/bb/runqueue.py |    3 ++-
>  1 files changed, 2 insertions(+), 1 deletions(-)

Merged into master, thanks.

Richard


