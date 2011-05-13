Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id CD6E34C811F7
	for <poky@yoctoproject.org>; Fri, 13 May 2011 11:51:05 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 5D20716603ED; Fri, 13 May 2011 10:51:05 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id F1EBD16602A2;
	Fri, 13 May 2011 10:51:02 -0600 (MDT)
Message-ID: <4DCD6176.5020306@mlbassoc.com>
Date: Fri, 13 May 2011 10:51:02 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Tom Zanussi <tom.zanussi@intel.com>
References: <4DCD1F2F.7030805@mlbassoc.com>
	<1305293225.30469.151.camel@elmorro>
In-Reply-To: <1305293225.30469.151.camel@elmorro>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: meta-intel
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
X-List-Received-Date: Fri, 13 May 2011 16:51:07 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 05/13/2011 07:27 AM, Tom Zanussi wrote:
> On Fri, 2011-05-13 at 05:08 -0700, Gary Thomas wrote:
>> I'm using meta-intel (git://git.pokylinux.org/meta-intel.git) to
>> test Poky on my Atom-PC (emenlow works fine).
>>
>> Where is the best place to ask for help with this?  Perhaps there
>> should be a README in the layer to give such guidance?
>>
>
> Yeah, good point - it would make sense to add 'owner' contact info in
> the BSP READMEs.  I'll do that for all the BSPs in meta-intel.
>
>> Now, to my actual question.  I'm trying to understand the strange
>> network behaviour I see when running qemu (see yesterday's thread).
>> When I build for qemuXXX, I build&  run core-image-sato.  On the
>> real hardware (emenlow), I built core-image-sato-live, so I would
>> think the only difference would be the USB-live packaging.  So
>> why do I see such a different set of tasks running, once I log
>> in via X?  See attached files.
>>
>
> Actually, the set of tasks doesn't look all that different to me.  But
> they're also different BSPs (qemu vs emenlow) so I wouldn't expect them
> to be exactly the same (different config options, additional packages,
> etc).

To me, that doesn't make much sense.  I want to run core-image-sato,
just with different kernels.  The userland experience (i.e. which
programs run by just starting up) should be pretty much the same.

Why does the qemu image start a bunch of NFS and DISTCC stuff that
emenlow does not?

I'm still trying to get a grip on why the network works correctly
on emenlow and fails on qemu...

Thanks

>> Interestingly, the network on the real system (emenlow) works
>> properly.  The only problem I have is that /etc/resolv.conf is
>> still wrong, even though I get my network address via DHCP and
>> the DHCP server provides DNS info.
>>
>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

