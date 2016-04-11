Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 99ECFE00CB9; Sun, 10 Apr 2016 18:52:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 382F0E00522
	for <poky@yoctoproject.org>; Sun, 10 Apr 2016 18:52:22 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id u3B1qMHh018407
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Sun, 10 Apr 2016 18:52:22 -0700 (PDT)
Received: from server.local (147.11.118.141) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.248.2;
	Sun, 10 Apr 2016 18:52:21 -0700
To: Robert Yang <liezhi.yang@windriver.com>, <poky@yoctoproject.org>
References: <cover.1460297985.git.liezhi.yang@windriver.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <570B0354.7040201@windriver.com>
Date: Sun, 10 Apr 2016 21:52:20 -0400
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:38.0)
	Gecko/20100101 Thunderbird/38.7.2
MIME-Version: 1.0
In-Reply-To: <cover.1460297985.git.liezhi.yang@windriver.com>
Subject: Re: [PATCH 0/1] poky-tiny.conf: set PREFERRED_VERSION_linux-yocto-tiny to 4.4
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
X-List-Received-Date: Mon, 11 Apr 2016 01:52:24 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-04-10 10:22 AM, Robert Yang wrote:
> The following changes since commit 778121ab844af623a215430ba579a5fb3947928b:
>
>    local.conf.sample: Make it possible to override EXTRA_IMAGE_FEATURES (2016-04-09 23:00:46 +0100)
>
> are available in the git repository at:
>
>    git://git.pokylinux.org/poky-contrib rbt/kernel
>    http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=rbt/kernel
>
> Robert Yang (1):
>    poky-tiny.conf: set PREFERRED_VERSION_linux-yocto-tiny to 4.4
>

Can you provide some bootlogs ? Size information, etc ? When we jump
this between kernel versions, we need to log some sort of information
about functionality and the size of the image.

I've been carrying this support forward, but in 4.4, we did change
some of the kernel configs, so it would be good to see what sort of
size delta we are talking about.

Bruce

>   meta-poky/conf/distro/poky-tiny.conf | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>


