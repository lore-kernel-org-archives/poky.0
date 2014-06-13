Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E1D5BE00AFD; Fri, 13 Jun 2014 07:56:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=none autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99412E0073D
	for <poky@yoctoproject.org>; Fri, 13 Jun 2014 07:55:45 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu4) with ESMTP id
	s5DEtUTX017339; Fri, 13 Jun 2014 15:55:30 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id IsZMQZMLm09u; Fri, 13 Jun 2014 15:55:30 +0100 (BST)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	s5DEtOVO017313
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NOT);
	Fri, 13 Jun 2014 15:55:26 +0100
Message-ID: <1402671319.12440.491.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Date: Fri, 13 Jun 2014 15:55:19 +0100
In-Reply-To: <539AFCD9.70307@windriver.com>
References: <1402634363-31407-1-git-send-email-kexin.hao@windriver.com>
	<539AFCD9.70307@windriver.com>
X-Mailer: Evolution 3.8.4-0ubuntu1 
Mime-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/2] meta-yocto-bsp: enable the jffs2 for mpc8315e-rdb board
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
X-List-Received-Date: Fri, 13 Jun 2014 14:56:01 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2014-06-13 at 09:30 -0400, Bruce Ashfield wrote:
> On 14-06-13 12:39 AM, Kevin Hao wrote:
> > Hi,
> >
> > This tries to enable the jffs2 support for the mpc8315e-rdb board. I have
> > tested the jffs2 with the following steps and it worked perfectly.
> 
> The other point to add on this review/patch series, is that for it
> to fully work out of the box, it needs a merge of some kernel patches
> that Kevin sent to linux-yocto a couple of days ago.
> 
> To make sure that things are coordinated, I can queue this series and
> send it along with my kernel SRCREV updates to include those patches.
> 
> Obviously, I won't queue it until Kevin udpates README.hardware and
> sends a quick v2 of the changes.
> 
> Does that sound acceptable to everyone ?

Sounds good to me.

Cheers,

Richard


