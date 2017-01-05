Return-Path: <lars@visionweeding.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BFFCEE00890; Thu,  5 Jan 2017 04:06:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [91.198.169.199 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Thu, 05 Jan 2017 04:06:18 PST
Received: from mailrelay5.public.one.com (mailrelay5.public.one.com
	[91.198.169.199])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30209E007D1
	for <poky@yoctoproject.org>; Thu,  5 Jan 2017 04:06:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=visionweeding.com; s=20140924;
	h=from:subject:date:message-id:to:mime-version:content-type:
	content-transfer-encoding;
	bh=epoREkSe6IoT49gomkMwQlpOpaDI0DIf6XLoL2/g0SY=;
	b=ErTVaIcZdy9rY3PMFK0O76PKwdflLKHFWPrFGyePhRguag2Dqm5jjuhgSNORfw/yLYJWsb/U6E3V+
	c0Om50lGDPsBJMPoeHzZqXTXT3lhj5R2hcuuPdze+gcmjAsDLtrJRB9N6RFPYXBbU+/qUfPZRIdPTP
	SQTdp+Z3Vxqpx6E4=
X-HalOne-Cookie: 4c233eb01eeab556081ee410162ed757332160c3
X-HalOne-ID: 36eb737f-d33f-11e6-b939-b82a72d03b9b
Received: from [192.168.1.194] (unknown [185.81.39.126])
	by smtpfilter2.public.one.com (Halon) with ESMTPSA
	id 36eb737f-d33f-11e6-b939-b82a72d03b9b;
	Thu, 05 Jan 2017 12:05:14 +0000 (UTC)
To: poky@yoctoproject.org
From: Lars Larsen <lars@visionweeding.com>
Message-ID: <586E367A.8070004@visionweeding.com>
Date: Thu, 5 Jan 2017 13:05:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.8.0
MIME-Version: 1.0
Subject: How to proceed ? I Found an error in pseudo_native that has been corrected in a latter commit
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
X-List-Received-Date: Thu, 05 Jan 2017 12:06:20 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hello world

We are using Morty branch of Yocto.
I have been compiling a lot on a 64 bit host (Ubuntu -14-04), for a 32 
bit  x86 target , it is working fine.

Now an other team member should build it, he is using an 32 bit host 
(Ubuntu-12-04)
On his machine for some reason,  I don't know why, bitbake decides that 
it needs to build pseudo_native -  and that build fails.

the errors are very basic syntax errors in some python scripts.
and after investigating the repositories for pseudo_native, I see that 
these errors has been fixed in the pseudo_native repository. But in a 
latter commit than the one Morty pulls in.

How do i proceed ?
I can fix the errors locally and make a .bbappend with a patch that 
correct these specific errors, or change the SRCREV.
I'm unsure about  the correct procedure to follow ?
Can anyone guide me gently ??

thanks in advance

-Lars

-- 

Best Regards
Lars Larsen

F.Poulsen Engineering Aps
Tjørnager 16
4330 Hvalsø
Denmark
+45 29802784
www.visionweeding.com


