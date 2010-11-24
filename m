Return-Path: <Jingdong.Lu@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3BFEB4C811FB
	for <poky@yoctoproject.org>; Tue, 23 Nov 2010 23:21:39 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oAO5LbEY010822;
	Tue, 23 Nov 2010 21:21:37 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 23 Nov 2010 21:21:37 -0800
Received: from [128.224.162.176] ([128.224.162.176]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 23 Nov 2010 21:21:37 -0800
From: Lu Jingdong <jingdong.lu@windriver.com>
To: Saul Wold <saul.wold@intel.com>
In-Reply-To: <4CEAB2EB.5090505@intel.com>
References: <1289902905.1859.4.camel@eric-desktop> <4CEAB2EB.5090505@intel.com>
Date: Wed, 24 Nov 2010 13:23:09 +0800
Message-ID: <1290576189.1858.117.camel@eric-desktop>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-OriginalArrivalTime: 24 Nov 2010 05:21:37.0709 (UTC)
	FILETIME=[77D6F5D0:01CB8B97]
Cc: poky@yoctoproject.org
Subject: Re: [PULL]Removing "--with-wctype-functions" for python
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 24 Nov 2010 05:21:39 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2010-11-22 at 10:14 -0800, Saul Wold wrote:
> On 11/16/2010 02:21 AM, Lu Jingdong wrote:
> > Subject: [PATCH 3/3] Removing --with-wctype-functions for fixing
> > failures of python runtime test of LSB.
> >
> Jingdong,
> 
> Can you give us more information about which tests is failing and why?
> We are also looking into the background as to why wctype-functions is 
> enabled in Python for both OE and Poky.
> 
> Thanks
>     Sau!
> 
Sual,
Python with wctype-functions will cause the following failures of LSB
test.
Python Runtime Tests 
|-- test_codecs.py
|-- test_re.py
|-- test_unicode.py
Reference:
1) http://bugs.python.org/issue1609
2) README of python
	The following systems are still supported in Python 2.5, but
	support will be dropped in 2.6:
	- Systems using --with-wctype-functions
	- Win9x, WinME


-- 
Lu Jingdong
jingdong.lu@windriver.com
China, Wind River


