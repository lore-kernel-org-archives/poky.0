Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 993434C800D7
	for <poky@yoctoproject.org>; Tue, 31 May 2011 14:09:52 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4VJ9qRV028607
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Tue, 31 May 2011 12:09:52 -0700 (PDT)
Received: from Macintosh-5.local (172.25.36.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Tue, 31 May 2011 12:09:51 -0700
Message-ID: <4DE53CFF.4080403@windriver.com>
Date: Tue, 31 May 2011 14:09:51 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.17) Gecko/20110414 Thunderbird/3.1.10
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <cover.1306865217.git.scott.a.garman@intel.com>	<79A1BC44-8268-4177-BBC5-4A5B08BDC8B7@dominion.thruhere.net>
	<4DE53C21.7020000@linux.intel.com>
In-Reply-To: <4DE53C21.7020000@linux.intel.com>
Subject: Re: [PATCH 0/7] User/group creation at preinstall
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
X-List-Received-Date: Tue, 31 May 2011 19:09:52 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

Other then the suggested changes to the example commit.  This looks good to me.

But I agree, it needs to go over oe-core for inclusion.

--Mark

On 5/31/11 2:06 PM, Saul Wold wrote:
> On 05/31/2011 11:45 AM, Koen Kooi wrote:
>> Shouldn't patches like this be sent to the oe-core list? It wouldn't have saved me from the selinux bug in shadow, though :)
>>
> Scott,
> 
> I would agree with Koen, this is a oe-core change, not a Poky only 
> change, please resend this request to the oe-core list.
> 
> Thanks
> 	Sau!
> 
> 
>> Op 31 mei 2011, om 20:13 heeft Scott Garman het volgende geschreven:
>>
>>> Hi Saul,
>>>
>>> This pull request includes everything needed to add the ability to
>>> create custom users and groups in our images/packages and the
>>> corresponding ability to set custom ownership permissions.
>>>
>>> There is a useradd-example.bb file in meta-skeleton which provides
>>> a heavily-commented example recipe to demonstrate how this feature
>>> can be used.
>>>
>>> I'd like to request that Mark Hatle and Richard do a code review of
>>> this and offer their Acked-by: support if they are happy with things.
>>>
>>> Once this gets into master, I'm happy to write up a short section for
>>> the Poky Reference Manual to document it in a more visible way.
>>>
>>> Scott
>>>
>>> The following changes since commit 1169f1b066d0028bd2ef7915440450bd42ef165e:
>>>
>>>   license.bbclass: Sane Parsing of licenses (2011-05-27 23:36:24 +0100)
>>>
>>> are available in the git repository at:
>>>   git://git.pokylinux.org/poky-contrib sgarman/user-group-creation
>>>   http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=sgarman/user-group-creation
>>>
>>> Scott Garman (7):
>>>   shadow: recipe and patch cleanup
>>>   shadow: add a -native recipe with customized utilities
>>>   base-passwd: add -cross recipe with default login.defs
>>>   useradd.bbclass: new class for managing user/group permissions
>>>   useradd-example: example recipe for using inherit useradd
>>>   bitbake.conf: set PSEUDO_PASSWD within FAKEROOTENV
>>>   package_rpm.bbclass: make RPM use on-disk permissions
>>>
>>> .../recipes-skeleton/useradd/useradd-example.bb    |   59 +
>>> meta/classes/package_rpm.bbclass                   |    2 +
>>> meta/classes/useradd.bbclass                       |  136 ++
>>> meta/conf/bitbake.conf                             |    2 +-
>>> .../base-passwd/base-passwd-3.5.22/login.defs      |  386 ++++++
>>> .../base-passwd/base-passwd-cross_3.5.22.bb        |   53 +
>>> .../shadow/files/add_root_cmd_options.patch        | 1293 ++++++++++++++++++++
>>> .../files/shadow-4.1.3-dots-in-usernames.patch     |    4 +
>>> .../shadow-4.1.4.2-env-reset-keep-locale.patch     |    4 +
>>> .../files/shadow-4.1.4.2-groupmod-pam-check.patch  |    4 +
>>> .../files/shadow-4.1.4.2-su_no_sanitize_env.patch  |    4 +
>>> .../shadow/files/shadow.automake-1.11.patch        |    4 +
>>> .../shadow/shadow-native_4.1.4.3.bb                |   66 +
>>> meta/recipes-extended/shadow/shadow.inc            |  121 --
>>> meta/recipes-extended/shadow/shadow_4.1.4.3.bb     |  141 ++-
>>> 15 files changed, 2148 insertions(+), 131 deletions(-)
>>> create mode 100644 meta-skeleton/recipes-skeleton/useradd/useradd-example.bb
>>> create mode 100644 meta-skeleton/recipes-skeleton/useradd/useradd-example/file1
>>> create mode 100644 meta-skeleton/recipes-skeleton/useradd/useradd-example/file2
>>> create mode 100644 meta-skeleton/recipes-skeleton/useradd/useradd-example/file3
>>> create mode 100644 meta-skeleton/recipes-skeleton/useradd/useradd-example/file4
>>> create mode 100644 meta/classes/useradd.bbclass
>>> create mode 100644 meta/recipes-core/base-passwd/base-passwd-3.5.22/login.defs
>>> create mode 100644 meta/recipes-core/base-passwd/base-passwd-cross_3.5.22.bb
>>> create mode 100644 meta/recipes-extended/shadow/files/add_root_cmd_options.patch
>>> create mode 100644 meta/recipes-extended/shadow/shadow-native_4.1.4.3.bb
>>> delete mode 100644 meta/recipes-extended/shadow/shadow.inc
>>>
>>> _______________________________________________
>>> poky mailing list
>>> poky@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/poky
>>
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


