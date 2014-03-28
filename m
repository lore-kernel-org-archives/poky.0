Return-Path: <denis@denix.org>
Received: from vms173017pub.verizon.net (vms173017pub.verizon.net
	[206.46.173.17])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3CA05E00BC2
	for <poky@yoctoproject.org>; Fri, 28 Mar 2014 09:42:28 -0700 (PDT)
Received: from gandalf.denix.org ([unknown] [71.191.205.189])
	by vms173017.mailsrvcs.net
	(Sun Java(tm) System Messaging Server 7u2-7.02 32bit (built Apr 16
	2009)) with ESMTPA id <0N3500ADWNQJ7540@vms173017.mailsrvcs.net> for
	poky@yoctoproject.org; Fri, 28 Mar 2014 11:42:19 -0500 (CDT)
Received: by gandalf.denix.org (Postfix, from userid 1000)	id 0FC5F20357; Fri,
	28 Mar 2014 12:42:19 -0400 (EDT)
Date: Fri, 28 Mar 2014 12:42:19 -0400
From: Denys Dmytriyenko <denis@denix.org>
To: Anjandeep Sahni <x0212391@ti.com>
Message-id: <20140328164219.GG3370@denix.org>
References: <53354CED.4090700@ti.com>
MIME-version: 1.0
In-reply-to: <53354CED.4090700@ti.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: "poky, mailing-list" <poky@yoctoproject.org>
Subject: Re: External Toolchain
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
X-List-Received-Date: Fri, 28 Mar 2014 16:42:31 -0000
Content-type: text/plain; charset=us-ascii
Content-disposition: inline

On Fri, Mar 28, 2014 at 03:50:29PM +0530, Anjandeep Sahni wrote:
> Hi all,
> 
> I am fairly new to poky. Just had a few queries.
> 
> I wanted to know where exactly in the build directory does poky
> build the default toolchain.
> And also if I have to use an external linaro toolchain, how would I
> go about it? Should I just include the meta-linaro layer, and add
> the TCMODE variable to local.conf?
> I downloaded and extracted the prebuilt binaries for linaro
> toolchain. How do I point my build system to use these instead of
> the default toolchain?

Anjandeep,

Please take a look at the presentation I gave at the last year ELC:

http://elinux.org/images/c/c8/ExternalToolchainsInYocto.pdf

Also, feel free to ping me directly at denys@ti.com if you are working on a 
project for TI - there's a lot of re-use potential...

-- 
Denys

