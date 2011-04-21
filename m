Return-Path: <gerard@de-haardt.com>
Received: from cpsmtpb-ews03.kpnxchange.com (cpsmtpb-ews03.kpnxchange.com
	[213.75.39.6])
	by mx1.pokylinux.org (Postfix) with ESMTP id 85C644C80A73
	for <poky@yoctoproject.org>; Thu, 21 Apr 2011 08:07:45 -0500 (CDT)
Received: from cpbrm-ews22.kpnxchange.com ([10.94.84.153]) by
	cpsmtpb-ews03.kpnxchange.com with Microsoft SMTPSVC(6.0.3790.4675); 
	Thu, 21 Apr 2011 15:07:44 +0200
Received: from CPSMTPM-CMT104.kpnxchange.com ([195.121.3.20]) by
	cpbrm-ews22.kpnxchange.com with Microsoft SMTPSVC(6.0.3790.4675); 
	Thu, 21 Apr 2011 15:07:44 +0200
Received: from mail.de-haardt.com ([86.81.67.223]) by
	CPSMTPM-CMT104.kpnxchange.com with Microsoft
	SMTPSVC(7.0.6002.18264); Thu, 21 Apr 2011 15:07:02 +0200
Received: from [192.168.1.160] ([192.168.1.160])
	(authenticated user gerard@de-haardt.com) by mail.de-haardt.com
	(using TLSv1/SSLv3 with cipher AES256-SHA (256 bits));
	Thu, 21 Apr 2011 15:06:59 +0200
Message-ID: <4DB02BF4.2040300@de-haardt.com>
Date: Thu, 21 Apr 2011 15:07:00 +0200
From: Gerard van den Bosch <gerard@de-haardt.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <749B9D3DBF0F054390025D9EAFF47F224A66A18A@shsmsx501.ccr.corp.intel.com>
In-Reply-To: <749B9D3DBF0F054390025D9EAFF47F224A66A18A@shsmsx501.ccr.corp.intel.com>
X-OriginalArrivalTime: 21 Apr 2011 13:07:02.0766 (UTC)
	FILETIME=[019B80E0:01CC0025]
X-RcptDomain: yoctoproject.org
Subject: Re: [RFC] Request for your comment on package report system
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
X-List-Received-Date: Thu, 21 Apr 2011 13:07:46 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/21/2011 06:18 AM, Mei, Lei wrote:
> Hi all,
> 	This is a description for package report system, please help to review and give your comments on this system. Thanks a lot!
>
> The system link is below:
> http://packages.yoctoproject.org/
>
> Yocto package report system is a tool/website which could help people to check the latest package information and track the latest/history version information. Below is description of its functionalities.
>
>
> --
>
>
> Now we want to do some enhancement for this system in 1.0.1 plan, so do you have any comment or thought?
> Any feedback is welcome :)
>
>
> ---
> Mei, Lei
> Email: lei.mei@intel.com
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
Looks very nice.
Maybe it would be useful to extend the package information with a link to the recipe in the git repository and "if existing" a list of the patches that the recipe includes.

Regards,
Gerard



