Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1FA934C80052
	for <poky@yoctoproject.org>; Sat, 20 Nov 2010 07:51:48 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oAKDpihR026983;
	Sat, 20 Nov 2010 05:51:44 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Sat, 20 Nov 2010 05:51:44 -0800
Received: from Macintosh-5.local ([172.25.36.227]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Sat, 20 Nov 2010 05:51:44 -0800
Message-ID: <4CE7D26F.80204@windriver.com>
Date: Sat, 20 Nov 2010 07:51:43 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.12) Gecko/20101027 Thunderbird/3.1.6
MIME-Version: 1.0
To: Gary Thomas <gary@mlbassoc.com>
References: <4CE72325.1050806@windriver.com> <4CE79844.6020308@mlbassoc.com>
In-Reply-To: <4CE79844.6020308@mlbassoc.com>
X-OriginalArrivalTime: 20 Nov 2010 13:51:44.0744 (UTC)
	FILETIME=[1166DE80:01CB88BA]
Cc: poky@yoctoproject.org
Subject: Re: Sourcing of poky-init-build-env from a non-bash shell...
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
X-List-Received-Date: Sat, 20 Nov 2010 13:51:48 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 11/20/10 3:43 AM, Gary Thomas wrote:
> On 11/19/2010 06:23 PM, Mark Hatle wrote:
>> In recent days I've had a few people complain to me that the only way they can
>> use Poky is to switch from their preferred shell to bash.  So I took it upon
>> myself to attempt to address this issue.
>>
>> In poky-contrib, commit 479e626839e3c9beb789ec2919d5438930eb04cf, head of
>> mhatle/initenv branch, is a patch that will allow the script to be sourced in
>> any reasonable shell.
> 
> Where can I find this?  It doesn't seem to be in the main Poky tree,
> so I assume poky-contrib?

See above, poky-contrib, mhatle/initenv branch.

--Mark

> Thanks
> 


