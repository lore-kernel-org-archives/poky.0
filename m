Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9974C4C805A8
	for <poky@yoctoproject.org>; Tue, 26 Apr 2011 11:31:01 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p3QGV0QI020893
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Tue, 26 Apr 2011 09:31:00 -0700 (PDT)
Received: from Macintosh-5.local (172.25.36.228) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Tue, 26 Apr 2011 09:31:00 -0700
Message-ID: <4DB6F344.2010804@windriver.com>
Date: Tue, 26 Apr 2011 11:31:00 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.15) Gecko/20110303 Thunderbird/3.1.9
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <BANLkTinq5uWMF2pPC4-udTVAYCxXqwNDJg@mail.gmail.com>
	<4DB6EC35.4030806@mlbassoc.com>
In-Reply-To: <4DB6EC35.4030806@mlbassoc.com>
Subject: Re: Error while pulling in "nss" package
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
X-List-Received-Date: Tue, 26 Apr 2011 16:31:01 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

On 4/26/11 11:00 AM, Gary Thomas wrote:
> On 04/25/2011 11:03 PM, v sailaja wrote:
>>
>>
>> Hi,
>>
>>
>> I get an error while pulling nss package into poky.
>>
>> *ERROR: ld.so: object 'libpseudo.so' from LD_PRELOAD cannot be preloaded: ignored.*

This is a message from your host system.  The error indicated is that for some
reason, libpseudo.so could not be preloaded.  The place where I normally see
this is when you have a 64-bit host system that also contains some 32-bit
applications as well.

In this case you need to construct both the 32-bit and 64-bit pseudo.  There is
a NO32LIBS value.

If this is the case, open up you conf/local.conf and find the following:

# This value is currently used by PSEUDO to determine if the recipe should
# build both the 32-bit and 64-bit wrapper libraries on a 64-bit build system.
#
# PSEUDO will attempt to determine if a 32-bit wrapper is necessary, but
# it doesn't always guess properly.  If you have 32-bit executables on
# your 64-bit build system, you likely want to set this to "0",
# otherwise you could end up with incorrect file attributes on the
# target filesystem.
#
# Default to not build 32 bit libs on 64 bit systems, comment this
# out if that is desired
NO32LIBS = "1"

As indicated in the comment block, change the value to '0'.

>> I found some solution in poky list and I modified according to the following steps. Still I am facing the same error.
>> I am sending error log file. Please find the attachment.
>> Please Can anyone tell me how to track this error.
> 
> Is this really an error?  I've seen it before and the build carries on.
> 
> What version of Poky are you using (git branch & rev)?  The pseudo stuff
> has had quite a lot of change in recent weeks/months, so if you're not
> using a recent tree perhaps you should try to upgrade.
> 
> Note: I've built nss_3.12.6 from OE in Poky with only cosmetic changes.
> 


