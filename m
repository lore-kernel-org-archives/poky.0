Return-Path: <niqingliang@insigma.com.cn>
Received: from WX-Edge.insigma.com.cn (mx.insigma.com.cn [115.236.48.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D33E0E013EC
	for <poky@yoctoproject.org>; Mon, 19 Mar 2012 19:34:14 -0700 (PDT)
Received: from WX-EXCHMB2.insigma.com.cn (10.0.1.203) by
	WX-Edge.insigma.com.cn (10.0.1.205) with Microsoft SMTP Server (TLS) id
	8.1.436.0; Tue, 20 Mar 2012 10:34:06 +0800
Received: from [192.168.0.98] (122.224.76.38) by Wx-ExchMB2.insigma.com.cn
	(10.0.1.203) with Microsoft SMTP Server id 8.1.436.0; Tue, 20 Mar 2012
	10:34:00 +0800
Message-ID: <1332210703.1041.86.camel@localhost.localdomain>
From: Ni Qingliang <niqingliang@insigma.com.cn>
To: Gary Thomas <gary@mlbassoc.com>
Date: Tue, 20 Mar 2012 10:31:43 +0800
In-Reply-To: <4F67EA50.7000708@mlbassoc.com>
References: <4F67EA50.7000708@mlbassoc.com>
Organization: Insigma
X-Mailer: Evolution 3.2.3 
MIME-Version: 1.0
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: HOB doesn't see my image recipes
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
X-List-Received-Date: Tue, 20 Mar 2012 02:34:15 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

maybe all image recipes should be placed in the directory
"meta-xx/images"?

wait expert...

On Tue, 2012-03-20 at 10:24 +0800, Gary Thomas wrote:
> I have my own distribution, layered over poky (I use meta & meta-yocto
> with my own distribution layers).  HOB doesn't seem to find any of my
> [non-yocto] images.
> 
> I thought that this was to be fixed so that any recipe which inherited
> 'image.bbclass' (or relied on one that did) would be listed as an image?
> 
> Am I missing something, or is this a bug?
> 
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

-- 
Yi Qingliang
niqingliang@insigma.com.cn
https://niqingliang2003.wordpress.com


