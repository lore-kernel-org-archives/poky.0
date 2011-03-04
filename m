Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 20A884C800A3
	for <poky@lists.pokylinux.org>; Fri,  4 Mar 2011 05:34:33 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id E342F16605F5; Fri,  4 Mar 2011 04:34:31 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 1BEDE16605A0;
	Fri,  4 Mar 2011 04:34:31 -0700 (MST)
Message-ID: <4D70CE46.7040104@mlbassoc.com>
Date: Fri, 04 Mar 2011 04:34:30 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: "Zhai, Edwin" <edwin.zhai@intel.com>
References: <4D6675E0.2040703@mlbassoc.com> <4D6B3BA3.9050303@intel.com>
	<4D6F9018.1000605@mlbassoc.com> <4D704768.2090100@intel.com>
In-Reply-To: <4D704768.2090100@intel.com>
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: Is sstate broken
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
X-List-Received-Date: Fri, 04 Mar 2011 11:34:33 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/03/2011 06:59 PM, Zhai, Edwin wrote:
>
>
> Gary Thomas wrote:
>>
>> On 02/27/2011 11:07 PM, Zhai, Edwin wrote:
>> > Gary,
>> >
>> > Thanks for trying this.
>> > sstate function is a little bit fragile recently. I'll look at it after fixing some other bugs.
>>
>> Any progress on this?
>>
>> Should I file this as a bug?
>>
>
> We have one http://bugzilla.pokylinux.org/show_bug.cgi?id=788

Yes, that addresses the random errors (which don't seem to have any affect)

However, even without those errors, the sstate information is not being
used at all.  In my experiment, a new tree (with the old sstate pointed
to by SSTATE_MIRRORS) is executing a full build every time.

Did I miss something?

>
>
>> > Gary Thomas wrote:
>> >>
>> >> I tried to run an experiment with SSTATE_MIRRORS on the latest master.
>> >> From what I can tell, this is 100% not working, although I may just
>> >> not have set it up properly. Here's what I did:
>> >>
>> >> * Build Poky for my platform in /local/xyz_ppc_poky
>> >> * Set up to build exact same machine/config/etc in /local/xyz_test
>> >> pointing SSTATE_MIRRORS at /local/xyz_ppc_poky/sstate-cache by
>> >> adding these lines to local.conf (only configuration change)
>> >> SSTATE_MIRRORS ?= "\
>> >> file://.* file:///local/xyz_ppc_poky/sstate-cache/"
>> >>
>> >> The end result is that both builds built (from scratch) the same
>> >> set of packages. There seems to be no reuse of anything from
>> >> the SSTATE_MIRRORS.
>> >>
>> >> $ du /local/xyz_ppc_poky/* -s
>> >> 20 /local/xyz_ppc_poky/conf
>> >> 1456 /local/xyz_ppc_poky/downloads
>> >> 4 /local/xyz_ppc_poky/pseudodone
>> >> 1010392 /local/xyz_ppc_poky/sstate-cache
>> >> 14434076 /local/xyz_ppc_poky/tmp
>> >>
>> >> $ du -s /local/xyz_test
>> >> 20 /local/xyz_test/conf
>> >> 1456 /local/xyz_test/downloads
>> >> 4 /local/xyz_test/pseudodone
>> >> 1010276 /local/xyz_test/sstate-cache
>> >> 14425860 /local/xyz_test/ tmp
>> >>
>> >> The full build log of the second run is at http://www.mlbassoc.com/poky/build_ppc_with_sstate
>> >> Notice the many lines which say that a particular step failed. I can't see the reason, nor
>> >> can I find any corresponding log file to help me out. An example is:
>> >> ERROR: Task 0 (virtual:native:/home/local/poky-amltd/meta/recipes-devtools/pseudo/pseudo_1.0.bb, do_unpack) failed with exit code '1'
>>
>> >>
>> >> Am I missing something? Now that the build with BB_NO_NETWORK is working well,
>> >> this is my last hurdle to making Poky truly useful for my customers.
>> >>
>> >> Thanks
>> >>
>> >> --
>> >> ------------------------------------------------------------
>> >> Gary Thomas | Consulting for the
>> >> MLB Associates | Embedded world
>> >> ------------------------------------------------------------
>> >> _______________________________________________
>> >> poky mailing list
>> >> poky@yoctoproject.org
>> >> https://lists.yoctoproject.org/listinfo/poky
>> >>
>>
>> --
>> ------------------------------------------------------------
>> Gary Thomas | Consulting for the
>> MLB Associates | Embedded world
>> ------------------------------------------------------------
>>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

