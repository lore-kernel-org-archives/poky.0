Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6DDAD4C80FD4
	for <poky@lists.pokylinux.org>; Fri, 12 Nov 2010 17:55:23 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 0E5091660783; Fri, 12 Nov 2010 16:55:22 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 82145166074E;
	Fri, 12 Nov 2010 16:55:19 -0700 (MST)
Message-ID: <4CDDD3E7.3000305@mlbassoc.com>
Date: Fri, 12 Nov 2010 16:55:19 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.9) Gecko/20100430 Fedora/3.0.4-2.fc11 Thunderbird/3.0.4
MIME-Version: 1.0
To: Richard Purdie <rpurdie@linux.intel.com>
References: <4CDB2A52.6060400@mlbassoc.com> <1289539963.1272.3055.camel@rex>	
	<4CDCF848.9020703@mlbassoc.com>
	<1289550656.1272.3179.camel@rex>	 <4CDCFC57.20909@mlbassoc.com>
	<1289604672.1272.4108.camel@rex>
In-Reply-To: <1289604672.1272.4108.camel@rex>
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: SSTATE builds more broken than I thought
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
X-List-Received-Date: Fri, 12 Nov 2010 23:55:23 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/12/2010 04:31 PM, Richard Purdie wrote:
> On Fri, 2010-11-12 at 01:35 -0700, Gary Thomas wrote:
>> On 11/12/2010 01:30 AM, Richard Purdie wrote:
>>> On Fri, 2010-11-12 at 01:18 -0700, Gary Thomas wrote:
>>>>> Are these all files or are they symlinks? Are they just present for
>>>>> deploy-ipk or are there others?
>>>>
>>>> They are files.
>>>>
>>>> Sorry, but I don't understand your other question.  These are the only
>>>> extra files polluting the tree, except for Python *.py? object files
>>>> which are also always created.
>>>
>>> Are there any files related to other sstate tasks such as
>>> populate-sysroot*.tgz or package*.tgz or is there just *deploy-ipk*.tgz?
>>>
>>> In other words I'm wondering if this is something specific to the
>>> deploy-ipk sstate task...
>>
>> The only extra files created are *deploy-ipk*.tgz
>> This most certainly is restricted to the deploy-ipk sstate task and only
>> happens if SSTATE_MIRRORS is defined.
>
> This should be fixed in ae98f7eacb9e61fe086d88dc694b4c651af9fee3, it
> turns out to be an issue with the local fetcher not searching DL_DIR.

Trying the same process as in bug #526, it failed with this error:

NOTE: package gcc-cross-initial-4.5.0-r10: task do_fetch: Started
ERROR: Error in executing python function in: /local/poky-amltd/meta/recipes-devtools/gcc/gcc-cross-initial_4.5.0.bb
ERROR: Exception:<type 'exceptions.AttributeError'> Message:'module' object has no attribute 'exists'
NOTE: Running task 330 of 3106 (ID: 1534, /local/poky-amltd/meta/recipes-kernel/linux-libc-headers/linux-libc-headers_2.6.34.bb, do_patch)
ERROR: Traceback:
ERROR:   File "base_do_fetch", line 64, in <module>
ERROR:
ERROR:   File "base_do_fetch", line 12, in base_do_fetch
ERROR:
ERROR:   File "/home/local/poky-amltd/scripts/..//bitbake/lib/bb/fetch/__init__.py", line 220, in init
ERROR:     urldata[url].setup_localpath(d)
ERROR:
ERROR:   File "/home/local/poky-amltd/scripts/..//bitbake/lib/bb/fetch/__init__.py", line 529, in setup_localpath
ERROR:     self.localpath = self.method.localpath(self.url, self, d)
ERROR:
ERROR:   File "/home/local/poky-amltd/scripts/..//bitbake/lib/bb/fetch/local.py", line 54, in localpath
ERROR:     if os.exists(dlpath):
ERROR:
ERROR: The lines leading to this error were:
ERROR:  0060:                                   bb.note("%s-%s: %s has no entry in conf/checksums.ini, not checking URI" % (pn,pv,uri))
ERROR:  0061:           except Exception:
ERROR:  0062:                   raise bb.build.FuncFailed("Checksum of '%s' failed" % uri)
ERROR:  0063:
ERROR: Task failed: ('Function base_do_fetch failed', '/home/local/poky-after-rp-fix/tmp/work/armv7a-poky-linux-gnueabi/gcc-cross-initial-4.5.0-r10/temp/log.do_fetch.2110')

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

