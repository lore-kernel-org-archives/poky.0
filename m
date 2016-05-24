Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09A13E008BA; Mon, 23 May 2016 19:22:12 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2AE6E00873
	for <poky@yoctoproject.org>; Mon, 23 May 2016 19:22:07 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id u4O2M6qj017445
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Mon, 23 May 2016 19:22:06 -0700 (PDT)
Received: from [128.224.162.240] (128.224.162.240) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.248.2;
	Mon, 23 May 2016 19:22:05 -0700
To: <poky@yoctoproject.org>
References: <cover.1461574142.git.liezhi.yang@windriver.com>
From: Robert Yang <liezhi.yang@windriver.com>
Message-ID: <5743BACC.3020203@windriver.com>
Date: Tue, 24 May 2016 10:22:04 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.8.0
MIME-Version: 1.0
In-Reply-To: <cover.1461574142.git.liezhi.yang@windriver.com>
Subject: Re: [PATCH 0/1] bblayers.conf.sample: update BBPATH to use BBPATH_EXTRA
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
X-List-Received-Date: Tue, 24 May 2016 02:22:12 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit


ping.

// Robert

On 04/25/2016 04:50 PM, Robert Yang wrote:
> The following changes since commit a9b503b268e94d311f892fa00c5d6bd9ffdb228e:
>
>    license.bbclass: make sure that image manifest dir exists (2016-04-22 16:28:57 +0100)
>
> are available in the git repository at:
>
>    git://git.pokylinux.org/poky-contrib rbt/bbpath
>    http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=rbt/bbpath
>
> Robert Yang (1):
>    bblayers.conf.sample: update BBPATH to use BBPATH_EXTRA
>
>   meta-poky/conf/bblayers.conf.sample | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
>

