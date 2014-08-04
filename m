Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F1239E004F1; Mon,  4 Aug 2014 15:09:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f170.google.com (mail-pd0-f170.google.com
	[209.85.192.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 513C3E003D8
	for <poky@yoctoproject.org>; Mon,  4 Aug 2014 15:09:28 -0700 (PDT)
Received: by mail-pd0-f170.google.com with SMTP id g10so90705pdj.1
	for <poky@yoctoproject.org>; Mon, 04 Aug 2014 15:09:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=Mgz4n0MnMfD20+YI1BmezqOBCFJ/so6DD4tjIY/pF6E=;
	b=TN+QuBRqLamP/jiAg8WdVQE+rpsPPUBx3BgWLxcwYCV2yx4oycunJtKIWsne5ZvG1C
	BjjrIqBLfnobaBQ0wX9OOPp4Amd6+3WJmdyNEM/GlsolRdCtHgHJ2AKtuLYyyHc4DaCf
	68vtUpG4OV03R/dLZqPXKzj0CaKPm11POf0teDq2iZCc7ALecdzQHYOZwE/IDNDipUDM
	5j0SDt9PY8Cvz82zczdez3YWl52dKLWYmxLo6GxN5Tl8rLG2j31GlA3Wpedap66Z335g
	m3wVLoDSWggfl1PTxVt0ok1M7kWk4/GFlEXxnzS4lBvH/o4zwfVNHabNu4MCVQpJL222
	R4dg==
X-Received: by 10.70.95.233 with SMTP id dn9mr4858373pdb.160.1407190167788;
	Mon, 04 Aug 2014 15:09:27 -0700 (PDT)
Received: from haswell ([2601:9:3580:7a5:baca:3aff:fe80:aa8f])
	by mx.google.com with ESMTPSA id n8sm28372141pdm.22.2014.08.04.15.09.26
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 04 Aug 2014 15:09:27 -0700 (PDT)
Date: Mon, 4 Aug 2014 15:12:41 -0700
From: Khem Raj <raj.khem@gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Message-ID: <20140804221241.GA11951@haswell>
References: <1406834366-48632-1-git-send-email-paul.gortmaker@windriver.com>
	<1407170371.6981.68.camel@ted>
MIME-Version: 1.0
In-Reply-To: <1407170371.6981.68.camel@ted>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] bitbake.conf: make ROOT_HOME default match the rest of the world
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
X-List-Received-Date: Mon, 04 Aug 2014 22:09:40 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On 14-08-04 17:39:31, Richard Purdie wrote:
> On Thu, 2014-07-31 at 15:19 -0400, Paul Gortmaker wrote:
> > All distros that I've ever used have /root as the home dir for
> > UID=0 (root) and even the Filesystem Hierarchy Standard lists
> > it as /root [1].  So if you've never come across the /home/root
> > thing before, it can violate the principle of least surprise.
> > 
> > In addition, using /home/root does suck if /home happens to be
> > on NFS, and you are trying to login as root to rescue something.
> > 
> > Change the default to be "/root" so we are consistent with the
> > rest of the world and the standards.  If someone wants /home/root
> > to be back compatible with earlier oe-core/yocto builds, they
> > can simply set ROOT_HOME themselves in their local.conf file.
> > 
> > [1] http://www.pathname.com/fhs/pub/fhs-2.3.html#ROOTHOMEDIRECTORYFORTHEROOTUSER
> > 
> > Signed-off-by: Paul Gortmaker <paul.gortmaker@windriver.com>
> 
> This is a key decision for OE so it needs to go to the OE-Core list.

I think it is a good improvement if it doesnt hamper upgrade paths, I
personally do not have a usecase of upgade.

