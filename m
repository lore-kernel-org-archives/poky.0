Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id DBEA24C800B7
	for <poky@yoctoproject.org>; Thu, 24 Mar 2011 21:23:17 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p2P2NHe4029528
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Thu, 24 Mar 2011 19:23:17 -0700 (PDT)
Received: from [128.224.163.157] (128.224.163.157) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Thu, 24 Mar 2011 19:23:16 -0700
Message-ID: <4D8BFC9A.2070809@windriver.com>
Date: Fri, 25 Mar 2011 10:23:22 +0800
From: Kang Kai <Kai.Kang@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Thunderbird/3.1.7
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <cover.1300785298.git.kai.kang@windriver.com>
In-Reply-To: <cover.1300785298.git.kai.kang@windriver.com>
X-Originating-IP: [128.224.163.157]
Subject: Re: [PATCH 0/1] xdg-utils: add xdg-utils to pass LSB 4.1 command check
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
X-List-Received-Date: Fri, 25 Mar 2011 02:23:18 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

Hi Richard,

I am so sorry that xdg-utils_1.0.2.bb is from OE, not OE-Core. So I only 
update the comments of this patch(using 'From OE' instead of 'From 
OE-Core'), and resend it.

Regards,
Kai

> From: Kang Kai<kai.kang@windriver.com>
>
> xdg-utils provides xdg-* scripts to pass the LSB 4.1 command check
> Merge from OE and add DESCRIPTION, PR and LIC_FILES_CHKSUM.
>
> (From OE-Core rev: 44985d56bc556786812a0a02d6219afd31a7381d)
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: kangkai/distro
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kangkai/distro
>
> Thanks,
>      Kang Kai<kai.kang@windriver.com>
> ---
>
>
> Kang Kai (1):
>    xdg-utils: add xdg-utils to pass the lsb test
>
>   meta/recipes-extended/xdg-utils/xdg-utils_1.0.2.bb |   26 ++++++++++++++++++++
>   1 files changed, 26 insertions(+), 0 deletions(-)
>   create mode 100644 meta/recipes-extended/xdg-utils/xdg-utils_1.0.2.bb
>


