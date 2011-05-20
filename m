Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7235A4C8026D
	for <poky@yoctoproject.org>; Fri, 20 May 2011 15:49:55 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4KKnscT005151
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 20 May 2011 13:49:54 -0700 (PDT)
Received: from Macintosh-5.local (172.25.36.228) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 20 May 2011 13:49:54 -0700
Message-ID: <4DD6D3F1.5010607@windriver.com>
Date: Fri, 20 May 2011 15:49:53 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.17) Gecko/20110414 Thunderbird/3.1.10
MIME-Version: 1.0
To: Saul Wold <sgw@linux.intel.com>
References: <cover.1305894267.git.xiaofeng.yan@windriver.com>	<8aae00c1c51aface54052fbcf71ececd2c47c63a.1305894267.git.xiaofeng.yan@windriver.com>
	<4DD65FF6.6020101@windriver.com> <4DD6C42F.8090300@linux.intel.com>
In-Reply-To: <4DD6C42F.8090300@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: OpenGL Machine config -- was Re: [PATCH 1/1] task-core-lsb: Add library libQtOpenGL* to n450, sugarbay and jasperforest
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
X-List-Received-Date: Fri, 20 May 2011 20:49:55 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

On 5/20/11 2:42 PM, Saul Wold wrote:
> On 05/20/2011 05:35 AM, Mark Hatle wrote:
>> Looking at this, it seems unreasonable, overtime, to specify every machine that
>> has OpenGL support.  Would it make sense to look at making some type of machine
>> or distro flag that indicates we have OpenGL support.. Then QT [and presumably
>> others] can use that flag to determine the proper value?
>>
> For both this patch and the previous RDEPENDS fix, can we not use 
> TARGET_ARCH value for the flag.
> 
> So QT_GLFLAGS_powerpc = "-opengl", or is that going to be too general?
> 
> Or QT_GLFLAGS_i586 = "-opengl"?  I notice crownbay is missing below also 
> is that because it won't support opengl?
> 

I have a feeling the ARCH value is too generic, but I don't know that for sure.

If I understand what this is for, it really depends on the machine configuration
and if it has hardware opengl acceleration or not.  So some SOCs will have it
and some won't.

--Mark

> 
>> --Mark
>>
>> On 5/20/11 7:27 AM, Xiaofeng Yan wrote:
>>> From: Xiaofeng Yan<xiaofeng.yan@windriver.com>
>>>
>>> For passing hardware test for LSB, I add libQtOpenGL* to three platforms above.
>>>
>>> Signed-off-by: Xiaofeng Yan<xiaofeng.yan@windriver.com>
>>> ---
>>>   .../recipes-qt/qt4/qt4-x11-free_4.7.3.bbappend     |    3 +++
>>>   meta/recipes-extended/tasks/task-core-lsb.bb       |   10 ++++++++++
>>>   2 files changed, 13 insertions(+), 0 deletions(-)
>>>
>>> diff --git a/meta-yocto/recipes-qt/qt4/qt4-x11-free_4.7.3.bbappend b/meta-yocto/recipes-qt/qt4/qt4-x11-free_4.7.3.bbappend
>>> index e5911e3..172f090 100644
>>> --- a/meta-yocto/recipes-qt/qt4/qt4-x11-free_4.7.3.bbappend
>>> +++ b/meta-yocto/recipes-qt/qt4/qt4-x11-free_4.7.3.bbappend
>>> @@ -1,3 +1,6 @@
>>>   QT_GLFLAGS_atom-pc = "-opengl"
>>>   QT_GLFLAGS_mpc8315e-rdb = "-opengl"
>>>   QT_GLFLAGS_emenlow = "-opengl"
>>> +QT_GLFLAGS_jasperforest = "-opengl"
>>> +QT_GLFLAGS_n450 = "-opengl"
>>> +QT_GLFLAGS_sugarbay  = "-opengl"
>>> diff --git a/meta/recipes-extended/tasks/task-core-lsb.bb b/meta/recipes-extended/tasks/task-core-lsb.bb
>>> index b6c5ae5..63ea7dd 100644
>>> --- a/meta/recipes-extended/tasks/task-core-lsb.bb
>>> +++ b/meta/recipes-extended/tasks/task-core-lsb.bb
>>> @@ -187,6 +187,16 @@ RDEPENDS_task-core-lsb-graphic-add_mpc8315e-rdb = "\
>>>       libqtopengl4 \
>>>   "
>>>
>>> +RDEPENDS_task-core-lsb-graphic-add_append_n450 = "\
>>> +    libqtopengl4 \
>>> +"
>>> +RDEPENDS_task-core-lsb-graphic-add_append_sugarbay = "\
>>> +    libqtopengl4 \
>>> +"
>>> +RDEPENDS_task-core-lsb-graphic-add_append_jasperforest = "\
>>> +    libqtopengl4 \
>>> +"
>>> +
>>>   #    mesa-dri
>>>
>>>   RDEPENDS_task-core-lsb-runtime-add = "\
>>
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>>
> 


