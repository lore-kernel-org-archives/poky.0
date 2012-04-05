Return-Path: <niqingliang@insigma.com.cn>
Received: from WX-Edge.insigma.com.cn (mx.insigma.com.cn [115.236.48.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0EB4E0044A
	for <poky@yoctoproject.org>; Wed,  4 Apr 2012 18:48:27 -0700 (PDT)
Received: from WX-EXCHMB2.insigma.com.cn (10.0.1.203) by
	WX-Edge.insigma.com.cn (10.0.1.205) with Microsoft SMTP Server (TLS) id
	8.3.83.0; Thu, 5 Apr 2012 09:48:16 +0800
Received: from [192.168.0.98] (122.224.76.38) by Wx-ExchMB2.insigma.com.cn
	(10.0.1.203) with Microsoft SMTP Server id 8.3.83.0;
	Thu, 5 Apr 2012 09:48:09 +0800
Message-ID: <1333590345.10988.37.camel@localhost.localdomain>
From: Ni Qingliang <niqingliang@insigma.com.cn>
To: Gary Thomas <gary@mlbassoc.com>
Date: Thu, 5 Apr 2012 09:45:45 +0800
In-Reply-To: <4F7B3409.8000905@mlbassoc.com>
References: <4F7B3409.8000905@mlbassoc.com>
Organization: Insigma
X-Mailer: Evolution 3.2.3 
MIME-Version: 1.0
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: ccache
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: niqingliang@insigma.com.cn
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 05 Apr 2012 01:48:28 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2012-04-04 at 01:31 +0800, Gary Thomas wrote:
> Why is ccache being used for Poky/Yocto builds?  My understanding is
> that it's a win for _rebuilds_ of the same/related files, but there's
> not a whole lot of that going on.
> 
> If I build core-image-sato from scratch, I end up with ${BUILD}/tmp/ccache
> which is 1.8GB - quite a bite!  Is there some way to disable this?, other
> than not have ccache on my host computer (not an option as it is useful
> for other builds I do)
> 
I add following line in the 'local.conf':
CCACHE=""


-- 
Yi Qingliang
niqingliang@insigma.com.cn
https://niqingliang2003.wordpress.com


