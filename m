Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4F43AE00C0F; Wed, 13 Dec 2017 06:09:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB65BE008FB
	for <poky@yoctoproject.org>; Wed, 13 Dec 2017 06:09:34 -0800 (PST)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-3) with ESMTPSA id
	vBDE9TGg007914
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NOT); Wed, 13 Dec 2017 14:09:31 GMT
Message-ID: <1513174169.16507.4.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Arno Steffens <star@gmx.li>, poky@yoctoproject.org
Date: Wed, 13 Dec 2017 14:09:29 +0000
In-Reply-To: <trinity-e799e7c2-e406-4e33-bec6-cf17f0ed29a4-1513059940812@3c-app-gmx-bs42>
References: <trinity-e799e7c2-e406-4e33-bec6-cf17f0ed29a4-1513059940812@3c-app-gmx-bs42>
X-Mailer: Evolution 3.18.5.2-0ubuntu3.2 
Mime-Version: 1.0
X-Virus-Scanned: clamav-milter 0.99.2 at dan
X-Virus-Status: Clean
Subject: Re: libsnmp or adding a simple ipk to my image
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
X-List-Received-Date: Wed, 13 Dec 2017 14:09:36 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2017-12-12 at 07:25 +0100, Arno Steffens wrote:
> Want to include libnetsnmp to my filesystem. By find -name *snmp I
> found the net-snmp_5.7.3.bb is doing the job, so  I added that to my
> image by IMAGE_INSTALL.
> 
> Checking the image - it contains more than I need. In
> tmp/deploy/ipk/xxx/ I cound found the interesting ipk-packet, the
> libnetsnmp30_5.7.3-r0_cortexa9hf-neon.ipk.
> 
> So my first question:
> How can I just include this in my image? Adding  "libnetsnmp30" or
> "libnetsnmp" doesn't work. This rules probably work just for *.bb
> packages. But what to do to add a simple *.ipk file? 

You need to use the name of the package in the recipe, not the "debian"
name the debian renaming code came up with.

Looking at the recipe it does:

PACKAGES += "${PN}-libs ${PN}-mibs ${PN}-server ${PN}-client ${PN}-
server-snmpd ${PN}-server-snmptrapd"

so net-snmp-libs should work in IMAGE_INSTALL.


> Even more advanced would be not to install all libs from that ipkg
> package. 
> How can I control that?

You'd need to split up the packaging into more granular packages.

Cheers,

Richard

