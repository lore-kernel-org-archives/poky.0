Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 097054C800AC
	for <poky@yoctoproject.org>; Tue, 15 Feb 2011 20:02:55 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p1G22tcT027426
	for <poky@yoctoproject.org>; Tue, 15 Feb 2011 18:02:55 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 15 Feb 2011 18:02:55 -0800
Received: from Macintosh-5.local ([172.25.36.226]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 15 Feb 2011 18:02:55 -0800
Message-ID: <4D5B304E.40603@windriver.com>
Date: Tue, 15 Feb 2011 20:02:54 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.13) Gecko/20101207 Thunderbird/3.1.7
MIME-Version: 1.0
To: poky <poky@yoctoproject.org>
References: <4D5B2FD4.7060409@windriver.com>
In-Reply-To: <4D5B2FD4.7060409@windriver.com>
X-OriginalArrivalTime: 16 Feb 2011 02:02:55.0201 (UTC)
	FILETIME=[A02B9D10:01CBCD7D]
Subject: Re: A few issues with sstate
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
X-List-Received-Date: Wed, 16 Feb 2011 02:02:56 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 2/15/11 8:00 PM, Mark Hatle wrote:
> I'm working on reproducing a problem with the emenlow and RPM configuration, but
> I noticed a few things.
> 
> When using sstate as the package base, I got an error from copytree (sorry I
> lost the logs), but it didn't stop the build -- and I didn't see the item that
> got the copytree error be built from sources.
> 
> The second though seems to be more important.  The packages that are installed
> into the deploy directories other then "emenlow" and "core2" did not get
> repopulated.  Specifically this affects the 'all' packages.

Nevermind on the second one.. I found the code and it was a typo on my part.

--Mark

