Return-Path: <saul.wold@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id D66154C80FA7
	for <poky@yoctoproject.org>; Fri, 19 Nov 2010 16:38:03 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 19 Nov 2010 14:38:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,226,1288594800"; d="scan'208";a="628552513"
Received: from unknown (HELO [10.255.13.99]) ([10.255.13.99])
	by fmsmga002.fm.intel.com with ESMTP; 19 Nov 2010 14:38:03 -0800
Message-ID: <4CE6FC4B.7050400@intel.com>
Date: Fri, 19 Nov 2010 14:38:03 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: poky@yoctoproject.org, "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
References: <20101119044025.GB31096@qhe2-db>
In-Reply-To: <20101119044025.GB31096@qhe2-db>
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
X-List-Received-Date: Fri, 19 Nov 2010 22:38:04 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/18/2010 08:40 PM, Qing He wrote:
> "??= ... is a lazy version of ??=", the second should be ?=
>
> Signed-off-by: Qing He<qing.he@intel.com>
>

Should all doc changes go through Scott R, and then into master that way?

Just checking on process.

Scott R: If you need help pulling changes let me know.

Sau!

> ---
> diff --git a/bitbake/doc/manual/usermanual.xml b/bitbake/doc/manual/usermanual.xml
> index 748ac31..2b7a0b5 100644
> --- a/bitbake/doc/manual/usermanual.xml
> +++ b/bitbake/doc/manual/usermanual.xml
> @@ -97,7 +97,7 @@ share common metadata between many packages.</para></listitem>
>                   <title>Setting a default value (??=)</title>
>                   <para><screen><varname>A</varname>  ??= "somevalue"</screen></para>
>                   <para><screen><varname>A</varname>  ??= "someothervalue"</screen></para>
> -<para>If<varname>A</varname>  is set before the above, it will retain that value.  If<varname>A</varname>  is unset prior to the above,<varname>A</varname>  will be set to<literal>someothervalue</literal>.  This is a lazy version of ??=, in that the assignment does not occur until the end of the parsing process, so that the last, rather than the first, ??= assignment to a given variable will be used.</para>
> +<para>If<varname>A</varname>  is set before the above, it will retain that value.  If<varname>A</varname>  is unset prior to the above,<varname>A</varname>  will be set to<literal>someothervalue</literal>.  This is a lazy version of ?=, in that the assignment does not occur until the end of the parsing process, so that the last, rather than the first, ??= assignment to a given variable will be used.</para>
>               </section>
>               <section>
>                   <title>Immediate variable expansion (:=)</title>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>


