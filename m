Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00015E004F1; Mon,  4 Aug 2014 09:39:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58CF8E0030B
	for <poky@yoctoproject.org>; Mon,  4 Aug 2014 09:39:40 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu4) with ESMTP id
	s74GdZaw002009; Mon, 4 Aug 2014 17:39:35 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id wf8PjsH71cK6; Mon,  4 Aug 2014 17:39:34 +0100 (BST)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	s74GdVRx001843
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NOT);
	Mon, 4 Aug 2014 17:39:33 +0100
Message-ID: <1407170371.6981.68.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Paul Gortmaker <paul.gortmaker@windriver.com>
Date: Mon, 04 Aug 2014 17:39:31 +0100
In-Reply-To: <1406834366-48632-1-git-send-email-paul.gortmaker@windriver.com>
References: <1406834366-48632-1-git-send-email-paul.gortmaker@windriver.com>
X-Mailer: Evolution 3.8.4-0ubuntu1 
Mime-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] bitbake.conf: make ROOT_HOME default match the rest of the world
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 04 Aug 2014 16:39:47 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2014-07-31 at 15:19 -0400, Paul Gortmaker wrote:
> All distros that I've ever used have /root as the home dir for
> UID=0 (root) and even the Filesystem Hierarchy Standard lists
> it as /root [1].  So if you've never come across the /home/root
> thing before, it can violate the principle of least surprise.
> 
> In addition, using /home/root does suck if /home happens to be
> on NFS, and you are trying to login as root to rescue something.
> 
> Change the default to be "/root" so we are consistent with the
> rest of the world and the standards.  If someone wants /home/root
> to be back compatible with earlier oe-core/yocto builds, they
> can simply set ROOT_HOME themselves in their local.conf file.
> 
> [1] http://www.pathname.com/fhs/pub/fhs-2.3.html#ROOTHOMEDIRECTORYFORTHEROOTUSER
> 
> Signed-off-by: Paul Gortmaker <paul.gortmaker@windriver.com>

This is a key decision for OE so it needs to go to the OE-Core list.

Cheers,

Richard


