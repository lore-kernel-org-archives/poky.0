Return-Path: <saul.wold@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id C7D114C80ACB
	for <poky@yoctoproject.org>; Thu, 14 Apr 2011 15:28:23 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 14 Apr 2011 13:28:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,213,1301900400"; d="scan'208";a="909699073"
Received: from unknown (HELO [10.255.12.232]) ([10.255.12.232])
	by fmsmga001.fm.intel.com with ESMTP; 14 Apr 2011 13:28:23 -0700
Message-ID: <4DA758E6.7040606@intel.com>
Date: Thu, 14 Apr 2011 13:28:22 -0700
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Wolfgang Denk <wd@denx.de>
References: <20110414194445.9BCC5151F83@gemini.denx.de>
In-Reply-To: <20110414194445.9BCC5151F83@gemini.denx.de>
Cc: poky@yoctoproject.org
Subject: Re: Distro policy ?
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
X-List-Received-Date: Thu, 14 Apr 2011 20:28:24 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/14/2011 12:44 PM, Wolfgang Denk wrote:
> HI,
>
> we're trying to build our own distribution based on Yocto 1.0.  We
> would like to push all modifications / extensions and our distro stuff
> upstream into the mainline repository, but we are not sure what is the
> best way to do this:
>
> So far we have put our distro-related changes into a separate layer
> but it seems that it was not so good idea: it looks like bitbake
> can't include files from one layer to another and we have to copy
> includes even if we don't want to change them.
>
Wolfgang,

I would like to get more details about which include files (.incs) you 
are needing to modify.  I know that there was some discussion at ELC 
this week about similar issues.  I also know that we have a "Layering 
Tools" item on the 1.1 feature list to address these issues.

> Putting our changes back into the main layer would be pretty trivial,
> but it appears that current tendency is to move all
> distribution-specific things to their respective layers (like the
> poky distro configuration itself was moved to the meta-yocto layer).
>
Correct, the core is supposed to be clean and distributions are supposed 
to be in layers.  Your layer can be linked to or hosted on the 
git.yoctoproject.org site if you would like. Pulling distro specific 
changes into core is not appropriate. If you have generic changes to 
core that would be appropriate to all distro, we would consider them.

> So, from the policy side I think we should go with our own layer.
> On the technical side I'm disappointed with this 'include' problem: I
> find it rather impractical to copy things we don't want to change and
> just want to use from one layer to another and then having to keep
> these in sync with mainline.
>
> What is the recommended way to address this issue?
>
For the short term, I think that you may need to deal with the copy 
issue, until we have tooling in place.

I know this is not the answer you wanted to hear right now, we know 
about the issue and are looking at it.

Sau!

> Best regards,
>
> Wolfgang Denk
>


