Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 848324C81081
	for <poky@yoctoproject.org>; Thu, 23 Dec 2010 09:54:35 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBNFtuY5019150; Thu, 23 Dec 2010 15:55:57 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id e5nkFtn9kUTU; Thu, 23 Dec 2010 15:55:56 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBNFtnMV019146
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Thu, 23 Dec 2010 15:55:52 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Jiajun Xu <jiajun.xu@intel.com>
In-Reply-To: <cover.1293117709.git.jiajun.xu@intel.com>
References: <cover.1293117709.git.jiajun.xu@intel.com>
Date: Thu, 23 Dec 2010 15:54:17 +0000
Message-ID: <1293119657.1588.968.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] qemuimage-testlib: Add check for existence of image and correctness of ip address
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
X-List-Received-Date: Thu, 23 Dec 2010 15:54:36 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2010-12-23 at 23:26 +0800, Jiajun Xu wrote:
> Fixes [BUGID #612, #611]
> 
> We need to check the existence of to-be tested image in sanity test. Meanwhile, we should check the ip address to make sure it is valid.
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: jxu49/master
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=jxu49/master
> 
> Thanks,
>     Jiajun Xu <jiajun.xu@intel.com>

Merged into master, thanks!

Richard


