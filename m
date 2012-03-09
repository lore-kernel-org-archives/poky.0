Return-Path: <Kai.Kang@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D22EE0030B
	for <poky@yoctoproject.org>; Thu,  8 Mar 2012 17:47:29 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q291lRai026832
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 8 Mar 2012 17:47:27 -0800 (PST)
Received: from [128.224.162.241] (128.224.162.241) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Thu, 8 Mar 2012 17:47:27 -0800
Message-ID: <4F59612D.5070802@windriver.com>
Date: Fri, 9 Mar 2012 09:47:25 +0800
From: Kang Kai <Kai.Kang@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.2) Gecko/20120216 Thunderbird/10.0.2
MIME-Version: 1.0
To: <richard.purdie@linuxfoundation.org>
References: <cover.1331014918.git.kai.kang@windriver.com>
In-Reply-To: <cover.1331014918.git.kai.kang@windriver.com>
X-Originating-IP: [128.224.162.241]
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] V2: Yocoto 1561: clean up the workdir
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
X-List-Received-Date: Fri, 09 Mar 2012 01:47:29 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

Hi Richard,

Would you please comment this patch?

Thanks.
Kai

> Hi Richard,
>
> Forget to import shutil, just add it.
>
> V1:
> This time I write it as a seperated script.
> Would you like to help me review it? Thanks.
>
> Regards,
>
> The following changes since commit a8dc76ee69cfe1ffe846c07a510e3a562a5b1a7f:
>
>    base.bbclass: Fix PACKAGECONFIG handling when no flags are set (2012-03-05 13:04:11 -0800)
>
> are available in the git repository at:
>    git://git.pokylinux.org/poky-contrib kangkai/cleanup
>    http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kangkai/distro
>
> Kang Kai (1):
>    cleanup-workdir: add a script to clean up WORKDIR
>
>   scripts/cleanup-workdir |  147 +++++++++++++++++++++++++++++++++++++++++++++++
>   1 files changed, 147 insertions(+), 0 deletions(-)
>   create mode 100755 scripts/cleanup-workdir
>


