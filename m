Return-Path: <clay@montgomery1.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1484FE00510; Sat, 18 Jul 2015 13:42:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [67.222.39.168 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 400 seconds by postgrey-1.32 at yocto-www;
	Sat, 18 Jul 2015 13:42:19 PDT
Received: from gproxy6-pub.mail.unifiedlayer.com
	(gproxy6-pub.mail.unifiedlayer.com [67.222.39.168])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id C219BE0047F
	for <poky@yoctoproject.org>; Sat, 18 Jul 2015 13:42:19 -0700 (PDT)
Received: (qmail 17954 invoked by uid 0); 18 Jul 2015 20:35:39 -0000
Received: from unknown (HELO CMOut01) (10.0.90.82)
	by gproxy6.mail.unifiedlayer.com with SMTP; 18 Jul 2015 20:35:39 -0000
Received: from box858.bluehost.com ([69.195.124.58]) by CMOut01 with 
	id twbV1q00N1Fiqph01wbYft; Sat, 18 Jul 2015 14:35:38 -0600
X-Authority-Analysis: v=2.1 cv=NJxGpSKg c=1 sm=1 tr=0
	a=6215HlyIVfFolxfkGyTlSg==:117 a=6215HlyIVfFolxfkGyTlSg==:17
	a=cNaOj0WVAAAA:8
	a=f5113yIGAAAA:8 a=cwQF-0P1AAAA:8 a=xDn4ee4CKTYA:10 a=IkcTkHD0fZMA:10
	a=DpUQn3bY8hUA:10 a=F7vrFIpsXqIA:10 a=zOBTXjUuO1YA:10 a=Hn_loQy4AAAA:8
	a=1pUKOdMqEjnvlhQSHksA:9 a=QEXdDO2ut3YA:10
Received: from [70.119.214.20] (port=52950 helo=[192.168.0.18])
	by box858.bluehost.com with esmtpsa (TLSv1.2:DHE-RSA-AES128-SHA:128)
	(Exim 4.84) (envelope-from <clay@montgomery1.com>)
	id 1ZGYpW-0001ii-0T
	for poky@yoctoproject.org; Sat, 18 Jul 2015 14:35:30 -0600
To: poky@yoctoproject.org
From: "Clay D. Montgomery" <clay@montgomery1.com>
Message-ID: <55AAB89C.20601@montgomery1.com>
Date: Sat, 18 Jul 2015 15:35:40 -0500
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
	Thunderbird/38.0.1
MIME-Version: 1.0
X-Identified-User: {1231:box858.bluehost.com:montgor0:montgomery1.com}
	{sentby:smtp auth 70.119.214.20 authed with
	clay@montgomery1.com}
Subject: What happened to update-rc.d?
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
X-List-Received-Date: Sat, 18 Jul 2015 20:42:23 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

     I just updated to the Dizzy release 1.7.2 (from Daisy 1.6.3) and I 
am surprised to find that update-rc.d is missing from the file system. 
Can someone please tell me if it was removed intentionally and if so, 
what am I supposed to use instead?

    Perhaps I caused this problem by making changes to my kernel 
configuration with menuconfig, but I don't think so.

I build Poky for the Freescale Wandboard-quad platform detailed here:  
http://freescale.github.io/doc/release-notes/1.7/

Thanks, Clay Montgomery

