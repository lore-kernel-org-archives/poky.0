Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 033AB4C800B0
	for <poky@yoctoproject.org>; Fri,  6 May 2011 13:02:37 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p46I2blu010975
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Fri, 6 May 2011 11:02:37 -0700 (PDT)
Received: from Macintosh-5.local (172.25.36.228) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 6 May 2011 11:02:36 -0700
Message-ID: <4DC437BC.4070500@windriver.com>
Date: Fri, 6 May 2011 13:02:36 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.17) Gecko/20110414 Thunderbird/3.1.10
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <cover.1304621382.git.aalonso@secretlab.ca>	<7577bb0da8badabce577bf8ebd453e6fa7f3bd50.1304621382.git.aalonso@secretlab.ca>
	<4DC42DAF.3080605@linux.intel.com>
In-Reply-To: <4DC42DAF.3080605@linux.intel.com>
Subject: Re: [PATCH 6/7] package_rpm: use target vendor information
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
X-List-Received-Date: Fri, 06 May 2011 18:02:38 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

On 5/6/11 12:19 PM, Darren Hart wrote:
> Hi Adrian,

With the issue fixed below, this looks like a good change to me.

--Mark

> One issue below:
> 
> On 05/05/2011 12:11 PM, Adrian Alonso wrote:
>> * Instead of hardcoding target vendor string "-poky"
>>   use TARGET_VENDOR information in case of using external
>>   toolchains
>>
>> Signed-off-by: Adrian Alonso <aalonso@secretlab.ca>
>> ---
>>  meta/classes/package_rpm.bbclass |    3 ++-
>>  1 files changed, 2 insertions(+), 1 deletions(-)
>>
>> diff --git a/meta/classes/package_rpm.bbclass b/meta/classes/package_rpm.bbclass
>> index 70170d1..1cf9f79 100644
>> --- a/meta/classes/package_rpm.bbclass
>> +++ b/meta/classes/package_rpm.bbclass
>> @@ -761,13 +761,14 @@ python do_package_rpm () {
>>  	# Setup the rpmbuild arguments...
>>  	rpmbuild = bb.data.getVar('RPMBUILD', d, True)
>>  	targetsys = bb.data.getVar('TARGET_SYS', d, True)
>> +	targetvendor = bb.data.getVar('TARGET_VENDOR', d, True)
>>  	pkgwritedir = bb.data.expand('${PKGWRITEDIRRPM}/${PACKAGE_ARCH}', d)
>>  	pkgarch = bb.data.expand('${PACKAGE_ARCH}', d)
>>  	bb.mkdirhier(pkgwritedir)
>>  	os.chmod(pkgwritedir, 0755)
>>  
>>  	cmd = rpmbuild
>> -	cmd = cmd + " --nodeps --short-circuit --target " + pkgarch + "-poky-linux-gnu --buildroot " + pkgd
>> +	cmd = cmd + " --nodeps --short-circuit --target " + pkgarch + targetvendor + "-linux-gnu --buildroot " + pkgd
> 
> You need:
>  + "-" + targetvendor
> 
> otherwise you'll merge pkgarch and targetvendor together without a delimiter.
> Better yet, just format the string in one go and reduce the potential for error:
> 
> cmd = "%s --nodeps --short-circuit --target %s-%s-linux-gnu --buildroot %s" % \
>       (rpmbuild, pkgarch, targetvendor, pkgd)
> 


