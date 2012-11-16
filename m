Return-Path: <andy.ross@windriver.com>
Received: from plausible.org (li44-10.members.linode.com [72.14.181.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E250EE003DA
	for <poky@yoctoproject.org>; Fri, 16 Nov 2012 10:14:42 -0800 (PST)
Received: from [0.0.0.0] (c-67-171-188-207.hsd1.or.comcast.net
	[67.171.188.207]) (Authenticated sender: andy-wrs)
	by plausible.org (Postfix) with ESMTPSA id BD76C2141E;
	Fri, 16 Nov 2012 10:14:41 -0800 (PST)
Message-ID: <50A68290.4000909@windriver.com>
Date: Fri, 16 Nov 2012 10:14:40 -0800
From: Andy Ross <andy.ross@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:16.0) Gecko/20121016 Thunderbird/16.0.1
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <50A649D6.9030301@mlbassoc.com> <7871104.EdYNj4Ce18@helios>
In-Reply-To: <7871104.EdYNj4Ce18@helios>
Cc: poky@yoctoproject.org
Subject: Re: Wacky dependencies
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
X-List-Received-Date: Fri, 16 Nov 2012 18:14:43 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/16/2012 06:24 AM, Paul Eggleton wrote:
> The build system is not able to determine whether a variable within a recipe
> depends on a single value within DISTRO_FEATURES, it only knows that it looks
> at the variable; thus any change to DISTRO_FEATURES will change the hash of
> all recipes that read DISTRO_FEATURES.
>
> I'd like to fix this but given that we check if DISTRO_FEATURES and other list
> variables like it contain values using inline python code i.e.
> ${@base_contains(...)} this seems like it would be tricky to implement in a
> reliable way.

I've been playing with variable dependency tracking recently and saw
issues like this too.  I don't think it can be done compatibly (in the
sense of preserving the existing list-in-a-string representation) at
all.  The problem is that dependencies are only tracked at the
variable level and the "logical dependency" is on substructure in the
data that isn't visible to the dependency system.

You could do this with the existing data model though, but splitting
things out into distinct variables.  Test for the presence of
"DISTRO_FEATURES_directfb" for example.  Or use flags:
"DISTRO_FEATURES[directfb]".  Flags would require bitbake modification
though, because they aren't part of the taskdeps field in the
siguatures.

DISTRO_FEATURES is interpreted outside bitbake, of course.  But in a
more limited sense this could be done for OVERRIDES, as it's handled
internally and could be special-cased in the dependency handling.

Andy


