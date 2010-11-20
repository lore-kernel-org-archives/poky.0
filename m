Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 73B8B4C80A74
	for <poky@yoctoproject.org>; Fri, 19 Nov 2010 19:23:51 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oAK1NphK016316
	for <poky@yoctoproject.org>; Fri, 19 Nov 2010 17:23:51 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 19 Nov 2010 17:23:50 -0800
Received: from Macintosh-5.local ([172.25.36.227]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 19 Nov 2010 17:23:50 -0800
Message-ID: <4CE72325.1050806@windriver.com>
Date: Fri, 19 Nov 2010 19:23:49 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.12) Gecko/20101027 Thunderbird/3.1.6
MIME-Version: 1.0
To: poky@yoctoproject.org
X-OriginalArrivalTime: 20 Nov 2010 01:23:51.0068 (UTC)
	FILETIME=[969B4DC0:01CB8851]
Subject: Sourcing of poky-init-build-env from a non-bash shell...
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
X-List-Received-Date: Sat, 20 Nov 2010 01:23:51 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

In recent days I've had a few people complain to me that the only way they can
use Poky is to switch from their preferred shell to bash.  So I took it upon
myself to attempt to address this issue.

In poky-contrib, commit 479e626839e3c9beb789ec2919d5438930eb04cf, head of
mhatle/initenv branch, is a patch that will allow the script to be sourced in
any reasonable shell.

I've attempted to test this with:
  * bash
  * dash
  * ksh (ksh-93)
  * zsh
  * tcsh

It should also work with csh and pdksh, but I don't have a local version to try it.

If anyone using Poky regularly uses a non-bash shell, could you please try this
and verify that things are working for you?

For those of you who use the bash shell regularly, if you wouldn't mind trying
it in your configurations I'd appreciate it.

(I'm always looking for code reviews as well....)

--Mark

(Commit message follows)

commit 479e626839e3c9beb789ec2919d5438930eb04cf
Author: Mark Hatle <mark.hatle@windriver.com>
Date:   Fri Nov 19 18:10:31 2010 -0600

    poky-init-build-env: Update the build env to work in all POSIX and CSH shells

    The poky-init-build-env was updated to determine the shell type and work in
    all POSIX and CSH shells (within reason).  Some tricky magic was involved in
    determining the type of shell in use (csh or posix), and then configuring
    the directories.

    If the script was sourced with bash, then it works as it did before.  If it
    was sourced with any other shell, it requires the user's pwd to be the same
    as the OEROOT.

    In the scripts directory, poky-init-build-env used to further source the
    poky-env-internal script.  This script was broken up into two primary pieces:
      1) The chunk that sets up the environment
      2) The chunk that verifies and sets up the BUILDDIR

    The first component was further seperated into two items, an sh and a csh
    version.  While it's possible to combine them, it's much easier this way.

    The second component runs as a stand-a-lone sh script, so it is written for
    use in /bin/sh

    Signed-off-by: Mark Hatle <mark.hatle@windriver.com>


