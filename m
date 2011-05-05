Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 318714C80097
	for <poky@yoctoproject.org>; Thu,  5 May 2011 11:48:52 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id C1E561660251; Thu,  5 May 2011 10:48:51 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 95B22166023E;
	Thu,  5 May 2011 10:48:50 -0600 (MDT)
Message-ID: <4DC2D4F2.20505@mlbassoc.com>
Date: Thu, 05 May 2011 10:48:50 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Chris Larson <clarson@kergoth.com>
References: <4DC16EFA.4070003@mlbassoc.com> <4DC2D0D6.2030709@mlbassoc.com>
	<BANLkTinkE=5h2KfgOjSobuyU2KQgHH+iPA@mail.gmail.com>
In-Reply-To: <BANLkTinkE=5h2KfgOjSobuyU2KQgHH+iPA@mail.gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Debugging overrides
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
X-List-Received-Date: Thu, 05 May 2011 16:48:52 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 05/05/2011 10:37 AM, Chris Larson wrote:
> On Thu, May 5, 2011 at 9:31 AM, Gary Thomas<gary@mlbassoc.com>  wrote:
>>> My .bbappend file (identical in both trees) looks like this:
>>>
>>>
>>> -----------------------------------------------------------------------------------
>>> THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
>>> FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}-${PV}"], d)}:"
>>> PACKAGE_ARCH = "${MACHINE_ARCH}"
>>>
>>> -----------------------------------------------------------------------------------
>>>
>>> I've traced through this with -DDD and on one target, I can see the
>>> fetcher finding the files in my layer. On a different target, it only
>>> finds the files in the main meta/recipes-core/netbase tree
>>>
>>> Any suggestions on where I look to understand what's going on?
>>
>> 'strace' is my friend :-)  It turns out that I had some layering
>> problems which caused the wrong packages/netbase tree to be searched.
>> I ran strace on 'bitbake netbase' and was able to see the erroneous
>> file/path searches which pointed out my problem.
>
> Okay, what sort of layer tooling would have helped you identify this
> problem without strace? :)

Hard to say.  What I was really hoping for was basically what
strace gave me - the list of candidate files which were being considered
to satisfy the SRC_URI.  Since the file I wanted was coming from my target
layer, what I needed to figure out was why it wasn't on the list.

One thing that should be pretty useful to glean is that bitbake chose
meta-targetB/packages/netbase/netbase_4.45.bbappend instead of the
one from meta-targetA.  Note: this was my error, I had two layers
which contained more or less the same structure enabled.  This data
was in the -DDD dump, but it wasn't obvious enough for me to catch!

Some way to know where are the pieces for some recipe come from, and
perhaps the candidates considered as well, would help a lot.  I've
run into questions/confusions with layers before (bug #807) and this
error was very similar.

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

