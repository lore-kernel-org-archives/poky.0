Return-Path: <star@gmx.li>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8C651E00DED; Mon,  5 Feb 2018 05:10:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (star[at]gmx.li)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.227.17.22 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 305 seconds by postgrey-1.32 at yocto-www;
	Mon, 05 Feb 2018 05:10:11 PST
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1538AE005BB
	for <poky@yoctoproject.org>; Mon,  5 Feb 2018 05:10:11 -0800 (PST)
Received: from [62.225.157.196] ([62.225.157.196]) by
	3c-app-gmx-bs39.server.lan (via HTTP); Mon, 5 Feb 2018 14:05:02 +0100
MIME-Version: 1.0
Message-ID: <trinity-92e2db9a-aa15-48ad-b7d5-80b10abb70b2-1517835902286@3c-app-gmx-bs39>
From: star@gmx.li
To: "Anuj Mittal" <anuj.mittal@intel.com>
Date: Mon, 5 Feb 2018 14:05:02 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <84f1733e-a5cd-b9d6-c75d-cdb8faf38815@intel.com>
References: <trinity-20f872c2-19c2-4de6-b977-5b88adae1eb3-1517824511514@3c-app-gmx-bs39>
	<84f1733e-a5cd-b9d6-c75d-cdb8faf38815@intel.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:wG18rt3Ry/9OpPrnIoQd2N42jDcG6/vSgv6zYFdAqBf
	ITQJou0iRX8w73WMJOFRngu+42t9MVKwmywjZQUoqWw2kFAOqp
	NUy9sTxKpaNR2Het8co6/iQSGcvg7fCySjgvsUeQtgDaopMhHO
	VAsLCQR0Bi+TnMRLaa+cIQps4kol+inYHq0jbitLwfzyuWyME9
	df99ZMCI3/poIEIx2miS+FQxFI83zgAoUHGQvQPv6pFQAmBWJy
	ZsGxnt6yEmt3hxBwsXRv1vcGb0YAK1+j0v86HEsBROENd/sWSv XOoRxc=
X-UI-Out-Filterresults: notjunk:1;V01:K0:238OCKzkalc=:LEiLkbMGtd1S+fiSJwmMVK
	3s8RLlcgdgWUu/JJwkK2VyUBm0IBH8R1TnAK6KRkMpHeVvFL/E9TL0kODu6YyQjOpZ9py23UT
	q0jTcgOCjtHfRTnmQ+MqtLJ0QfDygCbickTy7vdvymuOwlaVmue5L2kyiSdZHWuLQ6x5mBpPn
	j+wHluAXnbgz9a6nwcQ1dyy2uJ7oQ/qC5spJY8oh4bMthClDTsVKf00ATRLClPdVW4TfJ7U1Q
	xOffOJmHQF8Rc4cZbna4AIPHyv7qdyrtbykW/urn5F8JNXe5o36IQOxUwohLhwgs138fxDCZl
	mO8y0Xc39KJzbi92HsZeVvTXGX6eVRs1oDjUHnfG5drxlaSbJU7fLPThYTOGOz3NjEuyAulrr
	aud3ZD2T7EbM5FLlblZl7ySw3IMXSQsRFh8T57KM8TKHk2OWskwtMa3PNVb3kQr0c47E0mjrI
	hrMumzlhq2ca0nb+CmXerOflYQFiLThyupv2pGndxjRIA+iM8SIZ
Cc: poky@yoctoproject.org
Subject: Re: libs / so without a link to xxx.so.1
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
X-List-Received-Date: Mon, 05 Feb 2018 13:10:13 -0000
Content-Type: text/plain; charset=UTF-8



> Gesendet: Montag, 05. Februar 2018 um 11:21 Uhr
> Von: "Anuj Mittal" <anuj.mittal@intel.com>
> An: poky@yoctoproject.org
> Betreff: Re: [poky] libs / so without a link to xxx.so.1
>
Thanks Anuj,  but I don't think so. The libs itself are not in the dev package, but in the libcurlpp1
And I include them like this:

IMAGE_INSTALL = "packagegroup-core-boot ${CORE_IMAGE_EXTRA_INSTALL} ..... curl libcurlpp"

TOOLCHAIN_TARGET_TASK_append = " zlib-dev curl-dev libcurlpp-dev net-snmp-dev libidn-dev"

And I use the rootfs that is created with -c populate_sdk.
So it is a bug in the package? Or am I doing wrong?


> On 02/05/2018 05:55 PM, Arno Steffens wrote:
> > Using in my project libcurlpp. It is created with yocto (2.3.3), but in my filesystem I just see:
> > 
> > "/usr/lib/libcurlpp.so.1" which is a link to libcurlpp.so.1.0.0
> > 
> > What I miss is "libvcurlpp.so" (without version number), as my project includes  "-lcurlpp".
> 
> You're probably missing the -dev package in your image.
> 
> Thanks,
> Anuj
> 
> > 
> > My question: is there a reason for that? Is this a bug in the scripts or did I handle it wrong?
> > 
> > I can do "-l:libcurlpp.so.1" but this looks only like a second best solution to me.
> > Thanks and best regards
> > Arno
> > 
> 
> -- 
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
> 

