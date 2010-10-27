Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 128254C80287
	for <poky@lists.pokylinux.org>; Wed, 27 Oct 2010 18:06:54 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 8B7BD166074F; Wed, 27 Oct 2010 17:06:54 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id B5EB81660557;
	Wed, 27 Oct 2010 17:06:53 -0600 (MDT)
Message-ID: <4CC8B08D.10402@mlbassoc.com>
Date: Wed, 27 Oct 2010 17:06:53 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.9) Gecko/20100430 Fedora/3.0.4-2.fc11 Thunderbird/3.0.4
MIME-Version: 1.0
To: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
References: <4CC89AA5.7080900@mlbassoc.com>
	<8EA2C2C4116BF44AB370468FBF85A77701969CD2DE@orsmsx504.amr.corp.intel.com>
In-Reply-To: <8EA2C2C4116BF44AB370468FBF85A77701969CD2DE@orsmsx504.amr.corp.intel.com>
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: Using prebuilt toolchains
X-BeenThere: poky@pokylinux.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.pokylinux.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/poky>,
	<mailto:poky-request@pokylinux.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/poky>
List-Post: <mailto:poky@pokylinux.org>
List-Help: <mailto:poky-request@pokylinux.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/poky>,
	<mailto:poky-request@pokylinux.org?subject=subscribe>
X-List-Received-Date: Wed, 27 Oct 2010 23:06:55 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10/27/2010 03:58 PM, Kamble, Nitin A wrote:
> Hi Gary,
>   The tool chain is customized to work well for all the recipes. If you are going to build just one package a separate tool chain may work, but it's unlikely that a separate toolchain will work well for all the recipes.
>

That's not really what I'm looking for.  What I want is to build
the tools *once* and then reuse them, without having to rebuild
them every time I start a Poky build from scratch.  I'm happy using
the Poky "customized" tools, but I really dislike having to rebuild
them over and over again...  I also am really keen to deliver a Poky
setup to my customers which they can use to build their target systems.
They shouldn't have to be bothered with building the tools themselves.

> -----Original Message-----
> From: poky-bounces@pokylinux.org [mailto:poky-bounces@pokylinux.org] On Behalf Of Gary Thomas
> Sent: Wednesday, October 27, 2010 2:33 PM
> To: Poky
> Subject: [poky] Using prebuilt toolchains
>
> Congratulations on Laverne (4.0) and Yocto - I hope they are
> prosperous for all :-)
>
> Is there any way to configure Poky (laverne) with a prebuilt
> toolchain, e.g. a meta-toolchain setup?  I no longer see any
> mention of this in the manual (although I've never succeeded
> to use such, no matter how hard I've tried)
>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

