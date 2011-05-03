Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0CC264C80A46
	for <poky@yoctoproject.org>; Tue,  3 May 2011 18:36:39 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p43Nadod013983
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Tue, 3 May 2011 16:36:39 -0700 (PDT)
Received: from Macintosh-5.local (172.25.36.228) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Tue, 3 May 2011 16:36:39 -0700
Message-ID: <4DC09186.8010905@windriver.com>
Date: Tue, 3 May 2011 18:36:38 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.17) Gecko/20110414 Thunderbird/3.1.10
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <4DC08B17.2070907@mlbassoc.com>
In-Reply-To: <4DC08B17.2070907@mlbassoc.com>
Subject: Re: Zypper question
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
X-List-Received-Date: Tue, 03 May 2011 23:36:40 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

On 5/3/11 6:09 PM, Gary Thomas wrote:
> I'm trying to set up zypper on a qemu based system.  I've built
> the image & additional packages in 192.168.1.125:/local/qemu_test/tmp/deploy/rpm/
> This system is running lighttpd and has the path http://192.168.1.125/qemu-repo
> set to that path.  I verified it by fetching http://192.168.1.125/qemu-repo/solvedb.conf
> which shows up as
>    /local/qemu_test/tmp/deploy/rpm/qemux86/solvedb
>    /local/qemu_test/tmp/deploy/rpm/i586/solvedb
>    /local/qemu_test/tmp/deploy/rpm/all/solvedb
> 
> On the QEMU system, I ran
>    # zypper addrepo http://192.168.1.125/qemu-repo yocto
>    # zypper refresh
> No errors were reported
> 
> When I tried to install a package, I got this:
>    # zypper install gst-plugins-base
>    Error building the cache.
>    [1] Repository type can't be determined.
>    warning: Disabling repository 'yocto' because of the above error.
> 
> What am I doing wrong?
> 
> Note: I tried to follow https://wiki.pokylinux.org/wiki/Zypper_Repository_Setup
> Can I help with this (edit the page, etc)?  If so, how do I get a login?
> 

This is odd.  I didn't experience these issues when I was doing the development
/ testing.

From the above there is an "Error building the cache."  the only caching steps
that occur during an install is a sync of the system's RPM cache.  If something
is wrong there you can get a similar error.

Try simply running "rpm -qa" and make sure you get reasonable output.  If not,
then RPM isn't installed properly.  (By default on a minimal system, the RPM
database is removed after the rootfs is populated.)

--Mark

