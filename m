Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A55BE00ABE; Thu, 30 Jul 2015 05:28:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f170.google.com (mail-io0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EEA83E00A7E
	for <poky@yoctoproject.org>; Thu, 30 Jul 2015 05:27:59 -0700 (PDT)
Received: by ioii16 with SMTP id i16so51750662ioi.0
	for <poky@yoctoproject.org>; Thu, 30 Jul 2015 05:27:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-type:content-transfer-encoding;
	bh=oiheULB2EDtHWWA2ZKX+IE63Wi7W4Aec39aa01qxpXg=;
	b=0wMUVKekF9aQxDYsRYJ9cRGLD2UXDbb8dvhX8+3rPNkyeCqrlfHHzHSwROP2Mubj5Z
	uOQ1sBIfbcKv6OX/+/LKVUrn52dACijMpGye+pJkZ6gWH9c3VymUE3PEhQkQRkHrgtQe
	7F+ZO6Gwi4r7YjK3SjjgaQcbP7OZYq2Nmm2GDijZjfD2rqiHFpkNRDTDHo19CbY+NXRZ
	yoNIXEVzeU7IaXSKyrHTVMZsHM5JwvY4CRKelx1WaQ4SpQ+TYQ/wVdKEWSoX9NGZ3vKt
	Uczp85s4YK0qPqdNEr3KKhGRQtx0BxAWM7txuHxH3jxQj0CIaXRVg8k8wVkVTAcV4C8/
	iWcQ==
X-Received: by 10.107.136.152 with SMTP id s24mr9655097ioi.165.1438259278997; 
	Thu, 30 Jul 2015 05:27:58 -0700 (PDT)
Received: from [192.168.141.85] (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	h41sm530333ioi.12.2015.07.30.05.27.57 for <poky@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 30 Jul 2015 05:27:58 -0700 (PDT)
To: poky@yoctoproject.org
References: <1437829398-8585-1-git-send-email-twoerner@gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Message-ID: <55BA184A.8010207@gmail.com>
Date: Thu, 30 Jul 2015 08:27:54 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.1.0
MIME-Version: 1.0
In-Reply-To: <1437829398-8585-1-git-send-email-twoerner@gmail.com>
Subject: Re: [PATCH] SANITY_TESTED_DISTROS: fix lsb name for openSUSE 13.2
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
X-List-Received-Date: Thu, 30 Jul 2015 12:28:02 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

ping

On 07/25/15 09:03, Trevor Woerner wrote:
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>  meta-yocto/conf/distro/poky.conf | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
> index e3d3c78..80861f6 100644
> --- a/meta-yocto/conf/distro/poky.conf
> +++ b/meta-yocto/conf/distro/poky.conf
> @@ -80,7 +80,7 @@ SANITY_TESTED_DISTROS ?= " \
>              CentOS-7.* \n \
>              Debian-7.* \n \
>              Debian-8.* \n \
> -            openSUSE-13.2 \n \
> +            openSUSE-project-13.2 \n \
>              "
>  
>  # Default hash policy for distro


