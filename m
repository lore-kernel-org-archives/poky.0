Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09D1FE01426
	for <poky@yoctoproject.org>; Fri, 22 Jun 2012 04:49:57 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 78FF9F811F5; Fri, 22 Jun 2012 05:49:56 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 13874F811F3;
	Fri, 22 Jun 2012 05:49:55 -0600 (MDT)
Message-ID: <4FE45BE3.3090200@mlbassoc.com>
Date: Fri, 22 Jun 2012 05:49:55 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <4FE220B8.2080903@mlbassoc.com>
	<CAMKF1so1L3GNuELFb4stPPORTwN29vOLngJM_x_9BrV7_jMaiQ@mail.gmail.com>
	<4FE253E8.7090901@mlbassoc.com> <3380572.szjuG0GuWa@helios>
In-Reply-To: <3380572.szjuG0GuWa@helios>
Cc: poky@yoctoproject.org
Subject: Re: New warning
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
X-List-Received-Date: Fri, 22 Jun 2012 11:49:57 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-06-22 03:44, Paul Eggleton wrote:
> On Wednesday 20 June 2012 16:51:20 Gary Thomas wrote:
>> On 2012-06-20 15:55, Khem Raj wrote:
>>> On Wed, Jun 20, 2012 at 12:12 PM, Gary Thomas<gary@mlbassoc.com>   wrote:
>>>> This happens when I have two intertwined layers - I have a recipe in
>>>> layer1
>>>> which references a file satisfied only by layer2.
>>>
>>> why not move the reference from layer1 to layer2 as well ?
>>
>> Layer1 holds the recipe and I find it more informative to have the
>> reference there - that way the .bbappends in layer2 _must_ define
>> it and the dependency is obvious since the recipe will fail without
>> this file being specified.
>>
>> My use case is layer1 has a generic kernel recipe and layer2 (BSP)
>> has a platform specific patch for that kernel.  I have other use
>> cases, but this is indicative of how I view the layering.
>
> Well, that's not unreasonable I suppose. However I've just tested a trivial
> example of cross-layer file references here and it does not produce a warning.
> In any case, the code that does the checksums uses the same code as do_fetch
> when it locates the files, so I'm a bit puzzled as to how it would not be able
> to find the file in the first instance and it would when it came to fetch time.
>
> FWIW, Andrea and I figured out that his reported case was caused by some
> recipes that only provided a file for specific machines which did not include
> the current MACHINE, but the recipes were not marked with COMPATIBLE_MACHINE,
> so the warning there was legitimate. Gary, is it possible something similar is
> happening for your layer structure? If not, can you provide some more
> information that might help me reproduce the warning?

I see now what's causing the warning, but I don't see a good way to fix it.

I have my own DISTRO, similar to meta-yocto, plus a number of BSP layers.  Only
one BSP layer will be selected in bblayers.conf.

My meta tree looks something like this:
   /local/poky-multi/
     meta/
     meta-yocto/
     meta-ti/
     meta-MYDISTRO/
     meta-BSPa/
     meta-BSPb/
     ...
     meta-BSPn/
A typical build will have this for bblayers.conf:
   BBLAYERS = " \
     /local/poky-multi/meta \
     /local/poky-multi/meta-MYDISTRO \
     /local/poky-multi/meta-BSPf \
     /local/poky-multi/meta-ti \
   "

The problem is that my generic layer1 has a main recipe which is used by only
a few of the BSP layers (layerBSPa, layerBSPb, etc).  For example, if my configuration
selects meta-BSPf, that BSP may not need to use the recipe in question, but it's
still in meta-MYDISTRO.  More concretely, meta-MYDISTRO defines a recipe 'fpga-tool'
which needs BSP specific setup files like this:
   % find /local/poky-multi -name "fpga-tools*.bb*"
   /local/poky-multi/meta-MYDISTRO/packages/fpga/fpga-tools_0.0.bb
   /local/poky-multi/meta-BSPc/packages/fpga-tools_0.0.bbappend
   /local/poky-multi/meta-BSPd/packages/fpga-tools_0.0.bbappend
Notice that there is no fpga-tools setup in meta-BSPa.  If I'm building for
BSPa, I'll get this warning:
   WARNING: Unable to get checksum for fpga-tool SRC_URI entry fpga_gpio_layout.h: file could not be found
   WARNING: Unable to get checksum for fpga-tool SRC_URI entry video_mux.vme: file could not be found

I can see how to fix this warning by defining those files with dummy versions in meta-MYDISTRO

It gets more complicated as my kernel recipe (in meta-MYDISTRO) references files like
   SRC_URI += "file://${MACHINE}.patch"
I don't see any way to define a dummy version of this.

Is this clear now?  Any ideas how to clean it up?

Thanks for any ideas

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

