Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 683004C80479
	for <poky@yoctoproject.org>; Mon,  2 May 2011 22:11:37 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p433BaUv015857
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 2 May 2011 20:11:36 -0700 (PDT)
Received: from [128.224.163.157] (128.224.163.157) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Mon, 2 May 2011 20:11:35 -0700
Message-ID: <4DBF72EB.5030708@windriver.com>
Date: Tue, 3 May 2011 11:13:47 +0800
From: Kang Kai <Kai.Kang@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Thunderbird/3.1.7
MIME-Version: 1.0
To: Joshua Lock <josh@linux.intel.com>
References: <4DBA5E83.4050704@windriver.com> <1304087099.2023.1.camel@scimitar>
In-Reply-To: <1304087099.2023.1.camel@scimitar>
X-Originating-IP: [128.224.163.157]
Cc: poky@yoctoproject.org
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
X-List-Received-Date: Tue, 03 May 2011 03:11:37 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

> On Fri, 2011-04-29 at 14:45 +0800, Kang Kai wrote:
>> Hi Saul,
>>
>> When I import gs (ghostscript) from oe, I copy the whole directory of gs
>> from oe and put it at meta/recipes-extend/gs.  When run 'bitbake gs',
>> the bitbake comlains:
>>
>> ERROR: Nothing PROVIDES 'gs'
>> ERROR: Command execution failed: Traceback (most recent call last):
>>     File "/mnt/sda8/poky-neil/bitbake/lib/bb/command.py", line 102, in
>> runAsyncCommand
>>       commandmethod(self.cmds_async, self, options)
>>     File "/mnt/sda8/poky-neil/bitbake/lib/bb/command.py", line 200, in
>> buildTargets
>>       command.cooker.buildTargets(pkgs_to_build, task)
>>     File "/mnt/sda8/poky-neil/bitbake/lib/bb/cooker.py", line 827, in
>> buildTargets
>>       taskdata.add_provider(localdata, self.status, k)
>>     File "/mnt/sda8/poky-neil/bitbake/lib/bb/taskdata.py", line 353, in
>> add_provider
>>       self.add_provider_internal(cfgData, dataCache, item)
>>     File "/mnt/sda8/poky-neil/bitbake/lib/bb/taskdata.py", line 373, in
>> add_provider_internal
>>       raise bb.providers.NoProvider(item)
>> NoProvider: gs
>>
>> The bb file is in attachment.
>> Would you like to help me to check it?
>> Thank you!
>> Kai
> This means the dependency chain for gs is broken, when pulling a recipe
> from somewhere else you need to ensure all of its dependencies are
> present too:
>
> DEPENDS = "jpeg zlib fontconfig cups gs-tools-native"
>
> I don't think we have cups or gs-tools-native in oe-core?
cups has been added in yocto, and another file in the same directory is 
named gs-tools-native_8.64.bb

After I remove the DEPENDS and RDEPNDS lines, run "bitbake gs", it still 
failed with:

ERROR: Nothing PROVIDES 'gs'


Then I renamed the gs_8.64.bb to gs2_8.64.bb and run "bitbake gs2", 
bitbake will find gs2 this time. Would you give some advices?

> Regards,
> Joshua
Regards,
Kai

