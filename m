Return-Path: <scott.a.garman@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BC0AE00283
	for <poky@yoctoproject.org>; Tue, 31 Jul 2012 15:03:41 -0700 (PDT)
Received: from mail-gg0-f180.google.com ([209.85.161.180])
	by mga02.intel.com with ESMTP/TLS/RC4-SHA; 31 Jul 2012 15:03:41 -0700
Received: by ggnf1 with SMTP id f1so5836112ggn.25
	for <poky@yoctoproject.org>; Tue, 31 Jul 2012 15:03:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding
	:x-gm-message-state;
	bh=ZVOsAueRtfBtFGb4aDO3OFh7+4GjoWbkYhS7bTCxBTs=;
	b=oUFNh+y3MVBRWlCX3yvCX/tH0f2iwFQkD4WtD5UHED+UACplY0aGm6o6nlC7/2eC5c
	8ELFKNBRs1UEA1dpt9WoMAkLwoi8v8Ch8E8SuR95OX04VzUSDbPzjEs8r7NhuQXtG9VC
	HNMgigdxgAGUG6Pp3t5fNdrqvmESPfYeVHXktp+litkmoANxGime2LjNlAjBYGoAVzqY
	xZzvW7ZZOSB/3aQnIL4mVWFJpfe6zKd35EyOr/G6eTTGSLAMhgBc5EF2x80T3AWY8gWo
	o+tbVEZYXX9Ye4A/8P8nHoQgagcGHa8ukF4XGmkSjdA5905V3wWAUM047hxY0ATXzrJP
	bxIg==
Received: by 10.66.75.97 with SMTP id b1mr35517055paw.15.1343772217854;
	Tue, 31 Jul 2012 15:03:37 -0700 (PDT)
Received: from [192.168.1.12] (c-76-105-137-48.hsd1.or.comcast.net.
	[76.105.137.48])
	by mx.google.com with ESMTPS id of1sm1114923pbb.15.2012.07.31.15.03.36
	(version=SSLv3 cipher=OTHER); Tue, 31 Jul 2012 15:03:37 -0700 (PDT)
Message-ID: <50185639.9020104@intel.com>
Date: Tue, 31 Jul 2012 15:03:37 -0700
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120714 Thunderbird/14.0
MIME-Version: 1.0
To: McClintock Matthew-B29882 <B29882@freescale.com>
References: <cover.1341354357.git.raj.khem@gmail.com>
	<f6a37520b3bcecef1618bf98a15eac5b69000b78.1341354357.git.raj.khem@gmail.com>
	<CAEsOVNdkMmJT5T3zUbKHcFXEFWPbHJ-rXrSnU=aaeBUjE--rJw@mail.gmail.com>
	<501850A0.1020302@intel.com>
	<CAEsOVNdpWGp7rUbszWdSeu9u3w91Zk-j1u2FBJNO0f0UiZx39Q@mail.gmail.com>
In-Reply-To: <CAEsOVNdpWGp7rUbszWdSeu9u3w91Zk-j1u2FBJNO0f0UiZx39Q@mail.gmail.com>
X-Gm-Message-State: ALoCoQl+fqDYvMeCRoeU8Nq6Sjgmo5e1udQzhiBpUgFKtjG2O+E04zYjosIcVMDQ58JhYU/aMHRw
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [denzil][PATCH 1/9] bitbake/fetch: Spell out which fetcher backends support and recommend checksums
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
X-List-Received-Date: Tue, 31 Jul 2012 22:03:41 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 07/31/2012 02:43 PM, McClintock Matthew-B29882 wrote:
> On Tue, Jul 31, 2012 at 4:39 PM, Scott Garman <scott.a.garman@intel.com> wrote:
>> On 07/30/2012 03:52 PM, McClintock Matthew-B29882 wrote:
>>>
>>> On Tue, Jul 3, 2012 at 5:32 PM, Khem Raj <raj.khem@gmail.com> wrote:
>>>>
>>>> From: Richard Purdie <richard.purdie@linuxfoundation.org>
>>>>
>>>> There were some hardcoded behaviours in the system for which backends
>>>> support checksums verses which backends recommend them verses which
>>>> don't recommend them.
>>>>
>>>> This moves the functionality into specific fetchers and then makes the
>>>> general code generic. This cleans up the codebase and fixes some corner
>>>> cases such as trying to checksum directories returned by the git fetcher.
>>>>
>>>> (Bitbake rev: ef6d268f7b8527541a7fb044cf95a973be4097f4)
>>>>
>>>> Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
>>>
>>>
>>> This patch is causing the following issue in the denzil branch of poky:
>>>
>>> NOTE: package libpam-1.1.5-r3: task do_fetch: Started
>>> ERROR: Error executing a python function in
>>>
>>> /local/home/mattsm/git/poky-upstream/meta/recipes-extended/pam/libpam_1.1.5.bb:
>>> IOError: [Errno 2] No such file or directory:
>>>
>>> '/local/home/mattsm/git/poky-upstream/meta/recipes-extended/pam/libpam/./pam.d/*'
>>
>>
>> Thanks for testing and reporting this, Matthew. I have rebased my
>> sgarman/denzil-1.2.2 branch to remove this commit.
>>
>> I'm going through my denzil queue of patches right now and hope to be on top
>> of everything by EOD - I will send out an overall status email then in which
>> I will also announce renaming my branch to simply sgarman/denzil-next.
>
> Scott,
>
> I have a few more patches on my tree as well:
>
> http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=mattsm/denzil
>
> I will rebase once you are done.

I'm about to merge most of these, but the two recent ones with 
"NEEDSTOUPSTREAM" git subjects are not in proper format and will need to 
be redone.

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

