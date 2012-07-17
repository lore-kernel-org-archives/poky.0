Return-Path: <scott.a.garman@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F041E00282
	for <poky@yoctoproject.org>; Tue, 17 Jul 2012 10:33:56 -0700 (PDT)
Received: from mail-gg0-f180.google.com ([209.85.161.180])
	by mga02.intel.com with ESMTP/TLS/RC4-SHA; 17 Jul 2012 10:33:17 -0700
Received: by ggnf1 with SMTP id f1so618525ggn.25
	for <poky@yoctoproject.org>; Tue, 17 Jul 2012 10:33:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding
	:x-gm-message-state;
	bh=28eY55tzzC7sZBK0yOTU6OFIDXxtd6lnUCrxfEuMY7I=;
	b=WgO7srPFrIW7xH5Xr+nKmgjsS7VtrC5r4oTgePmCTkFUScoRIOIJd19rpGOlMc4hoh
	Gcb+T+pVR7WOB310tsy0msabrcYysv96vV89InjR/bYLJqBlfCqi0/6YJcIz4CdBVDan
	R4EK54sZT8E14UtRxc2OiyndAJc5i9GL9jWwNOFj43YirkKTcctte2z5GJDkI2A0RPwi
	d2VVBgagqNo6k0NVWjmOHgvDtgmIDZ+TFiySCd96zlqKPChJQoRnx+I/4tIOzIxBsuf0
	xmBOm5duLxVU7LR6YIhFNLoSsvB+mz5whb86PDtLozHE4yWVsmpyQMNqZrL6RJZVikzY
	tAtQ==
Received: by 10.66.76.34 with SMTP id h2mr6945816paw.16.1342546396265;
	Tue, 17 Jul 2012 10:33:16 -0700 (PDT)
Received: from [192.168.1.12] (c-76-105-137-48.hsd1.or.comcast.net.
	[76.105.137.48])
	by mx.google.com with ESMTPS id ru4sm14400474pbc.66.2012.07.17.10.33.13
	(version=SSLv3 cipher=OTHER); Tue, 17 Jul 2012 10:33:14 -0700 (PDT)
Message-ID: <5005A1E5.8000704@intel.com>
Date: Tue, 17 Jul 2012 10:33:25 -0700
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120615 Thunderbird/13.0.1
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <cover.1341511275.git.scott.a.garman@intel.com>
	<b0edda9f3b91ae9ab25382399191f64a02e323b5.1341511275.git.scott.a.garman@intel.com>
In-Reply-To: <b0edda9f3b91ae9ab25382399191f64a02e323b5.1341511275.git.scott.a.garman@intel.com>
X-Gm-Message-State: ALoCoQkBuhqqktCDU0ZQWlpPgEwGKhCuCPw2zXDvUyCCGmwDO2OAL5ABLYuldr615FwD0ZkDn+oz
Subject: Re: [PATCH 2/2] .gitignore: unmask meta-yocto files
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
X-List-Received-Date: Tue, 17 Jul 2012 17:33:56 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 07/05/2012 11:02 AM, Scott Garman wrote:
> Signed-off-by: Scott Garman <scott.a.garman@intel.com>
> ---
>   .gitignore |    1 +
>   1 file changed, 1 insertion(+)
>
> diff --git a/.gitignore b/.gitignore
> index bd0acdc..4a3d660 100644
> --- a/.gitignore
> +++ b/.gitignore
> @@ -10,6 +10,7 @@ sources/
>   meta-*
>   !meta-skeleton
>   !meta-demoapps
> +!meta-yocto
>   *.swp
>   *.orig
>   *.rej
>

I noticed this patch wasn't merged but the other one in this pull 
request was. Is there a reason for not including this one?

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center



