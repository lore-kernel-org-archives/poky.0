Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7B245E00DA7; Tue, 16 Aug 2016 20:16:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 397B3E00D04
	for <poky@yoctoproject.org>; Tue, 16 Aug 2016 20:16:28 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id u7H3GRdL005978
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Tue, 16 Aug 2016 20:16:27 -0700 (PDT)
Received: from [128.224.162.240] (128.224.162.240) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.248.2;
	Tue, 16 Aug 2016 20:16:27 -0700
To: <poky@yoctoproject.org>
References: <cover.1471403463.git.liezhi.yang@windriver.com>
From: Robert Yang <liezhi.yang@windriver.com>
Message-ID: <cfa70fc2-79e0-056b-7f80-cb464818eeb5@windriver.com>
Date: Wed, 17 Aug 2016 11:16:25 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <cover.1471403463.git.liezhi.yang@windriver.com>
Subject: Re: [PATCH 0/1 V2] maintainers.inc: update maintainers for Dengke
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
X-List-Received-Date: Wed, 17 Aug 2016 03:16:29 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit



On 08/17/2016 11:12 AM, Robert Yang wrote:
> * V2:
>   - Update with Ross' comments.
>
> // Robert
>
> The following changes since commit 6b66e9317f4ec3a69f98f29836aafa35b52f3fc7:
>
>   Allow for simultaneous do_rootfs tasks with rpm (2016-08-12 15:25:22 +0100)
>
> are available in the git repository at:
>
>   git://git.pokylinux.org/poky-contrib newm3
>   http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=newm3

Sorry, the repo should be:

git://git.pokylinux.org/poky-contrib rbt/maintainers
http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=rbt/maintainers

// Robert

>
> Robert Yang (1):
>   maintainers.inc: update maintainers for Dengke
>
>  meta-poky/conf/distro/include/maintainers.inc | 92 +++++++++++++--------------
>  1 file changed, 46 insertions(+), 46 deletions(-)
>

