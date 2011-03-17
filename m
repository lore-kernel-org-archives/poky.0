Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 794A44C805A8
	for <poky@yoctoproject.org>; Thu, 17 Mar 2011 10:24:42 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 17 Mar 2011 08:24:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,199,1299484800"; d="scan'208";a="614206552"
Received: from doubt.jf.intel.com (HELO [10.7.199.54]) ([10.7.199.54])
	by orsmga002.jf.intel.com with ESMTP; 17 Mar 2011 08:24:41 -0700
Message-ID: <4D8227B9.4040401@linux.intel.com>
Date: Thu, 17 Mar 2011 08:24:41 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: scott.m.rifenbark@intel.com
References: <cover.1300293938.git.scott.m.rifenbark@intel.com>
	<af05c78410f16632fd9c4f36bf5b9ba469df07fd.1300293938.git.scott.m.rifenbark@intel.com>
In-Reply-To: <af05c78410f16632fd9c4f36bf5b9ba469df07fd.1300293938.git.scott.m.rifenbark@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/2] documentation/adt-manual/adt-eclipse.xml: Re-inserted Autotools plug-in requirement.
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
X-List-Received-Date: Thu, 17 Mar 2011 15:24:42 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit



On 03/16/2011 09:48 AM, scott.m.rifenbark@intel.com wrote:
> From: Scott Rifenbark<scott.m.rifenbark@intel.com>
>
> Jessica flip-flopped on the need for the Autotools plug-in that was
> removed from the manual.  I have re-inserted the instructions for adding
> this plug-in in as part of the Eclipse set up.
> ---
>   documentation/adt-manual/adt-eclipse.xml |    9 +++++++--
>   1 files changed, 7 insertions(+), 2 deletions(-)
>
> diff --git a/documentation/adt-manual/adt-eclipse.xml b/documentation/adt-manual/adt-eclipse.xml
> index d41f496..7c0ee06 100644
> --- a/documentation/adt-manual/adt-eclipse.xml
> +++ b/documentation/adt-manual/adt-eclipse.xml
> @@ -78,8 +78,9 @@
>       <title>Installing Required Plug-ins and the Eclipse Yocto Plug-in</title>
>           <para>
>               Before installing the Yocto Plug-in you need to be sure that the
> -            CDT 7.0 and RSE 3.2 plug-ins are all installed.
> -            After installing these two plug-ins, you can install the
> +            CDT 7.0, RSE 3.2, and Autotools plug-ins are all installed in the
> +            following order.
> +            After installing these three plug-ins, you can install the
>               Eclipse Yocto Plug-in.
>               Use the following URLs for the plug-ins:
>               <orderedlist>
> @@ -97,6 +98,10 @@
>                   select the following:  “Remote System Explorer End-User Runtime”,
>                   “Remote System Explorer Extended SDK”, “Remote System Explorer User Actions”,


What are all these characters?

--
Darren

>                   “RSE Core”, “RSE Terminals UI”, and “Target Management Terminal”.</para></listitem>
> +<listitem><para><emphasis>Autotools</emphasis>  –
> +<ulink url='http://www.download.eclipse.org/technology/linuxtools/update/'></ulink>:
> +                Expand the items under “Linux Tools” and select “Autotools support for
> +                CDT (Incubation)”.</para></listitem>
>                   <listitem><para><emphasis>Yocto Plug-in</emphasis>  –
>                   <ulink url='http://www.yoctoproject.org/downloads/eclipse-plugin/'></ulink>:
>                   Check the box next to “Development tools&amp; SDKs for Yocto Linux”
>
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

