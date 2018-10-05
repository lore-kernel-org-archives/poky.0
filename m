Return-Path: <Randy.MacLeod@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0E168E00A0A; Fri,  5 Oct 2018 13:50:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96BE3E0053F
	for <poky@yoctoproject.org>; Fri,  5 Oct 2018 13:50:31 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w95KnM5p008187
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 5 Oct 2018 13:49:33 -0700
Received: from [172.25.44.4] (172.25.44.4) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.408.0;
	Fri, 5 Oct 2018 13:49:08 -0700
To: Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>, Armin Kuster
	<akuster808@gmail.com>, <Alex.Gonzalez@digi.com>
References: <20181005120055.GC7228@agonzal-linux>
From: Randy MacLeod <randy.macleod@windriver.com>
Message-ID: <982a032d-362e-cc1a-c84d-2496a0a21171@windriver.com>
Date: Fri, 5 Oct 2018 16:49:07 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20181005120055.GC7228@agonzal-linux>
X-Originating-IP: [172.25.44.4]
Cc: poky@yoctoproject.org
Subject: Re: [rocko] Backport request for meta/recipes-kernel/cryptodev
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 05 Oct 2018 20:50:32 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

Hi Alex,

Armin maintains the rocko branch so best to CC him.

Also, I've moved this to the oe-core list where
we handle oe-core commits. Poky is composed of
several layers to make things easier to build
but we use the other email lists for development.

Armin,

This is a simple patch and I was able
to cherry-pick the corresponding oe-core commit:

   270a1e9bcf26a43f5cbdc5b901c4c6f79495311d

back to rocko-next, and then run:
   bitbake -c patch linux-yocto.
The change is a no-op for the standard rocko kernel so that's
all I did to test (actually, I'm starting a linux-yocto build
but I'd be shocked if it failed).

Will you add this to your rocko-next queue or
would you like Alex to re-submit following the guidelines:
    http://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded


../Randy


On 10/05/2018 08:00 AM, Gonzalez, Alex wrote:
> Hi,
> 
> Could you please backport commit c568e89c3d316e5c10369c6ff48e871828bad783 to
> rocko?
> 
> https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=c568e89c3d316e5c10369c6ff48e871828bad783
> 
> This will allow to build cryptodev with kernels >= 4.17.
> 
> Thanks,
> Alex
> 


-- 
# Randy MacLeod
# Wind River Linux

