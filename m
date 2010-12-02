Return-Path: <saul.wold@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 87ACF4C80052
	for <poky@yoctoproject.org>; Thu,  2 Dec 2010 12:53:23 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 02 Dec 2010 10:53:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,289,1288594800"; d="scan'208";a="579966757"
Received: from unknown (HELO [10.255.12.252]) ([10.255.12.252])
	by orsmga002.jf.intel.com with ESMTP; 02 Dec 2010 10:53:13 -0800
Message-ID: <4CF7EB18.1000303@intel.com>
Date: Thu, 02 Dec 2010 10:53:12 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
References: <20101119044025.GB31096@qhe2-db> <4CE6FC4B.7050400@intel.com>
	<DE8BA75F34A0404282AC5E15F691BC76910E@orsmsx504.amr.corp.intel.com>
In-Reply-To: <DE8BA75F34A0404282AC5E15F691BC76910E@orsmsx504.amr.corp.intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH] fix a typo in usermanual on lazy default
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
X-List-Received-Date: Thu, 02 Dec 2010 18:53:23 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/22/2010 07:22 AM, Rifenbark, Scott M wrote:
> Where is this documentation?  (/Bitbake/doc/manual/usermanual.xml)
>
Scott, Qing

This would be a change that needs to be made to the upstream bitbake manual.

You could resend this patch to the  bitbake-dev@lists.berlios.de

Sau!



> -----Original Message-----
> From: Wold, Saul
> Sent: Friday, November 19, 2010 2:38 PM
> To: poky@yoctoproject.org; Rifenbark, Scott M
> Subject: Re: [poky] [PATCH] fix a typo in usermanual on lazy default
>
> On 11/18/2010 08:40 PM, Qing He wrote:
>> "??= ... is a lazy version of ??=", the second should be ?=
>>
>> Signed-off-by: Qing He<qing.he@intel.com>
>>
>
> Should all doc changes go through Scott R, and then into master that way?
>
> Just checking on process.
>
> Scott R: If you need help pulling changes let me know.
>
> Sau!
>
>> ---
>> diff --git a/bitbake/doc/manual/usermanual.xml b/bitbake/doc/manual/usermanual.xml
>> index 748ac31..2b7a0b5 100644
>> --- a/bitbake/doc/manual/usermanual.xml
>> +++ b/bitbake/doc/manual/usermanual.xml
>> @@ -97,7 +97,7 @@ share common metadata between many packages.</para></listitem>
>>                    <title>Setting a default value (??=)</title>
>>                    <para><screen><varname>A</varname>   ??= "somevalue"</screen></para>
>>                    <para><screen><varname>A</varname>   ??= "someothervalue"</screen></para>
>> -<para>If<varname>A</varname>   is set before the above, it will retain that value.  If<varname>A</varname>   is unset prior to the above,<varname>A</varname>   will be set to<literal>someothervalue</literal>.  This is a lazy version of ??=, in that the assignment does not occur until the end of the parsing process, so that the last, rather than the first, ??= assignment to a given variable will be used.</para>
>> +<para>If<varname>A</varname>   is set before the above, it will retain that value.  If<varname>A</varname>   is unset prior to the above,<varname>A</varname>   will be set to<literal>someothervalue</literal>.  This is a lazy version of ?=, in that the assignment does not occur until the end of the parsing process, so that the last, rather than the first, ??= assignment to a given variable will be used.</para>
>>                </section>
>>                <section>
>>                    <title>Immediate variable expansion (:=)</title>
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>>
>
>


