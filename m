Return-Path: <saul.wold@intel.com>
Received: from azsmga102.ch.intel.com (mga12.intel.com [143.182.124.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1CB0E0044A
	for <poky@yoctoproject.org>; Fri, 15 Jun 2012 13:21:46 -0700 (PDT)
Received: from mail-pb0-f52.google.com ([209.85.160.52])
	by mga14.intel.com with ESMTP/TLS/RC4-MD5; 15 Jun 2012 13:21:46 -0700
Received: by pbbro8 with SMTP id ro8so5722700pbb.25
	for <poky@yoctoproject.org>; Fri, 15 Jun 2012 13:21:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:date:from:organization:user-agent:mime-version:to:cc
	:subject:references:in-reply-to:content-type
	:content-transfer-encoding:x-gm-message-state;
	bh=Q+rjJOquUhbm+dBZT2dOEx9YjtJ3WmIiXCFC0cXd4Yg=;
	b=MptggdGdCiPSDYwFIeLKUjEQxqU5trB4V8A2zAy2+Bz79tv4K7hrbizqLJdJF6dOMG
	OH4alONkklZGBPR4assVcozPDcpX2TR2rSj/s3m0jOcdipjOz0iVSnQtfGfZcm30VFeq
	Ae8eGvHwsuGjTOKkkaVpFjQcEg5WeSynvh3JiyuGez/vBmNQJUEJRsXR7YR2Ws/qxnEP
	vowOI3ITysXLT+TsWEoAZ/liocpuXEwn7Xz48WKM2tFXbrsQ7uUPv6GJGszzOtVN+kOS
	fmXVRn62Z85tOygRLBaUzZ2Bnee/UlETqMD98pwY5nb1BDaGLCrplAvQ03PKSYVLV0Pm
	RYMw==
Received: by 10.68.217.233 with SMTP id pb9mr23742139pbc.121.1339791705365;
	Fri, 15 Jun 2012 13:21:45 -0700 (PDT)
Received: from [10.6.18.71] (c-71-193-189-117.hsd1.wa.comcast.net.
	[71.193.189.117])
	by mx.google.com with ESMTPS id rv5sm14281215pbc.56.2012.06.15.13.21.43
	(version=SSLv3 cipher=OTHER); Fri, 15 Jun 2012 13:21:44 -0700 (PDT)
Message-ID: <4FDB9956.7060001@intel.com>
Date: Fri, 15 Jun 2012 13:21:42 -0700
From: Saul Wold <saul.wold@intel.com>
Organization: Intel
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <cover.1339777907.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1339777907.git.bruce.ashfield@windriver.com>
X-Gm-Message-State: ALoCoQnRC2oJ9/C8iyfd/EBKy0eMZcijhje8uOxOxVwXk8/WQ0qZvOH1dsIA5CvO4g671yYuuMm/
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] linux-yocto/meta-yocto: update yaffs2 and drop rc6
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
X-List-Received-Date: Fri, 15 Jun 2012 20:21:46 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 06/15/2012 09:33 AM, Bruce Ashfield wrote:
> Richard/Saul,
>
> The oe-core part of this has already merged, this is the meta-yocto
> update to the latest 3.4 SRCREVs.
>
> Cheers,
>
> Bruce
>
> The following changes since commit 4c678307c8188f4956acf66d047d213e4417d0bf:
>
>    meta-skeleton: add linux-yocto-custom reference recipe (2012-06-15 12:16:33 -0400)
>
> are available in the git repository at:
>    git://git.pokylinux.org/poky-contrib zedd/kernel-yocto
>    http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel-yocto
>
> Bruce Ashfield (1):
>    linux-yocto/meta-yocto: update yaffs2 and drop rc6
>
>   .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |    8 ++++----
>   1 files changed, 4 insertions(+), 4 deletions(-)
>

Merged into Poky/master

Thanks
	Sau!

