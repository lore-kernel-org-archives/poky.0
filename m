Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id A29144C80A73
	for <poky@yoctoproject.org>; Tue,  3 May 2011 20:45:49 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 5672A166026E; Tue,  3 May 2011 19:45:49 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00,
	NORMAL_HTTP_TO_IP autolearn=unavailable version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 57FC4166023D;
	Tue,  3 May 2011 19:45:48 -0600 (MDT)
Message-ID: <4DC0AFCC.9080201@mlbassoc.com>
Date: Tue, 03 May 2011 19:45:48 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Mark Hatle <mark.hatle@windriver.com>
References: <4DC08B17.2070907@mlbassoc.com> <4DC09186.8010905@windriver.com>
In-Reply-To: <4DC09186.8010905@windriver.com>
Cc: poky@yoctoproject.org
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
X-List-Received-Date: Wed, 04 May 2011 01:45:51 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/03/2011 05:36 PM, Mark Hatle wrote:
> On 5/3/11 6:09 PM, Gary Thomas wrote:
>> I'm trying to set up zypper on a qemu based system.  I've built
>> the image&  additional packages in 192.168.1.125:/local/qemu_test/tmp/deploy/rpm/
>> This system is running lighttpd and has the path http://192.168.1.125/qemu-repo
>> set to that path.  I verified it by fetching http://192.168.1.125/qemu-repo/solvedb.conf
>> which shows up as
>>     /local/qemu_test/tmp/deploy/rpm/qemux86/solvedb
>>     /local/qemu_test/tmp/deploy/rpm/i586/solvedb
>>     /local/qemu_test/tmp/deploy/rpm/all/solvedb
>>
>> On the QEMU system, I ran
>>     # zypper addrepo http://192.168.1.125/qemu-repo yocto
>>     # zypper refresh
>> No errors were reported
>>
>> When I tried to install a package, I got this:
>>     # zypper install gst-plugins-base
>>     Error building the cache.
>>     [1] Repository type can't be determined.
>>     warning: Disabling repository 'yocto' because of the above error.
>>
>> What am I doing wrong?
>>
>> Note: I tried to follow https://wiki.pokylinux.org/wiki/Zypper_Repository_Setup
>> Can I help with this (edit the page, etc)?  If so, how do I get a login?
>>
>
> This is odd.  I didn't experience these issues when I was doing the development
> / testing.
>
>> From the above there is an "Error building the cache."  the only caching steps
> that occur during an install is a sync of the system's RPM cache.  If something
> is wrong there you can get a similar error.
>
> Try simply running "rpm -qa" and make sure you get reasonable output.  If not,
> then RPM isn't installed properly.  (By default on a minimal system, the RPM
> database is removed after the rootfs is populated.)

'rpm -qa ' worked just fine.

I started with core-image-sato, so it's a pretty complete system to start.

Do I have the repo stuff set up correctly?  I can see from the lighttpd logs
that it seems to be looking for files I don't have:
   192.168.7.2 192.168.1.125 - [03/May/2011:16:57:38 -0600] "HEAD /qemu-repo/repodata/repomd.xml HTTP/1.1" 404 0 "-" "ZYpp 8.11.0 (curl 7.21.2)"
   192.168.7.2 192.168.1.125 - [03/May/2011:16:57:38 -0600] "HEAD /qemu-repo/content HTTP/1.1" 404 0 "-" "ZYpp 8.11.0 (curl 7.21.2)"
Neither of these files seems to be in tmp/deploy/rpm

Did I miss a step?  I ran 'bitbake package-index' just in case.


-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

