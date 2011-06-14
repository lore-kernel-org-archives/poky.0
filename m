Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id B1B374C800B3
	for <poky@pokylinux.org>; Tue, 14 Jun 2011 16:47:17 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 14 Jun 2011 14:47:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,366,1304319600"; d="scan'208";a="14681004"
Received: from unknown (HELO [10.255.12.216]) ([10.255.12.216])
	by orsmga001.jf.intel.com with ESMTP; 14 Jun 2011 14:47:16 -0700
Message-ID: <4DF7D6E4.2020908@linux.intel.com>
Date: Tue, 14 Jun 2011 14:47:16 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc13 Thunderbird/3.1.10
MIME-Version: 1.0
To: gmane@reliableembeddedsystems.com
References: <it88ph$j2v$1@dough.gmane.org> <4DF7B675.6050304@linux.intel.com>
	<it8hss$c59$1@dough.gmane.org>
In-Reply-To: <it8hss$c59$1@dough.gmane.org>
Cc: poky@pokylinux.org
Subject: Re: bernard-5.0.1, poky-image-lsb, beagle, build error
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
X-List-Received-Date: Tue, 14 Jun 2011 21:47:18 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 06/14/2011 01:55 PM, Robert Berger wrote:
> Hi,
>
> On 06/14/2011 10:28 PM, Saul Wold wrote:
>>
>> Currently, if you have MIRRORS, it should pick up the original upstream
>> source tarball from http://autobuilder.yoctoprojecto.org/sources, if you
>> want to avoid checking any upstream source, you can set
>> PREMIRRORS_prepend for ftp, http, and https URLs to the
>> autobuilder/sources location. This location should maintain all tarballs
>> for releases.
>>
>> We had a similar problem with distcc right about the time we released
>> 5.0.1!
>>
>> You can use a local solution also with PREMIRRORS_prepend, as well as
>> setting the BB_NO_NETWORK, which will force bitbake to not look on the
>> network for any upstreams, this assumes you have everything preloaded
>> locally.
>>
>> Let us know if this is what you are looking for.
>
> There is a file called meta/conf/distro/poky.conf which contains
>
> PREMIRRORS ?= "\
> bzr://.*/.*   http://autobuilder.yoctoproject.org/sources/ \n \
> cvs://.*/.*   http://autobuilder.yoctoproject.org/sources/ \n \
> git://.*/.*   http://autobuilder.yoctoproject.org/sources/ \n \
> hg://.*/.*    http://autobuilder.yoctoproject.org/sources/ \n \
> osc://.*/.*   http://autobuilder.yoctoproject.org/sources/ \n \
> p4://.*/.*    http://autobuilder.yoctoproject.org/sources/ \n \
> svk://.*/.*   http://autobuilder.yoctoproject.org/sources/ \n \
> svn://.*/.*   http://autobuilder.yoctoproject.org/sources/ \n"
>
> MIRRORS =+ "\
> ftp://.*/.*      http://autobuilder.yoctoproject.org/sources/ \n \
> http://.*/.*     http://autobuilder.yoctoproject.org/sources/ \n \
> https://.*/.*    http://autobuilder.yoctoproject.org/sources/ \n"
>
> Isn't this supposed to be included by default?
> Do I need to do something else to activate MIRRORS/PREMIRRORS?
>
That's the right list and your not overriding them at all?

Then it should pick it up.  Coulg you run a bitbake -DD -v psmisc -c 
fetch and send me the out put, on the failing build that you have?

This might help identify if there's a problem.

Thanks
	Sau!

> Regards,
>
> Robert
>
>>
>> Sau!
>>
> ...The significant problems we face cannot be solved at the same level
> of thinking we were at when we created them. - Albert Einstein
>
> My public pgp key is available at:
> http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

