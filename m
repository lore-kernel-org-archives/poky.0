Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 33F834C8006D;
	Tue, 15 Feb 2011 13:26:10 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1FJQ4gT029283;
	Tue, 15 Feb 2011 19:26:04 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 29007-05; Tue, 15 Feb 2011 19:26:00 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1FJPwsU029277
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 15 Feb 2011 19:25:58 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
In-Reply-To: <cover.1297796707.git.bruce.ashfield@windriver.com>
References: <cover.1297796707.git.bruce.ashfield@windriver.com>
Date: Tue, 15 Feb 2011 19:25:55 +0000
Message-ID: <1297797955.4945.368.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: Re: [PATCH 0/1] linux-yocto: add jasperforest BSP and fix lttng NMI bug
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
X-List-Received-Date: Tue, 15 Feb 2011 19:26:10 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-02-15 at 14:07 -0500, Bruce Ashfield wrote:
> Richard/Saul,
> 
> During the introduction of the jasperforest BSP, a lttng
> issues was picked up with NMI tracing. The upstream (and
> our solution) is to revert that commit.
> 
> This change updates the meta repo for jasperforest and pushes
> out the nmi revert to all BSPs.
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: zedd/jasperforest
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/jasperforest
> 
> Thanks,
>     Bruce Ashfield <bruce.ashfield@windriver.com>

Merged to master, thanks.

Richard


