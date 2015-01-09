Return-Path: <unixmania@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8DDA3E0090F; Fri,  9 Jan 2015 15:10:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (unixmania[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.173 listed in list.dnswl.org]
Received: from mail-vc0-f173.google.com (mail-vc0-f173.google.com
	[209.85.220.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6690BE0070B
	for <poky@yoctoproject.org>; Fri,  9 Jan 2015 15:10:42 -0800 (PST)
Received: by mail-vc0-f173.google.com with SMTP id kv19so4050214vcb.4
	for <poky@yoctoproject.org>; Fri, 09 Jan 2015 15:10:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=lBLZKS+REqb3h+xoN/p2Rw6Ffb1V/MvqGcTKDpzRfU4=;
	b=zIIp6KLNDu9vCPAA1cSelz52B2HB+Y/O/UPmeOnywoISKM0UElF0jG+W03KjyXMV03
	yvZnQ8jnRkoUiKK8ALQqTu/VLJLHomJfwCfJ8vrBG4PW7HS5M+6y+MYhz7EgzdG+hwGg
	27txkFp41NOGLQPFc3PHw2oqvtdxrQxFP4mH55HdZwg0n7rtNShwYbzeSAi7d1gz9v4v
	Xv/IJJno5Dwehk4vx1fcRZFq6AH3BBxh/9v1LCSBBsg3fHD1tg/Xe3cJgcNLISrAnYOD
	Mg8ZQo1QR16F7pXZrqfCdY4BGa6yn0svWNw/DgHYfQOIAuDbJypLPG1eZ/3yojDIQ0o5
	jSqQ==
MIME-Version: 1.0
X-Received: by 10.220.50.70 with SMTP id y6mr10736862vcf.72.1420845041950;
	Fri, 09 Jan 2015 15:10:41 -0800 (PST)
Received: by 10.52.115.170 with HTTP; Fri, 9 Jan 2015 15:10:41 -0800 (PST)
In-Reply-To: <1420799327-30178-1-git-send-email-paul.eggleton@linux.intel.com>
References: <1420799327-30178-1-git-send-email-paul.eggleton@linux.intel.com>
Date: Fri, 9 Jan 2015 21:10:41 -0200
Message-ID: <CAJ4jsacLUW4n+JxsPhhsivOxLHZWu48w8T092E1Ny1v8WDXNkQ@mail.gmail.com>
From: "Carlos A. M. dos Santos" <unixmania@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH v2] poky.conf: mark all CentOS 6/7 versions as compatible
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
X-List-Received-Date: Fri, 09 Jan 2015 23:10:51 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Jan 9, 2015 at 8:28 AM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
>
> It's rather unlikely with a distribution such as CentOS that they would
> introduce changes that would cause us issues that we would not be
> prepared to fix; therefore use a wildcard to suppress the warning (in
> any case, CentOS 6.6 is now the current 6.x version.)
>
> Also add CentOS 7 as we are running regular builds on CentOS 7 machines
> as part of the autobuilder infrastructure.


Thank you.

