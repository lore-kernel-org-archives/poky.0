Return-Path: <championoaks@gmail.com>
Received: from mail-vb0-f42.google.com (mail-vb0-f42.google.com
	[209.85.212.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA804E0087A
	for <poky@yoctoproject.org>; Tue, 21 Jan 2014 00:47:22 -0800 (PST)
Received: by mail-vb0-f42.google.com with SMTP id i3so2956061vbh.15
	for <poky@yoctoproject.org>; Tue, 21 Jan 2014 00:47:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=HmgK56XHPuWo7V18+4ZF1ZLVgW/h/KIHNBgiX6qNLsc=;
	b=t9dzvq5htfMai1X9r+WK0vB12wPyfI7CjCbxTS1uTpMXIwEqgrnC1OzK+7/J4cMx1Q
	a01hfLKJzFva/7RfFkF1ZF99wcSIDWpUgkvYBkAOfa9ZCiH6msZkjXiWVAg7o6lXWR6Y
	MR99jHL7byodp1wL3aHufRDpW1s2wAzKm9NxlGI8UDz0kcmtJIaByNCflaTDycoo4wl9
	BNJ2aMkGj4kI0eetyutBq0b+/xg9J7daFr5mAicwgby0LiFE6ZWccP3eHuVEnbUVKZVK
	XPtzWGJKhcGEBL2L9mBB2gW3qQbPS474J1JK+J/2a8+odQ67NRm8nBCsShrf48coDA8M
	39Uw==
MIME-Version: 1.0
X-Received: by 10.58.66.137 with SMTP id f9mr8081445vet.11.1390294041275; Tue,
	21 Jan 2014 00:47:21 -0800 (PST)
Received: by 10.220.74.5 with HTTP; Tue, 21 Jan 2014 00:47:21 -0800 (PST)
In-Reply-To: <CAOqG5myC7zb_Bo1SrcDwULKkMOHYGJTX-tcXN-8bcczVbuQyYA@mail.gmail.com>
References: <CAOqG5mwi7Rcpe+Le5btBg8SKMf1WF4uLVzo3tmYc3C3UGhoMbA@mail.gmail.com>
	<20140121081128.GE7512@lpalcu-linux>
	<CAOqG5myC7zb_Bo1SrcDwULKkMOHYGJTX-tcXN-8bcczVbuQyYA@mail.gmail.com>
Date: Tue, 21 Jan 2014 00:47:21 -0800
Message-ID: <CAOqG5mw2znFmrSW72P7Dt+twjmTcfwh8h6hrV9x1-OqAMWO0_A@mail.gmail.com>
From: Roseville House <championoaks@gmail.com>
To: poky@yoctoproject.org
Subject: Re: build issues when behind a proxy
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
X-List-Received-Date: Tue, 21 Jan 2014 08:47:23 -0000
Content-Type: text/plain; charset=ISO-8859-1

When I commented out socat in git-proxy I made some progress but still
failed on following  URLs


ERROR: Function failed: Fetcher failure for URL:
'git://git.yoctoproject.org/opkg-utils'. Unable to fetch URL from any
source.
ERROR: Function failed: Fetcher failure for URL:
'git://git.yoctoproject.org/matchbox-keyboard;branch=matchbox-keyboard-0-1'.
Unable to fetch URL from any source.
ERROR: Function failed: Fetcher failure for URL:
'git://git.yoctoproject.org/yocto-kernel-tools.git'. Unable to fetch
URL from any source.
ERROR: Function failed: Fetcher failure for URL:
'git://git.kernel.org/pub/scm/utils/kernel/kmod/kmod.git'. Unable to
fetch URL from any source.
WARNING: Failed to fetch URL
git://git.yoctoproject.org/linux-yocto-3.10.git;bareclone=1;branch=standard/common-pc/base,meta;name=machine,meta,
attempting MIRRORS if available

On Tue, Jan 21, 2014 at 12:34 AM, Roseville House
<championoaks@gmail.com> wrote:
> Thanks a lot for your reply :)
> I followed the instructions but still stuck
>
> user@user:~/yocto/poky/build$ echo $GIT_PROXY_COMMAND
> /usr/local/bin/git-proxy
> user@user:~/yocto/poky/build$ cat /usr/local/bin/git-proxy
> #!/bin/bash
> PROXY=proxy.company.com
> PORT=901
> exec socat STDIO SOCKS4:$proxy:$1:$2
> case $1 in
> # list git servers here that you do not want to use
> # the proxy with, separated by a pipe character '|' as below:
>
> review.tizen.org)
>    METHOD="-X connect"
>          ;;
> *)
>  METHOD="-X 5 -x ${PROXY}:${PORT}"
>  #The line above is applicable to Ubuntu and openSUSE.
>  #For Fedora, use the variation below since it only supports socks v4.
>  #METHOD="-X 4 -x ${PROXY}:${PORT}"
>          ;;
>  esac
>
>  nc $METHOD $*
> user@user:~/yocto/poky/build$ cat ~/.gitconfig
> [http]
> proxy = http://proxy.company.com:901
> [core]
> gitProxy = git-proxy
>
> On Tue, Jan 21, 2014 at 12:11 AM, Laurentiu Palcu
> <laurentiu.palcu@intel.com> wrote:
>> You're probably missing the GIT_PROXY_COMMAND environment variable.
>>
>> Here's how to set the environment up:
>> https://wiki.yoctoproject.org/wiki/Working_Behind_a_Network_Proxy
>>
>> Laurentiu
>>
>> On Tue, Jan 21, 2014 at 12:02:32AM -0800, Roseville House wrote:
>>> I followed the steps listed here
>>> https://wiki.yoctoproject.org/wiki/Working_Behind_a_Network_Proxy
>>>   still seeing bunch of errors while fetching bitbake -c fetchall
>>> core-image-sato
>>>
>>> ERROR: Fetcher failure: Fetch command failed with exit code 128, output:
>>>
>>> 2014/01/20 23:45:37 socat[30877] E getaddrinfo("", "(null)",
>>> {1,0,1,6}, {}): Name or service not known
>>>
>>> fatal: Could not read from remote repository.
>>>
>>>
>>>
>>> Please make sure you have the correct access rights
>>>
>>> and the repository exists.
>>>
>>>
>>>
>>> ERROR: Function failed: Fetcher failure for URL:
>>> 'git://git.yoctoproject.org/matchbox-keyboard;branch=matchbox-keyboard-0-1'.
>>> Unable to fetch URL from any source.
>>>
>>> ERROR: Logfile of failure stored in:
>>> /home/username/yocto/poky/build/tmp/work/i586-poky-linux/matchbox-keyboard/0.0+gitAUTOINC+217f1bfe14-r4/temp/log.do_fetch.30839
>>>
>>> ERROR: Task 230
>>> (/home/username/yocto/poky/meta/recipes-sato/matchbox-keyboard/matchbox-keyboard_git.bb,
>>> do_fetch) failed with exit code '1'
>>>
>>> ERROR: Fetcher failure: Fetch command failed with exit code 128, output:
>>>
>>> 2014/01/20 23:45:37 socat[30887] E getaddrinfo("", "(null)",
>>> {1,0,1,6}, {}): Name or service not known
>>>
>>> fatal: Could not read from remote repository.
>>>
>>>
>>>
>>> Please make sure you have the correct access rights
>>>
>>> and the repository exists.
>>>
>>>
>>>
>>> ERROR: Function failed: Fetcher failure for URL:
>>> 'git://git.yoctoproject.org/opkg-utils'. Unable to fetch URL from any
>>> source.
>>>
>>> ERROR: Logfile of failure stored in:
>>> /home/username/yocto/poky/build/tmp/work/i586-poky-linux/opkg-utils/0.1.8+gitAUTOINC+fd4a3a4c20-r0/temp/log.do_fetch.30843
>>>
>>> ERROR: Task 111
>>> (/home/username/yocto/poky/meta/recipes-devtools/opkg-utils/opkg-utils_git.bb,
>>> do_fetch) failed with exit code '1'
>>>
>>> WARNING: Failed to fetch URL git://git.yoctoproject.org/opkg-utils,
>>> attempting MIRRORS if available
>>>
>>> ERROR: Fetcher failure: Fetch command failed with exit code 128, output:
>>>
>>> 2014/01/20 23:45:37 socat[30890] E getaddrinfo("", "(null)",
>>> {1,0,1,6}, {}): Name or service not known
>>>
>>> fatal: Could not read from remote repository.
>>>
>>>
>>>
>>> Please make sure you have the correct access rights
>>>
>>> and the repository exists.
>>>
>>>
>>>
>>> ERROR: Function failed: Fetcher failure for URL:
>>> 'git://git.yoctoproject.org/yocto-kernel-tools.git'. Unable to fetch
>>> URL from any source.
>>>
>>> ERROR: Logfile of failure stored in:
>>> /home/username/yocto/poky/build/tmp/work/x86_64-linux/kern-tools-native/0.2+gitAUTOINC+a42509b01c-r12/temp/log.do_fetch.30842
>>>
>>> ERROR: Task 119
>>> (/home/username/yocto/poky/meta/recipes-kernel/kern-tools/kern-tools-native_git.bb,
>>> do_fetch) failed with exit code '1'
>>>
>>> ERROR: Fetcher failure: Fetch command failed with exit code 128, output:
>>>
>>> 2014/01/20 23:45:37 socat[31033] E getaddrinfo("", "(null)",
>>> {1,0,1,6}, {}): Name or service not known
>>>
>>> fatal: Could not read from remote repository.
>>>
>>>
>>>
>>> Please make sure you have the correct access rights
>>>
>>> and the repository exists.
>>>
>>>
>>>
>>> ERROR: Function failed: Fetcher failure for URL:
>>> 'git://git.yoctoproject.org/opkg-utils'. Unable to fetch URL from any
>>> source.
>>>
>>> ERROR: Logfile of failure stored in:
>>> /home/username/yocto/poky/build/tmp/work/x86_64-linux/opkg-utils-native/0.1.8+gitAUTOINC+fd4a3a4c20-r0/temp/log.do_fetch.30844
>>>
>>> ERROR: Task 31 (virtual:native:/home/username/yocto/poky/meta/recipes-devtools/opkg-utils/opkg-utils_git.bb,
>>> do_fetch) failed with exit code '1'
>>>
>>> ERROR: Fetcher failure: Fetch command failed with exit code 128, output:
>>>
>>> 2014/01/20 23:45:37 socat[30888] E getaddrinfo("", "(null)",
>>> {1,0,1,6}, {}): Name or service not known
>>>
>>> fatal: Could not read from remote repository.
>>>
>>>
>>>
>>> Please make sure you have the correct access rights
>>>
>>> and the repository exists.
>>>
>>>
>>>
>>> ERROR: Function failed: Fetcher failure for URL:
>>> 'git://git.kernel.org/pub/scm/utils/kernel/kmod/kmod.git'. Unable to
>>> fetch URL from any source.
>>>
>>> ERROR: Logfile of failure stored in:
>>> /home/username/yocto/poky/build/tmp/work/x86_64-linux/kmod-native/16+gitAUTOINC+36c4bb928a-r0/temp/log.do_fetch.30841
>>>
>>> ERROR: Task 129
>>> (/home/username/yocto/poky/meta/recipes-kernel/kmod/kmod-native_git.bb,
>>> do_fetch) failed with exit code '1'
>>>
>>> WARNING: Failed to fetch URL
>>> git://git.kernel.org/pub/scm/utils/kernel/kmod/kmod.git, attempting
>>> MIRRORS if available
>>>
>>> ERROR: Fetcher failure: Fetch command failed with exit code 128, output:
>>>
>>> 2014/01/20 23:45:38 socat[31226] E getaddrinfo("", "(null)",
>>> {1,0,1,6}, {}): Name or service not known
>>>
>>> fatal: Could not read from remote repository.
>>>
>>>
>>>
>>> Please make sure you have the correct access rights
>>>
>>> and the repository exists.
>>>
>>>
>>>
>>> ERROR: Function failed: Fetcher failure for URL:
>>> 'git://git.kernel.org/pub/scm/utils/kernel/kmod/kmod.git'. Unable to
>>> fetch URL from any source.
>>>
>>> ERROR: Logfile of failure stored in:
>>> /home/username/yocto/poky/build/tmp/work/i586-poky-linux/kmod/16+gitAUTOINC+36c4bb928a-r0/temp/log.do_fetch.30840
>>>
>>> ERROR: Task 218
>>> (/home/username/yocto/poky/meta/recipes-kernel/kmod/kmod_git.bb,
>>> do_fetch) failed with exit code '1'
>>>
>>> Waiting for 1 running tasks to finish:
>>>
>>> 0: linux-yocto-3.10.25+gitAUTOINC+4d658aa580_79af968f2f-r0 do_fetch (pid 30845)
>>> _______________________________________________
>>> poky mailing list
>>> poky@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/poky

