Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36B6AE011D1
	for <poky@yoctoproject.org>; Mon, 12 Mar 2012 08:44:03 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 29593F81188; Mon, 12 Mar 2012 09:44:02 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id E54F3F8120A;
	Mon, 12 Mar 2012 09:43:37 -0600 (MDT)
Message-ID: <4F5E19A9.7070705@mlbassoc.com>
Date: Mon, 12 Mar 2012 09:43:37 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:10.0.1) Gecko/20120216 Thunderbird/10.0.1
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <9F69795E29C890408AC2DAF646C89BB379D1059697@MAILBOX.arc.local>,
	<4F5A288D.9010900@windriver.com>
	<9F69795E29C890408AC2DAF646C89BB379D106EC5B@MAILBOX.arc.local>
	<4F5E1594.4010702@windriver.com>
In-Reply-To: <4F5E1594.4010702@windriver.com>
Subject: Re: How to create a PREMIRROR
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
X-List-Received-Date: Mon, 12 Mar 2012 15:44:03 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 2012-03-12 09:26, Mark Hatle wrote:
> On 3/10/12 4:42 AM, Zoufal Andreas wrote:
>> Thx Mark, I will try it. One more question: which files are really required for the mirrors?
>> Only the archives or the "done" files, patch files, patch result files etc?
>
> I believe you don't need the done files. I'm not sure about the others. (I didn't remove them in my usage, as they're small enough and they allow me to use the DL_DOWNLOAD to keep
> the mirror up to date.)

All [true] files at the top level of 'downloads', except for the .done ones
This does include some patches (bash!) and mostly tarballs.

>> ________________________________________
>> From: poky-bounces@yoctoproject.org [poky-bounces@yoctoproject.org] On Behalf Of Mark Hatle [mark.hatle@windriver.com]
>> Sent: Friday, March 09, 2012 4:58 PM
>> To: poky@yoctoproject.org
>> Subject: Re: [poky] How to create a PREMIRROR
>>
>> On 3/9/12 9:40 AM, Zoufal Andreas wrote:
>>> Hello everybody,
>>>
>>> I am new here in this mailing list. We are starting to use Yocto/Poky for an
>>> embedded project, and we have the need to collect all source code in our SVN
>>> repository for the case internet is not available. I think using PREMIRRORS (and
>>> SSTATE_MIRRORS for speedup) is the right way?
>>>
>>> How to create and maintain a local PREMIRRROR? What is the best practice? I’m
>>> pretty sure this is not the first time for this question, so can you give me
>>> some hints for a good documentation, or advices?
>>
>> For the premirrors, what I've done is start a new build directory.. setup my
>> DL_DIR to some place "safe".. and then do a "bitbake -c fetchall world"
>>
>> I then export my DL_DIR for others via NFS, FTP, HTTPS, etc... whatever is
>> appropriate within your organization -- then everyone else uses PREMIRROR
>> settings to use that DL_DIR.
>>
>> For the SSTATE_MIRROR, you can do something similar... but sstate_mirroring is
>> really only useful if everyone is on a fast link. In my experience anything
>> slower then a gigabit link and it's usually (not always) faster to compile stuff
>> locally, then pull from an sstate_mirror.
>>
>> (Also if you have problems with an sstate_mirror, please let us know. Not a lot
>> of people are using them yet -- I had some issues w/ 1.1 and the sstate being
>> used by multiple userids, but I believe these are resolved in newer versions.)
>>
>> --Mark
>>
>>> Thanx, Andi
>>>
>>> *ANDREAS ZOUFAL
>>> *Engineer
>>> Safety& Security Department
>>> Video and Security Technology
>>>
>>> **
>>>
>>> *AIT Austrian Institute of Technology GmbH
>>> *Donau-City-Straße 1 | 1220 Vienna | Austria
>>> T +43(0) 50550-4266 | F +43(0) 50550-4150
>>> _andreas.zoufal@ait.ac.at<mailto:andreas.zoufal@ait.ac.at>_|
>>> _http://www.ait.ac.at__
>>> _
>>> FN: 115980 i HG Wien | UID: ATU14703506
>>> This email and any attachments thereto, is intended only for use by the
>>> addressee(s) named herein and may contain legally privileged and/or confidential
>>> information. If you are not the intended recipient, please notify the sender by
>>> return e-mail or by telephone and delete this message from your system and any
>>> printout thereof. Any unauthorized use, reproduction, or dissemination of this
>>> message is strictly prohibited. Please note that e-mails are susceptible to
>>> change. AIT Austrian Institute of Technology GmbH shall not be liable for the
>>> improper or incomplete transmission of the information contained in this
>>> communication, nor shall it be liable for any delay in its receipt.
>>>
>>>
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
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

