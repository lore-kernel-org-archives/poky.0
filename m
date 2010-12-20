Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9714D4C80050
	for <poky@yoctoproject.org>; Mon, 20 Dec 2010 08:55:02 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBKEuL0m027187; Mon, 20 Dec 2010 14:56:21 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id oKr7r1kll07S; Mon, 20 Dec 2010 14:56:21 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBKEuHGe027174
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Mon, 20 Dec 2010 14:56:19 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1292523172.git.paul.eggleton@linux.intel.com>
References: <cover.1292523172.git.paul.eggleton@linux.intel.com>
Date: Mon, 20 Dec 2010 14:54:34 +0000
Message-ID: <1292856874.25087.4494.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/3] sanity checking improvements
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
X-List-Received-Date: Mon, 20 Dec 2010 14:55:03 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2010-12-16 at 18:12 +0000, Paul Eggleton wrote:
> These changes fix indenting in sanity.bbclass, provide a fix for bug #562
> and introduce the (previously posted) check for filename length on top.
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: paule/sanity-checks
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=paule/sanity-checks
> 
> Thanks,
>     Paul Eggleton <paul.eggleton@linux.intel.com>

Merged into master, thanks!

Richard


