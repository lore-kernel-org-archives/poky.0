Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12EEEE004E9
	for <poky@yoctoproject.org>; Wed, 12 Oct 2011 12:48:01 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p9CJm09S019338
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Wed, 12 Oct 2011 12:48:00 -0700 (PDT)
Received: from Macintosh-5.local (172.25.36.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Wed, 12 Oct 2011 12:48:00 -0700
Message-ID: <4E95EEEF.70702@windriver.com>
Date: Wed, 12 Oct 2011 14:47:59 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6;
	rv:7.0.1) Gecko/20110929 Thunderbird/7.0.1
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <4E729619.9@freyther.de> <4E875D29.8050008@freyther.de>
	<4E95ED78.9030603@freyther.de>
In-Reply-To: <4E95ED78.9030603@freyther.de>
Subject: Re: udev and pci devices
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
X-List-Received-Date: Wed, 12 Oct 2011 19:48:03 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

On 10/12/11 2:41 PM, Holger Hans Peter Freyther wrote:
> On 10/01/2011 08:34 PM, Holger Hans Peter Freyther wrote:
> 
>> ping? any interest in having module loading for PCI devices working?
> 
> no interest?

I think up to this point most of the udev support has focused on typical hotplug
items, specifically USB.

In my experience things like PCI devices are better setup statically based on
the system being created.  (Note, I'm not sure if we have an easy way to do that
at this point or not..)

--Mark

