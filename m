Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 490554C80B6B
	for <poky@pokylinux.org>; Wed, 10 Nov 2010 08:03:12 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id B1DE116609B3; Wed, 10 Nov 2010 07:03:11 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 19B0D16609B1;
	Wed, 10 Nov 2010 07:03:11 -0700 (MST)
Message-ID: <4CDAA61F.30008@mlbassoc.com>
Date: Wed, 10 Nov 2010 07:03:11 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.9) Gecko/20100430 Fedora/3.0.4-2.fc11 Thunderbird/3.0.4
MIME-Version: 1.0
To: Richard Purdie <rpurdie@linux.intel.com>
References: <4CD3EF04.8030208@mlbassoc.com> <1289396521.1272.294.camel@rex>
In-Reply-To: <1289396521.1272.294.camel@rex>
Cc: Poky <poky@pokylinux.org>
Subject: Re: A question about overrides
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
X-List-Received-Date: Wed, 10 Nov 2010 14:03:13 -0000
X-Groupsio-MsgNum: 129
Content-Type: multipart/mixed; boundary="------------040008010008030308050900"

--------------040008010008030308050900
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/10/2010 06:42 AM, Richard Purdie wrote:
> On Fri, 2010-11-05 at 05:48 -0600, Gary Thomas wrote:
>> I have my own distribution layer, built on the poky distribution.
>> In other words, my layer defines a few basic setups, then inherits
>> poky to do the rest.
>>
>> For the most part, I've been successful with this.  The problem at
>> hand is that for my distribution, I need to support a couple of
>> different architectures and at the moment, one of them needs to
>> stay in the stone age tools-wise.  In my distro.conf, I have
>> lines like these to select those tools for just that architecture:
>>     GCCVERSION_armv7a ?= "4.3.3"
>> This works for everything (I've tried), except this:
>>     POKYLIBC_armv7a ?= "glibc"
>>
>> * Is there some magic I'm missing with regard to the 'POKYLIBC' symbol?
>> * Perhaps there's some other way?
>>
>> For now, I'm overriding this in local.conf, but that requires
>> hand tuning that I'd like to avoid.
>
> Can you be more specific about what your distro.conf file says? I'm
> guessing you're requiring poky.conf in there? Are you setting the value
> after the require and does it work if you do it beforehand?
>
> I ask as that variable is used in a require in poky.conf, effectively
> causing an immediate expansion of the variable so it needs to be set
> before poky.conf, not afterwards.

Yes, I do have a require poky.conf and I'm setting these variables
before that statement.

I've attached the files I use (slightly sanitized).  Note that the only
way I could work this out was to define POKYLIBC in local.conf

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

--------------040008010008030308050900
Content-Type: text/plain;
 name="mydistro.conf"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="mydistro.conf"

IyBNeSBsb2NhbGl6ZWQsIGxheWVyZWQgZGlzdHJpYnV0aW9uCgpyZXF1aXJlIGNvbmYvZGlzdHJv
L2luY2x1ZGUvbXlkaXN0cm8tZml4ZWQtcmV2aXNpb25zLmluYwpyZXF1aXJlIGNvbmYvZGlzdHJv
L3Bva3kuY29uZgoKRElTVFJPID0gIm15ZGlzdHJvIgpESVNUUk9fTkFNRSA9ICJNeSBMb2NhbCBF
bWJlZGRlZCAoUG9reSBQb3dlcmVkKSIKRElTVFJPX1ZFUlNJT04gPSAiMC45OStzbmFwc2hvdC0k
e0RBVEV9IgoKIyBBbGxvdyBoYXJkd2FyZSBvdmVycmlkZXMsIGUuZy4gYXJtdjdhCk9WRVJSSURF
UyAuPSAiOiR7RkVFRF9BUkNIfToke1NPQ19GQU1JTFl9IgoKIyBVc2UgQSZNIGtlcm5lbHMKUFJF
RkVSUkVEX1BST1ZJREVSX3ZpcnR1YWwva2VybmVsID0gImxpbnV4LW15ZGlzdHJvIgoKIyBVc2Ug
QSZNIG9wa2cgc2V0dXAKRVhUUkFPUEtHQ09ORklHID0gIm15ZGlzdHJvLWZlZWQtY29uZmlnLW9w
a2ciCg==

--------------040008010008030308050900
Content-Type: text/plain;
 name="mydistro-fixed-revisions.inc"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="mydistro-fixed-revisions.inc"

IwojIE92ZXJyaWRlIHBpbm5lZCB2ZXJzaW9ucyAodGhlc2UgdmFyaWFibGVzIGFyZSB1c2VkIGJ5
IFBva3kpCiMKCiMKIyBOb3RlOiBvbmx5IEFSTSB1c2VzIG9sZCwgZml4ZWQgdG9vbHMgKGJlY2F1
c2Ugb2YgVEkgcGFja2FnZXMpCiMKR0NDVkVSU0lPTl9hcm12N2EgPz0gIjQuMy4zIgpTREtHQ0NW
RVJTSU9OX2FybXY3YSA/PSAiNC4zLjMiCiNCSU5VVkVSU0lPTiA/PSAiMi4yMC4xIgpCSU5VVkVS
U0lPTl9hcm12N2EgPSAiMi4xOC41MC4wLjciCkdMSUJDVkVSU0lPTl9hcm12N2EgPz0gIjIuMTAu
MSIKTElOVVhMSUJDVkVSU0lPTl9hcm12N2EgPz0gIjIuNi4zNCIKCiMgRklYTUU/IE92ZXJyaWRl
IHRoaXMgaW4gbG9jYWwuY29uZgpQT0tZTElCQyA/PSAiZWdsaWJjIgoKU1JDUkVWX3BuLWZmbXBl
ZyA9ICIyNDU5NiIKCg==

--------------040008010008030308050900--
