Return-Path: <championoaks@gmail.com>
Received: from mail-vb0-f50.google.com (mail-vb0-f50.google.com
	[209.85.212.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4CC32E0087A
	for <poky@yoctoproject.org>; Tue, 21 Jan 2014 00:02:33 -0800 (PST)
Received: by mail-vb0-f50.google.com with SMTP id w8so3430971vbj.9
	for <poky@yoctoproject.org>; Tue, 21 Jan 2014 00:02:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=asi7n1HcwqUjHYYKjKqFXBm9BtdgiqbYGPi91N/Zu2g=;
	b=rJOdmaf5P+q4vjIc//oZ+c90i/M/CUodqFG1nbTRMXGq/s/QC5kdeHbJocp/skwjVn
	EGC7eJp0UOo5KWfP2lYK9KVlwH4Ms6MSQR5W5re9Zj04xp57hEOzdiciYlhx+VfHM9yD
	PgZmCMixqwEdqDo2tEMBdBL9+Y0mEQ1QLqy+v1/t+n5odZKtWMRWiUlwvrZW3TuQZhEH
	kxO0AEwPDwJsDBNDwVXbZKkflBRdYLWksD5wkPBT4tHgFKsD8hlKEFwPsC+ERzG48xLG
	+PaQy2aOIi7dpZZr8Qjuhgvj2DVbxF86g9skIQ0gCM5mkSbAYOUSEAZozb0jTR+77+y/
	4BnA==
MIME-Version: 1.0
X-Received: by 10.58.235.129 with SMTP id um1mr13753163vec.17.1390291352566;
	Tue, 21 Jan 2014 00:02:32 -0800 (PST)
Received: by 10.220.74.5 with HTTP; Tue, 21 Jan 2014 00:02:32 -0800 (PST)
Date: Tue, 21 Jan 2014 00:02:32 -0800
Message-ID: <CAOqG5mwi7Rcpe+Le5btBg8SKMf1WF4uLVzo3tmYc3C3UGhoMbA@mail.gmail.com>
From: Roseville House <championoaks@gmail.com>
To: poky@yoctoproject.org
Subject: build issues when behind a proxy
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
X-List-Received-Date: Tue, 21 Jan 2014 08:02:38 -0000
Content-Type: text/plain; charset=ISO-8859-1

I followed the steps listed here
https://wiki.yoctoproject.org/wiki/Working_Behind_a_Network_Proxy
  still seeing bunch of errors while fetching bitbake -c fetchall
core-image-sato

ERROR: Fetcher failure: Fetch command failed with exit code 128, output:

2014/01/20 23:45:37 socat[30877] E getaddrinfo("", "(null)",
{1,0,1,6}, {}): Name or service not known

fatal: Could not read from remote repository.



Please make sure you have the correct access rights

and the repository exists.



ERROR: Function failed: Fetcher failure for URL:
'git://git.yoctoproject.org/matchbox-keyboard;branch=matchbox-keyboard-0-1'.
Unable to fetch URL from any source.

ERROR: Logfile of failure stored in:
/home/username/yocto/poky/build/tmp/work/i586-poky-linux/matchbox-keyboard/0.0+gitAUTOINC+217f1bfe14-r4/temp/log.do_fetch.30839

ERROR: Task 230
(/home/username/yocto/poky/meta/recipes-sato/matchbox-keyboard/matchbox-keyboard_git.bb,
do_fetch) failed with exit code '1'

ERROR: Fetcher failure: Fetch command failed with exit code 128, output:

2014/01/20 23:45:37 socat[30887] E getaddrinfo("", "(null)",
{1,0,1,6}, {}): Name or service not known

fatal: Could not read from remote repository.



Please make sure you have the correct access rights

and the repository exists.



ERROR: Function failed: Fetcher failure for URL:
'git://git.yoctoproject.org/opkg-utils'. Unable to fetch URL from any
source.

ERROR: Logfile of failure stored in:
/home/username/yocto/poky/build/tmp/work/i586-poky-linux/opkg-utils/0.1.8+gitAUTOINC+fd4a3a4c20-r0/temp/log.do_fetch.30843

ERROR: Task 111
(/home/username/yocto/poky/meta/recipes-devtools/opkg-utils/opkg-utils_git.bb,
do_fetch) failed with exit code '1'

WARNING: Failed to fetch URL git://git.yoctoproject.org/opkg-utils,
attempting MIRRORS if available

ERROR: Fetcher failure: Fetch command failed with exit code 128, output:

2014/01/20 23:45:37 socat[30890] E getaddrinfo("", "(null)",
{1,0,1,6}, {}): Name or service not known

fatal: Could not read from remote repository.



Please make sure you have the correct access rights

and the repository exists.



ERROR: Function failed: Fetcher failure for URL:
'git://git.yoctoproject.org/yocto-kernel-tools.git'. Unable to fetch
URL from any source.

ERROR: Logfile of failure stored in:
/home/username/yocto/poky/build/tmp/work/x86_64-linux/kern-tools-native/0.2+gitAUTOINC+a42509b01c-r12/temp/log.do_fetch.30842

ERROR: Task 119
(/home/username/yocto/poky/meta/recipes-kernel/kern-tools/kern-tools-native_git.bb,
do_fetch) failed with exit code '1'

ERROR: Fetcher failure: Fetch command failed with exit code 128, output:

2014/01/20 23:45:37 socat[31033] E getaddrinfo("", "(null)",
{1,0,1,6}, {}): Name or service not known

fatal: Could not read from remote repository.



Please make sure you have the correct access rights

and the repository exists.



ERROR: Function failed: Fetcher failure for URL:
'git://git.yoctoproject.org/opkg-utils'. Unable to fetch URL from any
source.

ERROR: Logfile of failure stored in:
/home/username/yocto/poky/build/tmp/work/x86_64-linux/opkg-utils-native/0.1.8+gitAUTOINC+fd4a3a4c20-r0/temp/log.do_fetch.30844

ERROR: Task 31 (virtual:native:/home/username/yocto/poky/meta/recipes-devtools/opkg-utils/opkg-utils_git.bb,
do_fetch) failed with exit code '1'

ERROR: Fetcher failure: Fetch command failed with exit code 128, output:

2014/01/20 23:45:37 socat[30888] E getaddrinfo("", "(null)",
{1,0,1,6}, {}): Name or service not known

fatal: Could not read from remote repository.



Please make sure you have the correct access rights

and the repository exists.



ERROR: Function failed: Fetcher failure for URL:
'git://git.kernel.org/pub/scm/utils/kernel/kmod/kmod.git'. Unable to
fetch URL from any source.

ERROR: Logfile of failure stored in:
/home/username/yocto/poky/build/tmp/work/x86_64-linux/kmod-native/16+gitAUTOINC+36c4bb928a-r0/temp/log.do_fetch.30841

ERROR: Task 129
(/home/username/yocto/poky/meta/recipes-kernel/kmod/kmod-native_git.bb,
do_fetch) failed with exit code '1'

WARNING: Failed to fetch URL
git://git.kernel.org/pub/scm/utils/kernel/kmod/kmod.git, attempting
MIRRORS if available

ERROR: Fetcher failure: Fetch command failed with exit code 128, output:

2014/01/20 23:45:38 socat[31226] E getaddrinfo("", "(null)",
{1,0,1,6}, {}): Name or service not known

fatal: Could not read from remote repository.



Please make sure you have the correct access rights

and the repository exists.



ERROR: Function failed: Fetcher failure for URL:
'git://git.kernel.org/pub/scm/utils/kernel/kmod/kmod.git'. Unable to
fetch URL from any source.

ERROR: Logfile of failure stored in:
/home/username/yocto/poky/build/tmp/work/i586-poky-linux/kmod/16+gitAUTOINC+36c4bb928a-r0/temp/log.do_fetch.30840

ERROR: Task 218
(/home/username/yocto/poky/meta/recipes-kernel/kmod/kmod_git.bb,
do_fetch) failed with exit code '1'

Waiting for 1 running tasks to finish:

0: linux-yocto-3.10.25+gitAUTOINC+4d658aa580_79af968f2f-r0 do_fetch (pid 30845)

