Return-Path: <Randy.MacLeod@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F0D39E00D5F; Fri,  5 Jan 2018 14:09:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 134C1E008FB;
	Fri,  5 Jan 2018 14:09:46 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w05M9jpk000066
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 5 Jan 2018 14:09:45 -0800 (PST)
Received: from [172.25.44.3] (172.25.44.3) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.361.1;
	Fri, 5 Jan 2018 14:09:44 -0800
To: Raj srinivas <rajraja123447@gmail.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
References: <CAJsjG0R1XU3=P3wxukaCNU5t-5qDtTWvrY75DAdp7PDtaFsoQA@mail.gmail.com>
From: Randy MacLeod <randy.macleod@windriver.com>
Message-ID: <9c103554-1d4c-d331-abae-42f764998df2@windriver.com>
Date: Fri, 5 Jan 2018 17:09:43 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <CAJsjG0R1XU3=P3wxukaCNU5t-5qDtTWvrY75DAdp7PDtaFsoQA@mail.gmail.com>
X-Originating-IP: [172.25.44.3]
Cc: "meta-intel@yoctoproject.org" <meta-intel@yoctoproject.org>
Subject: Re: [meta-intel] Retaining of rpm database issue
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
X-List-Received-Date: Fri, 05 Jan 2018 22:09:48 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit

On 2018-01-04 08:30 AM, Raj srinivas wrote:
> Hi all,
> 
> I am using yocto 1.7.3 ,


That version was released in 2014 and is only supported by people in the
community who have time to help:
    https://wiki.yoctoproject.org/wiki/Releases

Can you simplify your workflow and try it on a supported release?

If not, some companies:
    https://www.yoctoproject.org/ecosystem/showcase
including Wind River, do provide Yocto support and services so
you might want to investigate that option.


> I want to get the rpm database in sdk, for that 
> i have added package-management in IMAGE FEATURES, after extracting the 
> sdk, I am not able to rebuild the database , I have tried deleting the db 
> files, still I'm facing below issue, any body can please help on below 
> error,
> 
> bash-3.2# rpm --rebuilddb
> rpmdb: BDB1538 Program version 5.3 doesn't match environment version 6.0
> rpmdb: BDB2531 Unacceptable log file /var/lib/rpm/./log/log.0000000007: 
> unsupported log version 21
> rpmdb: BDB2527 Invalid log file: log.0000000007: Invalid argument
> rpmdb: BDB0061 PANIC: Invalid argument
> ==> rpmdbe_event_notify(0x2d618, PANIC(0), 0xf6ffd2bc) app_private (nil)
> rpmdb: BDB1546 unable to join the environment
> 
> error: cannot open Packages(0) index: (-30973)
>          DB: Berkeley DB 5.3.28: (September  9, 2013)
> error: cannot open Packages database in /var/lib/rpm
> 
> 
> bash-3.2# rpm -qa
> rpmdb: BDB2531 Unacceptable log file /var/lib/rpm/./log/log.0000000007: 
> unsupported log version 21
> rpmdb: BDB2527 Invalid log file: log.0000000007: Invalid argument
> rpmdb: BDB0061 PANIC: Invalid argument
> ==> rpmdbe_event_notify(0x2d780, PANIC(0), 0xf6ffe184) app_private (nil)
> rpmdb: BDB1546 unable to join the environment
> 

I don't use the SDK or eSDK much so I could be wrong
but I'm not sure that rebuilding the rpm db in that environment
was supported then or even now in 2.4/master.
I always expect that people will use the SDK to develop their app
then add it back to the build system for production image builds
and deployment. Can you do that?

Anyway, I've found a commit below with a similar signature
that indicates that rpm is trying to access the wrong version of
Berkeley DB so it seems likely that running rpm in the SDK either
has a bug or isn't supported as explained above.

../Randy

> 
> Regards,
> raj
> 
> 

commit e5a40391dfa12c44f31bdb7550df1275edda3864
Author: Hongxu Jia <hongxu.jia@windriver.com>
Date:   Mon Oct 20 19:36:28 2014 +0800

     default-versions.inc: match version of db and db-native while 
"AGPL-3.0" in ${INCOMPATIBLE_LICENSE}

     The db 6.0.30's LICENSE is 'AGPL-3.0', and db 5.3.28 LICENSE is
     'Sleepycat'

     While building rpm image with "AGPL-3.0" in ${INCOMPATIBLE_LICENSE},
     db 6.0.30 and db-native 5.3.28 were built, the different versions
     caused the rpm doesn't work on target.

     ...
     root@qemux86-64:~# rpm -qa
     |rpmdb: BDB2531 Unacceptable log file 
/var/lib/rpm/./log/log.0000000001:
     unsupported log version 21
     |rpmdb: BDB2527 Invalid log file: log.0000000001: Invalid argument
     |rpmdb: BDB0061 PANIC: Invalid argument

$ git branch --contains e5a40391dfa12c44f31bdb7550df1275edda3864
   fido
   jethro
   krogoth
   krogoth-next
   master
* master-next
   morty
   pyro
   rocko


-- 
# Randy MacLeod.  WR Linux
# Wind River an Intel Company

