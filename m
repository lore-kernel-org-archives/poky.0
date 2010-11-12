Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id E0D714C80815
	for <poky@lists.pokylinux.org>; Fri, 12 Nov 2010 02:35:36 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id F19481660560; Fri, 12 Nov 2010 01:35:35 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 57E8816604E8;
	Fri, 12 Nov 2010 01:35:35 -0700 (MST)
Message-ID: <4CDCFC57.20909@mlbassoc.com>
Date: Fri, 12 Nov 2010 01:35:35 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.9) Gecko/20100430 Fedora/3.0.4-2.fc11 Thunderbird/3.0.4
MIME-Version: 1.0
To: Richard Purdie <rpurdie@linux.intel.com>
References: <4CDB2A52.6060400@mlbassoc.com> <1289539963.1272.3055.camel@rex>	
	<4CDCF848.9020703@mlbassoc.com> <1289550656.1272.3179.camel@rex>
In-Reply-To: <1289550656.1272.3179.camel@rex>
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: SSTATE builds more broken than I thought
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
X-List-Received-Date: Fri, 12 Nov 2010 08:35:38 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/12/2010 01:30 AM, Richard Purdie wrote:
> On Fri, 2010-11-12 at 01:18 -0700, Gary Thomas wrote:
>>> Are these all files or are they symlinks? Are they just present for
>>> deploy-ipk or are there others?
>>
>> They are files.
>>
>> Sorry, but I don't understand your other question.  These are the only
>> extra files polluting the tree, except for Python *.py? object files
>> which are also always created.
>
> Are there any files related to other sstate tasks such as
> populate-sysroot*.tgz or package*.tgz or is there just *deploy-ipk*.tgz?
>
> In other words I'm wondering if this is something specific to the
> deploy-ipk sstate task...

The only extra files created are *deploy-ipk*.tgz
This most certainly is restricted to the deploy-ipk sstate task and only
happens if SSTATE_MIRRORS is defined.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

