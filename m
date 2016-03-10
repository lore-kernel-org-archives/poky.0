Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 407F8E00CBF; Thu, 10 Mar 2016 12:59:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7E69E00CBB
	for <poky@yoctoproject.org>; Thu, 10 Mar 2016 12:59:54 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	u2AKxhut030271; Thu, 10 Mar 2016 20:59:43 GMT
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id e527zoQ2nLv7; Thu, 10 Mar 2016 20:59:43 +0000 (GMT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	u2AKxawR030266
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 10 Mar 2016 20:59:38 GMT
Message-ID: <1457643576.2804.228.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Bruce Ashfield <bruce.ashfield@windriver.com>, Paul Gortmaker
	<paul.gortmaker@windriver.com>
Date: Thu, 10 Mar 2016 20:59:36 +0000
In-Reply-To: <56E0F427.7030708@windriver.com>
References: <cover.1455203562.git.bruce.ashfield@windriver.com>
	<2e6d2b75837731be983d888eaa82a9cfcf660e85.1455203562.git.bruce.ashfield@windriver.com>
	<1455287765.16142.321.camel@linuxfoundation.org>
	<1455291157.16142.323.camel@linuxfoundation.org>
	<1455352317.16142.344.camel@linuxfoundation.org>
	<1455383832.16142.365.camel@linuxfoundation.org>
	<20160302014146.GE20979@windriver.com> <56E07128.2060401@windriver.com>
	<1457558624.2804.181.camel@linuxfoundation.org>
	<56E0F427.7030708@windriver.com>
X-Mailer: Evolution 3.16.5-1ubuntu3.1 
Mime-Version: 1.0
Cc: "Hart, Darren" <darren.hart@intel.com>, "saul.wold" <saul.wold@intel.com>,
	poky@yoctoproject.org,
	openembedded-core <openembedded-core@lists.openembedded.org>
Subject: Re: [PATCH 1/1] poky: update qemu* to prefer 4.4 kernel
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
X-List-Received-Date: Thu, 10 Mar 2016 20:59:59 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2016-03-09 at 23:12 -0500, Bruce Ashfield wrote:
> On 2016-03-09 4:23 PM, Richard Purdie wrote:
> > On Wed, 2016-03-09 at 13:53 -0500, Bruce Ashfield wrote:
> > > As another follow up. The thread can be summarized as "It doesn't
> > > look like it should have worked before, and qemu's pat emulation
> > > may be the issue'.
> > > 
> > > The suggestion is to run with 'nopat', which is what Richard
> > > originally
> > > did.
> > > 
> > > So I'm going to prep a patch that drops the kernel patch, and
> > > leaves
> > > nopat enabled on the qemu command line. That should get us put
> > > back
> > > together in a semi-permanent way.
> > 
> > How sure are we this is a bug in QEMU's pat emulation? If that is
> > the
> > case we should file a bug against qemu and try and fix it rather
> > than
> > work around it...
> 
> It could still be something that the kernel can work around, Toshi
> did say:
> 
> There is a matter of how qemu emulates CPU features.  There is no
> such
> Intel CPU that supports PAT w/o MTRR.  This is why the current code
> assumes this dependency.
> 
> Which is likely the trigger, we've send information about the cpu to
> him, and with that there's a chance for a pat fix.
> 
> He repeated our thought of running with 'nopat' while a fix is
> considered.
> 
> It may be some time before that happens, and I was going to test
> with the kernel patch dropped, and nopat in the qemu boot args. If
> that works, I'd rather run with that, and then revisit when (if)
> there's more changes upstream.

Reading the other thread, it looks like if MTRR is disabled, PAT needs
to be disabled too. That sounds like a simple enough patch which is
going upstream imminently so I think the preferred solution is to get
that into our kernels and then drop my patch?

Cheers,

Richard

