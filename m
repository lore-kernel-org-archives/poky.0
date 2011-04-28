Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0E20C4C80578
	for <poky@yoctoproject.org>; Thu, 28 Apr 2011 10:19:59 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p3SFJwOi023144
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Thu, 28 Apr 2011 08:19:58 -0700 (PDT)
Received: from Macintosh-5.local (172.25.36.228) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Thu, 28 Apr 2011 08:19:57 -0700
Message-ID: <4DB9859D.7070609@windriver.com>
Date: Thu, 28 Apr 2011 10:19:57 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.15) Gecko/20110303 Thunderbird/3.1.9
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <C10D3FB0CD45994C8A51FEC1227CE22F2311C1C837@shsmsx502.ccr.corp.intel.com>
	<20110428092232.GA3259@jama.jama.net>
In-Reply-To: <20110428092232.GA3259@jama.jama.net>
Subject: Re: RFC: design of network based PR service
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
X-List-Received-Date: Thu, 28 Apr 2011 15:19:59 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

On 4/28/11 4:22 AM, Martin Jansa wrote:
> On Thu, Apr 28, 2011 at 03:08:03PM +0800, Lu, Lianhao wrote:
>> Hi Guys,
>>
>> Here is the design of network based PR service, please help to review and 
>> give you comment. Thanks a lot!
> 
> Hi,
> 
> looks good, just wondering if we can use the same mechanism for
> LOCALCOUNT numbers in SRCPV, we can even use same table if we prefix
> first column ie LOCALCOUNT_${PN} and CheckSum in 2nd column would be
> actuall git hash (from SRCREV or HEAD for AUTOREV) or 2nd table with
> similar structure.
> 
> But it wont work very well if one builder is using AUTOREV and another
> one isn't, but that can be resolved by allowing only trusted builders
> with same configuration (wrt AUTOREV) to send such tuples.
> 
> Do we have at least 2 groups of "users".
> 1) trusted which increments PR when hash is not found
> 2) public which can query PR for given hash (not sure what they should
>    do if hash is not found)

I think this points our something necessary.  There are manual indications of a
change.  I.e. the current "PR" usage.  If I change the recipe, patches, etc I
should expect to update the 'PR' to the next value.  However, if something ELSE
changes (affecting the checksum), or an end user forgets to change the PR, the
auto increment should be used.

The issue is how do you avoid manual conflicts with the automatic increments.
One way this is being done for other systems is using the "." syntax.  User
recipe revisions are captured as such:

PR="r1"

While automatic revisions using a ".N", so the first would be ".0", ".1", ".2", etc.

This way the Version, and PR are still being used.  The checksum is also being
used by the increment server, and the returned value is a global counter based
on the checksum simply changing with the assumption that "newer" is "better".
(A reasonable policy decision!)

I would suggest that the value of the automatically generated PR be constructed
in some way that can be overridden by project (if necessary).  So if someone
wants user the revision format of "PR.CUSTOM.AUTOMATIC" it would be easy to
retrofit into the environment.  (I've seen this format before in distros of
different versions that want to tag the package/recipe with a revision, add in
[custom] distribution version, and then have the build incrementing...)

So the suggestion above of using a new variable to handle the incrementing, a
separate "format" value that the packaging backends would use instead of simply
PR... and I think we have a good extensible solution to the problem.

--Mark

> Regards,
> 
>> By changing the BB_SIGNATURE_HANDLER from "basic" to "basichash", the 
>> task checksum will be in the stamp file, so this implies the end of PR bumps 
>> since whenever a recipe change happens, the checksum of the appropriate 
>> tasks will change so everything depends on that tasks will automatically got 
>> rebuilt. (The checksum mechanism was introduced here at https://lists.yoctoproject.org/pipermail/yocto/2011-March/001157.html).
>>
>> But there is one piece of building block missing there. Because the package 
>> feeds needs the PR bumps because some relevant fields in the package file(i.e. 
>> Version field in .ipk and .deb file, Release field in .rpm file) need it so the 
>> generated package feeds can be used to upgrade/install new packages in the 
>> user's linux distribution. So RP proposed this network based PR service at 
>> https://lists.yoctoproject.org/pipermail/poky/2011-January/002123.html. 
>>
>> Each embedded linux distribution entity using Yocto to build their distributions 
>> should have a single network based PR service. Multiple build sources could send 
>> the tuple (PN, task checksum) to this network based PR service. If the PR service 
>> finds the corresponding (PN, task checksum) in its database, it will return the PR 
>> values to the client. If not, it will bump the PR for that PN and return the new value 
>> to the client. The returned value will only goes into the generated package files.
>>
>> The PR network service will be a separate process other than bitbake, using the 
>> XMLPRC to communicate with the client(i.e. bitbake process) and sqlite3 as the 
>> backend database. The table definition would be something like
>> (
>>   PN TEXT,
>>   CheckSum TEXT PRIMARY KEY,
>>   PR INT
>> )
>>
>> Because different type of package files are generated in different tasks, (e.g.
>> do_package_write_ipk, do_package_write_rpm), we will use the task checksum 
>> of do_package to ask for PR value, so all the package files will have the same PR value.
>>
>> To be backward compatible, if the PR value is already set in the recipe, the final PR value 
>> that goes into the package files will be "PR in recipe.PR returned by the service".
>>
>> ========================
>> Lianhao Lu
>> OTC SSG, Intel APAC R&D Ltd.
>> 86-21-61167139
>>
>>
>>
>>
>>
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
> 
> 
> 
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


