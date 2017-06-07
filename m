Return-Path: <romain.bazile@ubiant.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9F7B1E00B3D; Wed,  7 Jun 2017 10:04:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [46.105.62.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 2267 seconds by postgrey-1.32 at yocto-www;
	Wed, 07 Jun 2017 10:04:37 PDT
Received: from 5.mo68.mail-out.ovh.net (5.mo68.mail-out.ovh.net
	[46.105.62.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29F1DE00B01
	for <poky@yoctoproject.org>; Wed,  7 Jun 2017 10:04:37 -0700 (PDT)
Received: from player789.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo68.mail-out.ovh.net (Postfix) with ESMTP id 501735A1DC
	for <poky@yoctoproject.org>; Wed,  7 Jun 2017 18:26:48 +0200 (CEST)
Received: from [192.168.0.136] (LMontsouris-657-1-193-111.w90-63.abo.wanadoo.fr
	[90.63.225.111]) (Authenticated sender: romain.bazile@ubiant.com)
	by player789.ha.ovh.net (Postfix) with ESMTPSA id 37CFC260091
	for <poky@yoctoproject.org>; Wed,  7 Jun 2017 18:26:48 +0200 (CEST)
To: poky@yoctoproject.org
From: Romain Bazile <romain.bazile@ubiant.com>
Organization: Ubiant
Message-ID: <ceb26d34-431a-a909-d2ea-7be7b652796f@ubiant.com>
Date: Wed, 7 Jun 2017 18:26:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
X-Ovh-Tracer-Id: 2974627554574687134
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 50
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeeljedriedugddutddvucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecufedttdenucgoteefjeefqddtgeculdehtddm
Subject: Check build machine available space against IMAGE_ROOTFS_SIZE poky/meta/classes/image.bbclass
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
X-List-Received-Date: Wed, 07 Jun 2017 17:04:39 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB-large
Content-Transfer-Encoding: 7bit

Hello,

Following a stupid mistake in a custom image recipe (where I set the 
IMAGE_ROOTFS_SIZE at 500GB instead of the intended 500MB), I was 
thinking that maybe it would be good to have some kind of warning if the 
ROOTFS requested size is very large, or at least larger than the build 
machine disk or available space on it.


I saw in the poky/meta/classes/image.bbclass file, line 544 ( 
https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/classes/image.bbclass#n544 
) that there is a check against a variable called IMAGE_ROOTFS_MAXSIZE. 
I couldn't find any reference anywhere in the documentation to this 
variable. I'm guessing it should be set in the image recipe. However 
this seems like a specific feature to make sure the rootfs is not bigger 
than what would be available on the target machine.


I thus have two questions:

- Is this variable deprecated? If so, if would be good to remove it from 
this file, no? If not, maybe we could add it to the documentation? I'm 
happy to do it.

- Can we, around this place in image.bbclass , add a check against 
either the size of the build machine disk, or the available space on it, 
and throw an error in case the requested rootfs size is bigger than either?

I'm not sure the change should be done in poky or in openembedded-core 
though, since this file is present in both places. Feel free to send me 
the other way if that is the case!

Cheers,
-- 
Romain Bazile
/Hardware R&D Engineer/
www.ubiant.com

