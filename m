Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id A04EF4C800B6
	for <poky@yoctoproject.org>; Fri, 29 Apr 2011 09:57:43 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p3TEvgB6014598
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Fri, 29 Apr 2011 07:57:42 -0700 (PDT)
Received: from Macintosh-5.local (172.25.36.228) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 29 Apr 2011 07:57:41 -0700
Message-ID: <4DBAD1E5.7050001@windriver.com>
Date: Fri, 29 Apr 2011 09:57:41 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.15) Gecko/20110303 Thunderbird/3.1.9
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <4DBA5E83.4050704@windriver.com> <1304087099.2023.1.camel@scimitar>
In-Reply-To: <1304087099.2023.1.camel@scimitar>
Subject: Re: bitbake gs failed
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
X-List-Received-Date: Fri, 29 Apr 2011 14:57:43 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

On 4/29/11 9:24 AM, Joshua Lock wrote:
> On Fri, 2011-04-29 at 14:45 +0800, Kang Kai wrote:
>> Hi Saul,
>>
>> When I import gs (ghostscript) from oe, I copy the whole directory of gs 
>> from oe and put it at meta/recipes-extend/gs.  When run 'bitbake gs', 
>> the bitbake comlains:

This is an example of an error condition that needs to be improved.  The error
nothing provides 'gs' is misleading.  We have something that provides "gs", what
we don't have are the dependencies of gs.  It would be really nice to correct
the error message to indicate that, and then skip the traceback.

--Mark

>> ERROR: Nothing PROVIDES 'gs'
>> ERROR: Command execution failed: Traceback (most recent call last):
>>    File "/mnt/sda8/poky-neil/bitbake/lib/bb/command.py", line 102, in 
>> runAsyncCommand
>>      commandmethod(self.cmds_async, self, options)
>>    File "/mnt/sda8/poky-neil/bitbake/lib/bb/command.py", line 200, in 
>> buildTargets
>>      command.cooker.buildTargets(pkgs_to_build, task)
>>    File "/mnt/sda8/poky-neil/bitbake/lib/bb/cooker.py", line 827, in 
>> buildTargets
>>      taskdata.add_provider(localdata, self.status, k)
>>    File "/mnt/sda8/poky-neil/bitbake/lib/bb/taskdata.py", line 353, in 
>> add_provider
>>      self.add_provider_internal(cfgData, dataCache, item)
>>    File "/mnt/sda8/poky-neil/bitbake/lib/bb/taskdata.py", line 373, in 
>> add_provider_internal
>>      raise bb.providers.NoProvider(item)
>> NoProvider: gs
>>
>> The bb file is in attachment.
>> Would you like to help me to check it?
>> Thank you!
>> Kai
> 
> This means the dependency chain for gs is broken, when pulling a recipe
> from somewhere else you need to ensure all of its dependencies are
> present too:
> 
> DEPENDS = "jpeg zlib fontconfig cups gs-tools-native"
> 
> I don't think we have cups or gs-tools-native in oe-core?
> 
> Regards,
> Joshua


