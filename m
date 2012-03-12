Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4DADEE01363
	for <poky@yoctoproject.org>; Mon, 12 Mar 2012 08:50:26 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1S77Vm-0008AD-PT; Mon, 12 Mar 2012 11:50:15 -0400
Date: Mon, 12 Mar 2012 11:50:01 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4F5E19A9.7070705@mlbassoc.com>
Message-ID: <alpine.DEB.2.02.1203121149020.3491@oneiric>
References: <9F69795E29C890408AC2DAF646C89BB379D1059697@MAILBOX.arc.local>,
	<4F5A288D.9010900@windriver.com>
	<9F69795E29C890408AC2DAF646C89BB379D106EC5B@MAILBOX.arc.local>
	<4F5E1594.4010702@windriver.com> <4F5E19A9.7070705@mlbassoc.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: poky@yoctoproject.org
Subject: Re: How to create a PREMIRROR
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
X-List-Received-Date: Mon, 12 Mar 2012 15:50:26 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 12 Mar 2012, Gary Thomas wrote:

> On 2012-03-12 09:26, Mark Hatle wrote:
> > On 3/10/12 4:42 AM, Zoufal Andreas wrote:
> > > Thx Mark, I will try it. One more question: which files are really
> > > required for the mirrors?
> > > Only the archives or the "done" files, patch files, patch result files
> > > etc?
> >
> > I believe you don't need the done files. I'm not sure about the others. (I
> > didn't remove them in my usage, as they're small enough and they allow me to
> > use the DL_DOWNLOAD to keep
> > the mirror up to date.)
>
> All [true] files at the top level of 'downloads', except for the .done ones
> This does include some patches (bash!) and mostly tarballs.

  that's how it appears to me.  it's enough to check the recipe files
to see the values in SRC_URI to verify what should be in the
premirror.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

