Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB343E0070B
	for <poky@yoctoproject.org>; Wed, 20 Jun 2012 15:51:21 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 404B2F81205; Wed, 20 Jun 2012 16:51:21 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 4EE33F811E2;
	Wed, 20 Jun 2012 16:51:20 -0600 (MDT)
Message-ID: <4FE253E8.7090901@mlbassoc.com>
Date: Wed, 20 Jun 2012 16:51:20 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <4FE220B8.2080903@mlbassoc.com>
	<CAMKF1so1L3GNuELFb4stPPORTwN29vOLngJM_x_9BrV7_jMaiQ@mail.gmail.com>
In-Reply-To: <CAMKF1so1L3GNuELFb4stPPORTwN29vOLngJM_x_9BrV7_jMaiQ@mail.gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
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
X-List-Received-Date: Wed, 20 Jun 2012 22:51:21 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-06-20 15:55, Khem Raj wrote:
> On Wed, Jun 20, 2012 at 12:12 PM, Gary Thomas<gary@mlbassoc.com>  wrote:
>> This happens when I have two intertwined layers - I have a recipe in layer1
>> which references a file satisfied only by layer2.
>
> why not move the reference from layer1 to layer2 as well ?

Layer1 holds the recipe and I find it more informative to have the
reference there - that way the .bbappends in layer2 _must_ define
it and the dependency is obvious since the recipe will fail without
this file being specified.

My use case is layer1 has a generic kernel recipe and layer2 (BSP)
has a platform specific patch for that kernel.  I have other use
cases, but this is indicative of how I view the layering.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

